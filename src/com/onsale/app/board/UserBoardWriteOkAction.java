package com.onsale.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.board.dao.UserBoardDAO;
import com.onsale.app.board.dao.UserFilesDAO;
import com.onsale.app.board.vo.UserBoardVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UserBoardWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		//리눅스 서버에 프로젝트 업로드 시 아래의 경로를 사용해준다.
		//req.getServletContext().getRealPath("/") + "\\upload"
		String saveFolder = "D:\\gd_0900_hjw\\jsp\\workspace\\onSale_final\\WebContent\\userFileUpload";
		int fileSize = 5 * 1024 * 1024;	//5M

		ActionForward forward = new ActionForward();
		UserBoardDAO u_dao = new UserBoardDAO();
		UserFilesDAO f_dao = new UserFilesDAO();
		UserBoardVO u_vo = new UserBoardVO();
		MultipartRequest multi = null;
		multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		u_vo.setUser_board_title(multi.getParameter("user_board_title"));
		u_vo.setUser_board_content(multi.getParameter("user_board_content"));
		//글 쓴 사람의 닉네임
		u_vo.setUser_nickname(multi.getParameter("user_nickname"));
		
		req.setAttribute("session", req.getSession().getAttribute("session_email"));
		req.setAttribute("nickname", req.getParameter("nickname"));
	
		u_dao.insertUserBoard(u_vo);
		f_dao.insertUserFile(multi, u_dao.getUserSeq());
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/board/UserBoardList.ub");
		
		return forward;
	}
}
