package com.onsale.app.owner;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.owner.dao.OwnerDAO;
import com.onsale.app.owner.vo.MartVO;
import com.onsale.app.owner.vo.OwnerVO;

public class OwnerJoinOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		//owner 객체를 셋하기 위해서 변수 받아와야함
		OwnerVO vo = new OwnerVO();
		MartVO mvo = new MartVO();
		//다오 메소드 사용을 위해 가져옴
		OwnerDAO dao = new OwnerDAO();
		ActionForward forward = new ActionForward();
		//인코딩 한국말 안나와서 넣음
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		//도로명 주소랑 상세주소 하나에 들어가. 행복해 :)
		String address = req.getParameter("owner_address") + " " + req.getParameter("owner_detailAddress");
		
		
		//사용자에게 입력 받은 내용을 set
		vo.setMart_owner_email(req.getParameter("mart_owner_email"));
		vo.setMart_owner_pw(req.getParameter("mart_owner_pw"));
		vo.setMart_owner_name(req.getParameter("mart_owner_name"));
		vo.setMart_owner_tel(req.getParameter("mart_owner_tel"));
		mvo.setMart_address(address);
		mvo.setMart_name(req.getParameter("mart_name"));
		mvo.setMart_tel(req.getParameter("mart_tel"));
		mvo.setMart_file(req.getParameter("mart_file"));
			
		
		// 다오 메소드 사용
		dao.ownerJoin(vo);
		dao.addMart(mvo);

		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/user/UserLogin.me");

		return forward;
	}
}