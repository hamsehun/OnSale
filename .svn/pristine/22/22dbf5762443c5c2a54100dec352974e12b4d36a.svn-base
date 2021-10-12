package com.onsale.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.board.dao.OwnerBoardDAO;
import com.onsale.app.board.dao.OwnerFilesDAO;
import com.onsale.app.board.vo.OwnerBoardVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class OwnerBoardWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		//리눅스 서버에 프로젝트 업로드 시 아래의 경로를 사용해준다.
		//req.getServletContext().getRealPath("/") + "\\upload"
		String saveFolder = "D:\\gd_0900_hjw\\jsp\\workspace\\onSale_final\\WebContent\\ownerFileUpload";
		int fileSize = 5 * 1024 * 1024;	//5M
		
		ActionForward forward = new ActionForward();
		OwnerBoardDAO u_dao = new OwnerBoardDAO();
		OwnerFilesDAO f_dao = new OwnerFilesDAO();
		OwnerBoardVO u_vo = new OwnerBoardVO();
		MultipartRequest multi = null;
		multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		u_vo.setOwner_board_title(multi.getParameter("owner_board_title"));
		u_vo.setOwner_board_content(multi.getParameter("owner_board_content"));
		u_vo.setMart_name(multi.getParameter("mart_name"));
		
		u_dao.insertOwnerBoard(u_vo);
		f_dao.insertOwnerFile(multi, u_dao.getOwnerSeq());
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/board/OwnerBoardList.ob");
		
		return forward;
	}
}
