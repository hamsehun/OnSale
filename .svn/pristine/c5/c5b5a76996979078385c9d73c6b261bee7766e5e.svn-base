package com.onsale.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.user.dao.UserDAO;

public class UserLoginOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String email = req.getParameter("user_email");
		String pw = req.getParameter("user_pw");
		String type= req.getParameter("type");
		
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
		
		UserDAO dao = new UserDAO();
		
		boolean check = type.equals("owner") ? dao.login_owner(email, pw) : dao.login_user(email, pw);
		
		if(check) {
			session.setAttribute("session_email", email);
			session.setAttribute("type", type);
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/app/user/main.jsp?type=" + type);//로그인 성공 시
		}else {
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/user/UserLogin.me?flag=false");//로그인 실패 시
		}
		return forward;
	}

}
