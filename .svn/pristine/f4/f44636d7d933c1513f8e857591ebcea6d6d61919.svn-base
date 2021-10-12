package com.onsale.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.board.dao.UserBoardDAO;

public class UserBoardModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int user_board_num = Integer.parseInt(req.getParameter("user_board_num"));
		ActionForward forward = new ActionForward();
		
		UserBoardDAO dao = new UserBoardDAO();
		req.setAttribute("board", dao.getUserDetail(user_board_num));
		forward.setRedirect(false);
		forward.setPath("/app/board/userBoardModify.jsp");
		
		return forward;
	}
}
