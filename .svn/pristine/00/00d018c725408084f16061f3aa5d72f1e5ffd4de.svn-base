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
import com.onsale.app.board.vo.UserBoardVO;

public class MyBoardListOkAction implements Action {
		@Override
		public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			String user_nickname = (String)req.getParameter("user_nickname");
			PrintWriter out = resp.getWriter();
			
			UserBoardDAO dao = new UserBoardDAO();
			ActionForward forward = new ActionForward();
			
			List<UserBoardVO> myBoardList = dao.getMyBoardList(user_nickname);
			
			JSONArray myBoards = new JSONArray();
			
			for (UserBoardVO userBoard : myBoardList) {
				JSONObject board = new JSONObject();
				board.put("user_board_title", userBoard.getUser_board_title());
				board.put("user_nickname", userBoard.getUser_nickname());
				board.put("user_board_date", userBoard.getUser_board_date());
				board.put("user_board_views", (Integer)userBoard.getUser_board_views());
				board.put("user_board_likes", (Integer)userBoard.getUser_board_likes());
				myBoards.add(board);
			}
			
		      out.print(myBoards.toJSONString());
		      out.close();
			  return null;
		}
	}