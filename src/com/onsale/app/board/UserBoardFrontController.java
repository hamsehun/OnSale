package com.onsale.app.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.ActionForward;
import com.onsale.app.shopping.dao.ShoppingDAO;

public class UserBoardFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		String type = (String)req.getSession().getAttribute("type");
		ActionForward forward = null;
		String email = (String)req.getSession().getAttribute("session_email");
		ShoppingDAO dao = new ShoppingDAO();
		String nickname = dao.getNickname(email);
		// 전체 글 목록 보여주기
		if (command.equals("/board/UserBoardList.ub")) {
			try {
				forward = new UserBoardListOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}else if (command.equals("/board/MyBoardList.ub")) {
			try {
				forward = new MyBoardListOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}else if (command.equals("/board/UserBoardWrite.ub")) {
			try {
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/app/board/userBoardWrite.jsp?type="+type+"&nickname="+nickname);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/board/UserBoardWriteOk.ub")) {
			try {
				forward = new UserBoardWriteOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/board/UserBoardViewOk.ub")) {
			try {
				forward = new UserBoardViewOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/board/UserFileDownload.ub")) {
			try {
				new UserFileDownload().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/board/UserBoardModify.ub")) {
			try {
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/app/board/userBoardModify.jsp");
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/board/UserBoardModifyOk.ub")) {
			try {
				forward = new UserBoardModifyOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/board/UserBoardDeleteOk.ub")) {
			try {
				forward = new UserBoardDeleteOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/board/UserBoardReplyList.ub")) {
			try {
				forward = new UserBoardReplyListOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/board/UserBoardReplyWrite.ub")) {
			try {
				forward = new UserBoardReplyWriteOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/board/UserBoardReplyDeleteOk.ub")) {
			try {
				forward = new UserBoardReplyDeleteOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/board/UserBoardReplyModify.ub")) {
			try {
				forward = new UserBoardReplyModifyOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}

		if (forward != null) {
			if (forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, resp);
			}
		}
	}
}
