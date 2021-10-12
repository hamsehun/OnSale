package com.onsale.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.board.dao.UserBoardDAO;
import com.onsale.app.board.dao.UserFilesDAO;

public class UserBoardViewOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int user_board_num = Integer.parseInt(req.getParameter("user_board_num"));
		String user_nickname = req.getParameter("user_nickname");
		ActionForward forward = new ActionForward();
		UserBoardDAO b_dao = new UserBoardDAO();
		UserFilesDAO f_dao = new UserFilesDAO();
		String type = (String)req.getSession().getAttribute("type");
		req.setAttribute("board", b_dao.getUserDetail(user_board_num)); //게시글 정보
		req.setAttribute("session", req.getSession().getAttribute("session_email"));
		req.setAttribute("nickname", req.getParameter("nickname"));
		req.setAttribute("files", f_dao.getUserFiles(user_board_num)); //게시글에 업로드된 첨부파일 리스트
		req.setAttribute("email", b_dao.getUserEmail(user_nickname));
		
		b_dao.updateUserView(user_board_num);
		
		forward.setRedirect(false);
		forward.setPath("/app/board/userBoardView.jsp?type="+type);
		
		return forward;
	}

}