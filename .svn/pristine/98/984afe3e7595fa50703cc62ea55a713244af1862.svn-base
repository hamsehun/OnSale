package com.onsale.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.user.dao.UserDAO;
import com.onsale.app.user.vo.UserVO;

public class UserInfoChangeOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		UserDAO dao = new UserDAO();
		UserVO vo = new UserVO();
		ActionForward forward = new ActionForward();
		
		String user_email = (String)req.getSession().getAttribute("session_email");
		//도로명 + 상세주소 내용을 합친뒤 String 타입에 담아준다.
		String user_address = req.getParameter("user_address") + " " + req.getParameter("user_detailAddress");
		
		vo.setUser_email(user_email);
		
		//새 비밀번호를 입력하지 않았을 경우, 기존 비번으로 업뎃
		if(req.getParameter("user_pw") != null) {
			vo.setUser_pw(req.getParameter("user_pw"));
		}else {
			vo.setUser_pw(req.getParameter("user_pw_original"));
		}
		
		//주소를 입력했을 경우 주소와 비번 업뎃
		//주소 입력 안했을 경우 비번만 업뎃
		if(req.getParameter("user_postcode") != null) {
			vo.setUser_postcode(req.getParameter("user_postcode"));
			vo.setUser_address(user_address);
			dao.userInfoChange(vo);
		}else {
			dao.userPwChange(vo);
		}
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/user/UserGetInfo.me");
		
		return forward;
	}

}
