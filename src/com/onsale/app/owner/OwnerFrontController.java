package com.onsale.app.owner;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.ActionForward;
import com.onsale.app.board.UserFileDownload;
import com.onsale.app.owner.OwnerCheckPwOk;
import com.onsale.app.owner.OwnerGetInfoOkAction;
import com.onsale.app.owner.OwnerInfoChangeOk;
import com.onsale.app.owner.OwnerJoinOk;



public class OwnerFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;

		if(command.equals("/owner/OwnerInfoChange.ow")){
			try {forward = new OwnerInfoChangeOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/owner/OwnerGetInfo.ow")){
	         try {forward = new OwnerGetInfoOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/owner/OwnerCheckPwOk.ow")){
	         try {new OwnerCheckPwOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/owner/OwnerMypage.ow")){
			forward = new ActionForward( );
			forward.setRedirect(false);
			forward.setPath("/app/user/ownerPage.jsp");
		}else if(command.equals("/owner/OwnerJoin.ow")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/user/join.jsp");
		} else if (command.equals("/owner/OwnerJoinOk.ow")) {
			try {
				forward = new OwnerJoinOk().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/owner/MartFileDownload.ow")) {
			try {
				new UserFileDownload().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		if(forward != null) {
			if(forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			}else{
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, resp);
			}
		}
	}
}
