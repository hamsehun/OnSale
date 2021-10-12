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

public class DeleteCartOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		ShoppingDAO dao = new ShoppingDAO();
		
		
		dao.deleteCart(Integer.parseInt(req.getParameter("cart_num")));
		return null;
	}

}
