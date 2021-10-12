package com.onsale.app.shopping;

import java.util.ArrayList;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.owner.vo.ShopItemVO;
import com.onsale.app.shopping.dao.ShoppingDAO;
import com.onsale.app.shopping.vo.CartVO;
import com.onsale.app.user.dao.UserDAO;
import com.onsale.app.user.vo.UserVO;

public class CartListOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionForward forward = new ActionForward();
		CartVO vo = new CartVO();
		ShoppingDAO dao = new ShoppingDAO();
		List<ShopItemVO> items = new ArrayList<ShopItemVO>();
		List<Integer> stocks = new ArrayList<>();
		UserDAO u_dao = new UserDAO();
		UserVO u_vo = new UserVO();
		String type =(String)req.getSession().getAttribute("type");
		int user_num = dao.getUserNum((String)req.getSession().getAttribute("session_email"));
		u_vo=u_dao.getuserInfo((String)req.getSession().getAttribute("session_email"));
		
		List<CartVO> carts = dao.cartList(user_num);
		for (int i = 0; i < carts.size(); i++) {
			ShopItemVO s_vo = new ShopItemVO();
			vo = carts.get(i);
			int item_num = vo.getShopitem_num();
			s_vo = dao.getDetail(item_num);
			items.add(s_vo);
		}
		for (int i = 0; i < carts.size(); i++) {
			int stock = 0;
			stock = items.get(i).getShopitem_stock();
			stocks.add(stock);
		}
		req.setAttribute("user_email", (String)req.getSession().getAttribute("session_email"));
		req.setAttribute("user", u_vo);
		req.setAttribute("stocks", stocks);
		req.setAttribute("items", items);
		req.setAttribute("carts", dao.cartList(user_num));  
		forward.setRedirect(false);
		forward.setPath("/app/user/shoppingbasket.jsp?type="+type);
		return forward;
	}

}
