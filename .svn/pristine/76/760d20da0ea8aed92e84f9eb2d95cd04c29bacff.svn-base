package com.onsale.app.shopping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.shopping.dao.ItemReviewDAO;
import com.onsale.app.shopping.vo.ItemReviewVO;

public class ItemReviewModifyOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		ItemReviewDAO dao = new ItemReviewDAO();
		ItemReviewVO review = new ItemReviewVO();
		
		String item_review_content = req.getParameter("item_review_content");
		int item_review_num = Integer.parseInt(req.getParameter("item_review_num"));
		
		review.setItem_review_content(item_review_content);
		review.setItem_review_num(item_review_num);
		dao.updateReview(review);
		return null;
	}

}
