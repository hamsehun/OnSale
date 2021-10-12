package com.onsale.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.board.dao.UserBoardDAO;
import com.onsale.app.board.vo.UserBoardReplyVO;

public class UserBoardReplyModifyOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		UserBoardDAO dao = new UserBoardDAO();
		UserBoardReplyVO userComment = new UserBoardReplyVO();
		
		String user_reply_content = req.getParameter("user_reply_content");
		int user_reply_num = Integer.parseInt(req.getParameter("user_reply_num"));
		
		req.setAttribute("session", req.getSession().getAttribute("session_email"));
		req.setAttribute("nickname", req.getParameter("nickname"));
		
		userComment.setUser_reply_content(user_reply_content);
		userComment.setUser_reply_num(user_reply_num);
		dao.updateUserReply(userComment);
		
		return null;
	}

}
