package com.onsale.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.board.dao.OwnerBoardDAO;
import com.onsale.app.board.dao.OwnerFilesDAO;

public class OwnerBoardViewOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int owner_board_num = Integer.parseInt(req.getParameter("owner_board_num"));
		ActionForward forward = new ActionForward();
		OwnerBoardDAO b_dao = new OwnerBoardDAO();
		OwnerFilesDAO f_dao = new OwnerFilesDAO();
		String type = (String)req.getSession().getAttribute("type");
		req.setAttribute("board", b_dao.getOwnerDetail(owner_board_num)); //게시글 정보
		req.setAttribute("files", f_dao.getOwnerFiles(owner_board_num)); //게시글에 업로드된 첨부파일 리스트
		
		b_dao.updateOwnerView(owner_board_num);
		
		forward.setRedirect(false);
		forward.setPath("/app/board/ownerBoardView.jsp?type="+type);
		
		return forward;
	}

}