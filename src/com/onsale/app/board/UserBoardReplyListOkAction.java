package com.onsale.app.board;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.board.dao.UserBoardDAO;
import com.onsale.app.board.vo.UserBoardReplyVO;

public class UserBoardReplyListOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		int user_board_num = Integer.parseInt(req.getParameter("user_board_num"));
		PrintWriter out = resp.getWriter();
		UserBoardDAO dao = new UserBoardDAO();
		
		List<UserBoardReplyVO> replyList = dao.getUserReplyList(user_board_num);
		
		JSONArray replies = new JSONArray();
		
		for (UserBoardReplyVO userBoardReply : replyList) {
			JSONObject reply = new JSONObject();
			reply.put("user_reply_num", userBoardReply.getUser_reply_num());
			reply.put("user_nickname", userBoardReply.getUser_nickname());
			reply.put("user_reply_content", userBoardReply.getUser_reply_content());
			replies.add(reply);
		}
		out.println(replies.toJSONString());
		out.close();
		
		return null;
	}

}
