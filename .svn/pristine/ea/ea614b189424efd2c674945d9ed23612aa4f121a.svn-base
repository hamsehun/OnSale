package com.onsale.app.board.dao;

import java.util.Enumeration;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.onsale.app.board.vo.OwnerFilesVO;
import com.onsale.mybatis.config.SqlMapConfig;
import com.oreilly.servlet.MultipartRequest;

public class OwnerFilesDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;

	public OwnerFilesDAO() {
		sql_session = sessionf.openSession(true);
	}
	//게시글에 있는 첨부파일 모두 삭제
	public void deleteOwnerFiles(int owner_board_num) {
		sql_session.delete("OwnerBoardFiles.deleteOwnerFiles", owner_board_num);
	}
	
	//특정 게시글의 첨부파일 목록
	public List<OwnerFilesVO> getOwnerFiles(int owner_board_num) {
		return sql_session.selectList("OwnerBoardFiles.getOwnerFiles", owner_board_num);
	}
	//파일 추가하기
	public void insertOwnerFile(MultipartRequest multi, int owner_board_num) {
		Enumeration<String> files = multi.getFileNames();
		OwnerFilesVO vo = new OwnerFilesVO();
		while(files.hasMoreElements()) {
			//사용자가 업로드한 파일태그의 name
			String name = files.nextElement();
			//사용자가 업로드한 원본 파일 이름
			String original = multi.getOriginalFileName(name);
			//중복 시 변경된 이름
			String systemName = multi.getFilesystemName(name);
			if(systemName == null) {continue;}
			
			vo.setOwner_file_name(systemName);
			vo.setOwner_board_num(owner_board_num);
			vo.setOwner_file_name_original(original);
			
			sql_session.insert("OwnerBoardFiles.insertOwnerFile", vo);
		}
	}

}
