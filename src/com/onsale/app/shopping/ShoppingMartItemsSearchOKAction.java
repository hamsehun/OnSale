package com.onsale.app.shopping;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.owner.vo.ShopItemVO;
import com.onsale.app.shopping.dao.ShoppingDAO;import com.onsale.app.shopping.vo.ItemReviewVO;

public class ShoppingMartItemsSearchOKAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ShoppingDAO dao = new ShoppingDAO();
		ActionForward forward = new ActionForward();
		String martName = req.getParameter("martName");
		String keyword = req.getParameter("keyword");
		
		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int pageSize = 9;
		
		int endRow = page * pageSize;
		int startRow = endRow - (pageSize - 1);
		int totalCnt = dao.getTotal();
		
		int realEndPage = (totalCnt - 1) / pageSize + 1;
		int startPage = ((page - 1) / pageSize) * pageSize + 1;
		int endPage = startPage + 9;
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		req.setAttribute("martName", martName);
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("ShoppingMall", dao.getItemSearchList(startRow, endRow, martName,keyword));
		
		forward.setRedirect(false);
		forward.setPath("/app/user/shoppingMartItems.jsp");
		return forward;
	}
}
