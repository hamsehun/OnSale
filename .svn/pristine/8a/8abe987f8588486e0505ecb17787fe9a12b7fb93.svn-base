package com.onsale.app.martsearch;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.board.vo.OwnerBoardVO;
import com.onsale.app.martsearch.dao.MartsearchDAO;
import com.onsale.app.owner.vo.MartVO;
import com.onsale.app.owner.vo.ShopItemVO;

public class MartInfoOKAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionForward forward = new ActionForward();
		MartsearchDAO dao = new MartsearchDAO();
		int mart_num = Integer.parseInt(req.getParameter("mart_num"));
		List<ShopItemVO> arrayItems[] = new List[3];
		MartVO mart = dao.getMartInfo(mart_num);
		List<OwnerBoardVO> boards = dao.getMartBoard(mart.getMart_name());
		
		for (int i = 0; i < arrayItems.length; i++) {
			arrayItems[i] = new ArrayList<ShopItemVO>();
		}
		
		List<ShopItemVO> items = dao.getMartItems(mart_num);
		
		for (int i = 0; i < items.size(); i++) {
			if (i%3==0) {
				arrayItems[0].add(items.get(i));
			}else if (i%3==1) {
				arrayItems[1].add(items.get(i));
			}else if (i%3==2){
				arrayItems[2].add(items.get(i));
			}
		}
		
		if (boards.size()>3) {
			int temp = boards.size();
			int repeat = boards.size()-3;
			for (int i = 0; i < repeat; i++) {
				temp--;
				boards.remove(temp);
			}
		}
		
		req.setAttribute("items", arrayItems);
		req.setAttribute("cnt", items.size());
		req.setAttribute("boardCnt", dao.getMartBoard(mart.getMart_name()).size());
		req.setAttribute("mart", mart);
		req.setAttribute("boards", boards);
		
		forward.setRedirect(false);
		forward.setPath("/app/user/martDetails.jsp");
		
		return forward;
	}

}
