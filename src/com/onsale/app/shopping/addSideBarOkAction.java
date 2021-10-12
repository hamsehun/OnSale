package com.onsale.app.shopping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;

public class addSideBarOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		int shopitem_num =Integer.parseInt(req.getParameter("shopitem_num"));
		int cost = Integer.parseInt(req.getParameter("cost"));
		int num = Integer.parseInt(req.getParameter("num"));
		return null;
	}

}
