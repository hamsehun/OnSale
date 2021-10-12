package com.onsale.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.board.dao.UserBoardDAO;

public class UserBoardReplyDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		int user_reply_num = Integer.parseInt(req.getParameter("user_reply_num"));
		
		UserBoardDAO dao = new UserBoardDAO();
		dao.deleteUserReply(user_reply_num);
		
		return null;
	}

}
