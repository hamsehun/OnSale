package com.onsale.app.owner;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.owner.dao.OwnerDAO;
import com.onsale.app.owner.vo.MartVO;
import com.onsale.app.owner.vo.OwnerVO;

public class MartInfoChangeOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		OwnerDAO dao = new OwnerDAO();
		OwnerVO vo = new OwnerVO();
		MartVO mvo = new MartVO();
		ActionForward forward = new ActionForward();
		
		String mart_owner_email = (String)req.getSession().getAttribute("session_email");
		//도로명 + 상세주소 내용을 합친뒤 String 타입에 담아준다.
		String mart_address = req.getParameter("mart_address") + " " + req.getParameter("mart_detailAddress");
		
		vo.setMart_owner_email(mart_owner_email);
		
		//새 비밀번호를 입력하지 않았을 경우, 기존 비번으로 업뎃
		if(req.getParameter("mart_owner_pw") != null) {
			vo.setMart_owner_pw(req.getParameter("mart_owner_pw"));
		}else {
			vo.setMart_owner_pw(req.getParameter("mart_owner_pw_original"));
		}
		
		//주소를 입력했을 경우 주소와 비번 업뎃
		//주소 입력 안했을 경우 비번만 업뎃
		if(req.getParameter("mart_postcode") != null) {
			mvo.setMart_postcode(req.getParameter("mart_postcode"));
			mvo.setMart_address(mart_address);
			dao.updateMartDetail(mvo);
		}else {
			dao.ownerPwChange(vo);
		}
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/owner/OwnerGetInfo.me");
		
		return forward;
	}

}
