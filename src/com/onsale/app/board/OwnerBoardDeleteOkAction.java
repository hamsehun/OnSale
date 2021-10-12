package com.onsale.app.board;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.board.dao.OwnerBoardDAO;
import com.onsale.app.board.dao.OwnerFilesDAO;
import com.onsale.app.board.vo.OwnerFilesVO;

public class OwnerBoardDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String saveFolder = "D:\\gd_0900_hjw\\jsp\\workspace\\onSale_final\\WebContent\\ownerFileUpload";
		OwnerFilesDAO f_dao = new OwnerFilesDAO();
		OwnerBoardDAO b_dao = new OwnerBoardDAO();
		ActionForward forward = new ActionForward();
		try {
			int owner_board_num = Integer.parseInt(req.getParameter("owner_board_num"));
			//업로드 폴더의 파일 삭제
			for(OwnerFilesVO file : f_dao.getOwnerFiles(owner_board_num)) {//게시글에 있는 첨부파일을 한 개씩 file객체에 담는다.
				File f = new File(saveFolder, file.getOwner_file_name());//삭제할 경로를 생성자를 통해 알려준다.
				if(f.exists()) { //해당 경로에 파일이 존재한다면
					f.delete(); //파일 삭제
				}
			}
			
			//DB에서 삭제
			f_dao.deleteOwnerFiles(owner_board_num);
			
			//게시글 정보 삭제
			b_dao.deleteOwnerBoard(owner_board_num);
			
			forward.setRedirect(false);
			forward.setPath("/board/OwnerBoardList.ob");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forward;
	}

}
