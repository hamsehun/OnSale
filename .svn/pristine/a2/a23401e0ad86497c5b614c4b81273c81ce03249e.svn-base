package com.onsale.app.owner;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.owner.dao.OwnerDAO;
import com.onsale.app.owner.vo.OwnerVO;

public class OwnerInfoChangeOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		OwnerDAO dao = new OwnerDAO();
		OwnerVO vo = new OwnerVO();
		ActionForward forward = new ActionForward();
		
		String mart_owner_email = (String)req.getSession().getAttribute("session_email");

		vo.setMart_owner_email(mart_owner_email);
		
		//새 비밀번호를 입력하지 않았을 경우, 기존 비번으로 업뎃
		if(req.getParameter("user_pw") != null) {
			vo.setMart_owner_pw(req.getParameter("mart_owner_pw"));
		}else {
			vo.setMart_owner_pw(req.getParameter("mart_owner_pw_original"));
		}
		
		dao.ownerInfoChange(vo);
		dao.ownerPwChange(vo);

		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/owner/OwnerGetInfo.ow");
		
		return forward;
	}

}
