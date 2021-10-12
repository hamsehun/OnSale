package com.onsale.app.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.ActionForward;

public class UserFrontController extends HttpServlet {
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
		
		if(command.equals("/user/UserInfoChange.me")){
			try {forward = new UserInfoChangeOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/user/UserGetInfo.me")){
	         try {forward = new UserGetInfoOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/user/UserCheckPwOk.me")){
	         try {new UserCheckPwOk().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/user/UserMypage.me")){
			forward = new ActionForward( );
			forward.setRedirect(false);
			forward.setPath("/app/user/mypage.jsp");
		}else if(command.equals("/user/UserLogin.me")){
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/user/login.jsp");
		}else if(command.equals("/user/UserLoginOk.me")){
			try {
				forward = new UserLoginOk().execute(req, resp);
			} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/user/UserJoin.me")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/user/join.jsp");
		} else if (command.equals("/user/UserJoinOk.me")) {
			try {
				forward = new UserJoinOk().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}

		} else if (command.equals("/user/UserLogout.me")) {
			try {
				forward = new UserLogoutAction().execute(req, resp);
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
