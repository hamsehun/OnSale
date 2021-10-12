package com.onsale.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;

public class UserLogoutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		HttpSession session = req.getSession();
		ActionForward forward = new ActionForward();
		
		session.invalidate();
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/user/UserLogin.me");
		
		return forward;
	}

}
