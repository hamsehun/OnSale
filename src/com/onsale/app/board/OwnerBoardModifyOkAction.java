package com.onsale.app.board;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onsale.action.Action;
import com.onsale.action.ActionForward;
import com.onsale.app.board.dao.OwnerBoardDAO;
import com.onsale.app.board.dao.OwnerFilesDAO;
import com.onsale.app.board.vo.OwnerBoardVO;
import com.onsale.app.board.vo.OwnerFilesVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class OwnerBoardModifyOkAction implements Action {

	@Override
public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String saveFolder = "D:\\gd_0900_hjw\\jsp\\workspace\\onSale_final\\WebContent\\ownerFileUpload";
		int fileSize = 5 * 1024 * 1024;
		MultipartRequest multi = null;
		OwnerFilesDAO f_dao = new OwnerFilesDAO();
		OwnerBoardDAO b_dao = new OwnerBoardDAO();
		OwnerBoardVO b_vo = new OwnerBoardVO();
		ActionForward forward = new ActionForward();
		try {
			multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
			int owner_board_num = Integer.parseInt(multi.getParameter("owner_board_num"));
			//업로드 폴더의 파일 삭제
			for(OwnerFilesVO file : f_dao.getOwnerFiles(owner_board_num)) {//게시글에 있는 첨부파일을 한 개씩 file객체에 담는다.
				File f = new File(saveFolder, file.getOwner_file_name());//삭제할 경로를 생성자를 통해 알려준다.
				if(f.exists()) { //해당 경로에 파일이 존재한다면
					f.delete(); //파일 삭제
				}
			}
			
			//DB에서 삭제
			f_dao.deleteOwnerFiles(owner_board_num);
			f_dao.insertOwnerFile(multi, owner_board_num);
			
			//게시글 정보 수정
			b_vo.setOwner_board_num(owner_board_num);
			b_vo.setOwner_board_title(multi.getParameter("owner_board_title"));
			b_vo.setOwner_board_content(multi.getParameter("owner_board_content"));
			b_dao.ownerUpdate(b_vo);
			
			forward.setRedirect(false);
			forward.setPath("/board/OwnerBoardViewOk.ob?owner_board_num="+owner_board_num);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forward;
	}
}
