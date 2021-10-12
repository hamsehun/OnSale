package com.onsale.app.owner;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.owner.dao.OwnerDAO;

public class OwnerGetInfoOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionForward forward = new ActionForward();
		OwnerDAO dao = new OwnerDAO();
		String mart_owner_email = (String)req.getSession().getAttribute("session_email");
		
		req.setAttribute("getownerInfo", dao.getownerInfo(mart_owner_email));
		
		forward.setRedirect(false);
		forward.setPath("/app/user/ownerPage.jsp");
		
		return forward;
	}

}
