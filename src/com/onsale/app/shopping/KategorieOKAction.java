package com.onsale.app.shopping;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.owner.vo.MartVO;
import com.onsale.app.shopping.dao.ShoppingDAO;

public class KategorieOKAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ShoppingDAO dao = new ShoppingDAO();
		ActionForward forward = new ActionForward();
		String kategorie = req.getParameter("kategorie");
		String area = req.getParameter("area");
		List<MartVO> marts = new ArrayList<>();
		List<MartVO> arrayMart[] = new List[3];

		if(area.equals("전체")) {area = "";}
		
		for (int i = 0; i < arrayMart.length; i++) {
			arrayMart[i] = new ArrayList<MartVO>();
		}
		
		switch (kategorie) {
		case "추천매장순":
			break;
			
		case "최근등록순":
			marts = dao.getUpdateList(area);
			break;

		case "재난지원금":
			marts = dao.getCovidList(area);
			break;
		}
		
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
		req.setAttribute("area", area);
		
		forward.setRedirect(false);
		forward.setPath("/app/user/shoppingMallSearch.jsp");
		return forward;
	}

}
