package com.onsale.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.user.dao.UserDAO;

public class UserGetInfoOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionForward forward = new ActionForward();
		UserDAO dao = new UserDAO();
		String user_email = (String)req.getSession().getAttribute("session_email");
		
		req.setAttribute("getuserInfo", dao.getuserInfo(user_email));
		String type =(String)req.getSession().getAttribute("type");
		forward.setRedirect(false);
		forward.setPath("/app/user/mypage.jsp?type="+type);
		
		return forward;
	}

}
