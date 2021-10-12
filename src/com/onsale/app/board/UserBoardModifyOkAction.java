package com.onsale.app.board;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.board.dao.UserBoardDAO;
import com.onsale.app.board.dao.UserFilesDAO;
import com.onsale.app.board.vo.UserBoardVO;
import com.onsale.app.board.vo.UserFilesVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UserBoardModifyOkAction implements Action {

	@Override
public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String saveFolder = "D:\\gd_0900_hjw\\jsp\\workspace\\onSale_final\\WebContent\\userFileUpload";
		int fileSize = 5 * 1024 * 1024;
		MultipartRequest multi = null;
		UserFilesDAO f_dao = new UserFilesDAO();
		UserBoardDAO b_dao = new UserBoardDAO();
		UserBoardVO b_vo = new UserBoardVO();
		ActionForward forward = new ActionForward();
		try {
			multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
			int user_board_num = Integer.parseInt(multi.getParameter("board_num"));
			//업로드 폴더의 파일 삭제
			for(UserFilesVO file : f_dao.getUserFiles(user_board_num)) {//게시글에 있는 첨부파일을 한 개씩 file객체에 담는다.
				File f = new File(saveFolder, file.getUser_file_name());//삭제할 경로를 생성자를 통해 알려준다.
				if(f.exists()) { //해당 경로에 파일이 존재한다면
					f.delete(); //파일 삭제
				}
			}
			
			//DB에서 삭제
			f_dao.deleteUserFiles(user_board_num);
			f_dao.insertUserFile(multi, user_board_num);
			
			//게시글 정보 수정
			b_vo.setUser_board_num(user_board_num);
			b_vo.setUser_board_title(multi.getParameter("user_board_title"));
			b_vo.setUser_board_content(multi.getParameter("user_board_content"));
			b_dao.userUpdate(b_vo);
			
			forward.setRedirect(false);
			forward.setPath("/board/UserBoardViewOk.ub?user_board_num="+user_board_num);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forward;
	}
}
