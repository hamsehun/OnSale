package com.onsale.app.shopping;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.owner.vo.ShopItemVO;
import com.onsale.app.shopping.dao.ShoppingDAO;
import com.onsale.app.shopping.vo.CartVO;
import com.onsale.app.user.dao.UserDAO;
import com.onsale.app.user.vo.UserVO;

public class cartinputOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		CartVO vo = new CartVO();
		ShoppingDAO dao = new ShoppingDAO();
		List<ShopItemVO> items = new ArrayList<ShopItemVO>();
		List<Integer> stocks = new ArrayList<>();
		UserDAO u_dao = new UserDAO();
		UserVO u_vo = new UserVO();
		
		int user_num = dao.getUserNum((String)req.getSession().getAttribute("session_email"));
		int shopitem_num = Integer.parseInt(req.getParameter("shopitem_num"));
		int item_cnt = Integer.parseInt(req.getParameter("item_cnt"));
		u_vo=u_dao.getuserInfo((String)req.getSession().getAttribute("session_email"));
		
		vo.setShopitem_num(shopitem_num);
		vo.setUser_num(user_num);
		if(dao.searchCart(vo)){
			item_cnt += dao.getItemCnt(vo);
			vo.setItem_cnt(item_cnt);
			dao.addCartNum(vo);
		}else {
			vo.setItem_cnt(item_cnt);
			dao.cartInput(vo);
		}
		
		
	
		
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
		forward.setPath("/app/user/shoppingbasket.jsp");
		return forward;
	}

}
