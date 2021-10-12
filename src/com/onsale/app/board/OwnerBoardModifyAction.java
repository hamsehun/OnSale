package com.onsale.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.board.dao.OwnerBoardDAO;

public class OwnerBoardModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int owner_board_num = Integer.parseInt(req.getParameter("owner_board_num"));
		ActionForward forward = new ActionForward();
		
		OwnerBoardDAO dao = new OwnerBoardDAO();
		req.setAttribute("board", dao.getOwnerDetail(owner_board_num));
		forward.setRedirect(false);
		forward.setPath("/app/board/ownerBoardModify.jsp");
		
		return forward;
	}
}
