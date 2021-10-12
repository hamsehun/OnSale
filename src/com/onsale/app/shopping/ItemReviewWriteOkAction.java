package com.onsale.app.shopping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.shopping.dao.ItemReviewDAO;
import com.onsale.app.shopping.vo.ItemReviewVO;

public class ItemReviewWriteOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		ItemReviewVO vo = new ItemReviewVO();
		int shopitem_num = Integer.parseInt(req.getParameter("shopitem_num"));
		String content = req.getParameter("content");
		String user_nickname = req.getParameter("user_nickname");
		String user_email = req.getParameter("email");
		int item_review_likes = Integer.parseInt(req.getParameter("item_review_likes"));
		
		
		vo.setItem_review_content(content);
		vo.setItem_review_likes(item_review_likes);
		vo.setUser_nickname(user_nickname);               
		vo.setUser_email(user_email);
		vo.setShopitem_num(shopitem_num);
		
		ItemReviewDAO dao = new ItemReviewDAO();
		dao.insertReview(vo);
		
		return null;
	}
	
}
