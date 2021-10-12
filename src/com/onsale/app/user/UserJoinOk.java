package com.onsale.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.user.dao.UserDAO;
import com.onsale.app.user.vo.UserVO;

public class UserJoinOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		//user 객체를 셋하기 위해서 변수 받아와야함
		UserVO vo = new UserVO();
		//다오 메소드 사용을 위해 가져옴
		UserDAO dao = new UserDAO();
		ActionForward forward = new ActionForward();
		//인코딩 한국말 안나와서 넣음
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		//도로명 주소랑 상세주소 하나에 들어가. 행복해 :)
		String address = req.getParameter("user_address") + " " + req.getParameter("user_detailAddress");
		
		
		//사용자에게 입력 받은 내용을 set
		vo.setUser_nickname(req.getParameter("user_nickname"));
		vo.setUser_email(req.getParameter("user_email"));
		vo.setUser_pw(req.getParameter("user_pw"));
		vo.setUser_name(req.getParameter("user_name"));
		vo.setUser_tel("01011112567");
		vo.setUser_address(address);
		vo.setUser_postcode(req.getParameter("user_postcode"));
		//사용자에게 입력 받은 내용을 set
		System.out.println(req.getParameter("user_nickname"));
		System.out.println(req.getParameter("user_email"));
		System.out.println(req.getParameter("user_pw"));
		System.out.println(req.getParameter("user_name"));
		System.out.println("01011112567");
		System.out.println(address);
		System.out.println(req.getParameter("user_postcode"));
		// 다오 메소드 사용
		dao.userJoin(vo);

		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/user/UserLogin.me");

		return forward;
	}
}