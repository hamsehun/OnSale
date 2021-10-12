package com.onsale.app.shopping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.shopping.dao.ItemReviewDAO;

public class ItemReviewDeleteOKAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int review_num = Integer.parseInt(req.getParameter("review_num"));
		
		ItemReviewDAO dao = new ItemReviewDAO();
		dao.deleteReview(review_num);
		
		return null;
	}

}

