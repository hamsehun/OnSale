package com.onsale.app.shopping;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.owner.vo.MartVO;
import com.onsale.app.shopping.dao.ShoppingDAO;
public class ShoppingSearchMartOK implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ShoppingDAO dao = new ShoppingDAO();
		ActionForward forward = new ActionForward();
		String keyword = req.getParameter("keyword");
		List<MartVO> arrayMart[] = new List[3];
		String type = (String)req.getSession().getAttribute("type");
		for (int i = 0; i < arrayMart.length; i++) {
			arrayMart[i] = new ArrayList<MartVO>();
		}
		
		List<MartVO> marts = dao.getMartList(keyword);
		
		for (int i = 0; i < marts.size(); i++) {
			if (i%3==0) {
				arrayMart[0].add(marts.get(i));
			}else if (i%3==1) {
				arrayMart[1].add(marts.get(i));
			}else if (i%3==2){
				arrayMart[2].add(marts.get(i));
			}
		}
		req.setAttribute("marts", arrayMart);
		req.setAttribute("searchCnt", marts.size());
		
		forward.setRedirect(false);
		forward.setPath("/app/user/shoppingMallSearch.jsp?type="+type);
		return forward;
	}

}

