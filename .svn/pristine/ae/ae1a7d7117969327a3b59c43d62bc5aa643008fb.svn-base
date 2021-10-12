package com.onsale.app.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.ActionForward;

public class OwnerBoardFrontController extends HttpServlet {
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
		ActionForward forward = null;
		if (command.equals("/board/OwnerBoardList.ob")) {
			try {
				forward = new OwnerBoardListOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("board/OwnerBoardWrite.ob")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/board/ownerBoardWrite.jsp");
		} else if (command.equals("/board/OwnerBoardWriteOk.ob")) {
			try {
				forward = new OwnerBoardWriteOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/board/OwnerBoardViewOk.ob")) {
			try {
				forward = new OwnerBoardViewOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/board/OwnerFileDownload.ob")) {
			try {
				new OwnerFileDownload().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/board/OwnerBoardModify.ob")) {
			try {
				forward = new OwnerBoardModifyAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/board/OwnerBoardModifyOk.ob")) {
			try {
				forward = new OwnerBoardModifyOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/board/OwnerBoardDeleteOk.ob")) {
			try {
				forward = new OwnerBoardDeleteOkAction().execute(req, resp);
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
