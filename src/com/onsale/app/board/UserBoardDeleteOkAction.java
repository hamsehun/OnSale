package com.onsale.app.board;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.board.dao.UserBoardDAO;
import com.onsale.app.board.dao.UserFilesDAO;
import com.onsale.app.board.vo.UserFilesVO;

public class UserBoardDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String saveFolder = "D:\\gd_0900_hjw\\jsp\\workspace\\onSale_final\\WebContent\\userFileUpload";
		UserFilesDAO f_dao = new UserFilesDAO();
		UserBoardDAO b_dao = new UserBoardDAO();
		ActionForward forward = new ActionForward();
		try {
			int user_board_num = Integer.parseInt(req.getParameter("user_board_num"));
			//업로드 폴더의 파일 삭제
			for(UserFilesVO file : f_dao.getUserFiles(user_board_num)) {//게시글에 있는 첨부파일을 한 개씩 file객체에 담는다.
				File f = new File(saveFolder, file.getUser_file_name());//삭제할 경로를 생성자를 통해 알려준다.
				if(f.exists()) { //해당 경로에 파일이 존재한다면
					f.delete(); //파일 삭제
				}
			}
			
			//DB에서 삭제
			f_dao.deleteUserFiles(user_board_num);
			
			//게시글 정보 삭제
			b_dao.deleteUserReplyAndBoard(user_board_num);
			b_dao.deleteUserBoard(user_board_num);
			
			forward.setRedirect(false);
			forward.setPath("/board/UserBoardList.ub");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forward;
	}

}
