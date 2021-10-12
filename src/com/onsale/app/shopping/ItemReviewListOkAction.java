package com.onsale.app.shopping;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.shopping.dao.ItemReviewDAO;
import com.onsale.app.shopping.vo.ItemReviewVO;

public class ItemReviewListOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionForward foward = new ActionForward();
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		int shopitem_num = Integer.parseInt(req.getParameter("shopitem_num"));
		PrintWriter out = resp.getWriter();
		ItemReviewDAO dao = new ItemReviewDAO();
		List<ItemReviewVO> reviewList = dao.getReviewList(shopitem_num);
		
		JSONArray reviews = new JSONArray();
		
		for (ItemReviewVO itemReview : reviewList) {  
			JSONObject review = new JSONObject();
			review.put("item_review_num", itemReview.getItem_review_num());
			review.put("shopitem_num", itemReview.getShopitem_num());
			review.put("user_email", itemReview.getUser_email());
			review.put("user_nickname", itemReview.getUser_nickname());
			review.put("item_review_date", itemReview.getItem_review_date());
			review.put("item_review_content", itemReview.getItem_review_content());
			review.put("item_review_likes", itemReview.getItem_review_likes());
			reviews.add(review);
		}
		out.print(reviews.toJSONString());
		out.close();
		
	
		
		
		return null;
	}

}
