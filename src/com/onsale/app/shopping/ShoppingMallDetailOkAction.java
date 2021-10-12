package com.onsale.app.shopping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.owner.vo.OwnerVO;
import com.onsale.app.owner.vo.ShopItemVO;
import com.onsale.app.shopping.dao.ShoppingDAO;

public class ShoppingMallDetailOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int shopitem_num = Integer.parseInt(req.getParameter("shopitem_num"));
		ActionForward forward = new ActionForward();
		ShoppingDAO s_dao = new ShoppingDAO();
		String user_email = (String)req.getSession().getAttribute("session_email");
		String type = (String)req.getSession().getAttribute("type");
		OwnerVO vo = s_dao.getownerInfo(user_email);
		
		if(req.getSession().getAttribute("session_email") != null) {
			if(type.equals("user")) {
		req.setAttribute("nickname", s_dao.getNickname(user_email));
		req.setAttribute("user_num", s_dao.getUserNum(user_email));
			}else {
				req.setAttribute("nickname", vo.getMart_owner_name());
				req.setAttribute("user_num", vo.getMart_owner_num());
			}
		}
		req.setAttribute("email", user_email);
		req.setAttribute("detail", s_dao.getDetail(shopitem_num));
		
		
		forward.setRedirect(false);
		forward.setPath("/app/user/shoppingMallDetail.jsp?type="+type);
		
		return forward;
	}

}
