package com.onsale.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.board.dao.UserBoardDAO;
import com.onsale.app.board.vo.UserBoardReplyVO;
import com.onsale.app.shopping.dao.ItemReviewDAO;
import com.onsale.app.shopping.vo.ItemReviewVO;

public class UserBoardReplyWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		UserBoardReplyVO vo = new UserBoardReplyVO();
		UserBoardDAO dao = new UserBoardDAO();
		
		int user_reply_num = Integer.parseInt(req.getParameter("user_reply_num"));
		String user_reply_content = req.getParameter("user_reply_content");
		String user_nickname = req.getParameter("user_nickname");
		int user_board_num = Integer.parseInt(req.getParameter("user_board_num"));

		vo.setUser_reply_content(user_reply_content);
		vo.setUser_nickname(user_nickname);               
		vo.setUser_board_num(user_board_num);
		vo.setUser_reply_num(user_reply_num);
		
		req.setAttribute("session", req.getSession().getAttribute("session_email"));
		req.setAttribute("nickname", req.getParameter("nickname"));
		

		dao.insertUserReply(vo);
		
		return null;
	}
}
