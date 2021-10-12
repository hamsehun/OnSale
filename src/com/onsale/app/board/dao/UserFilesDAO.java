package com.onsale.app.board.dao;

import java.util.Enumeration;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.onsale.app.board.vo.UserFilesVO;
import com.onsale.mybatis.config.SqlMapConfig;
import com.oreilly.servlet.MultipartRequest;



public class UserFilesDAO {
		SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
		SqlSession sql_session;

	public UserFilesDAO() {
		sql_session = sessionf.openSession(true);
	}
	//게시글에 있는 첨부파일 모두 삭제
	public void deleteUserFiles(int user_board_num) {
		sql_session.delete("UserBoardFiles.deleteUserFiles", user_board_num);
	}
	
	//특정 게시글의 첨부파일 목록
	public List<UserFilesVO> getUserFiles(int user_board_num) {
		return sql_session.selectList("UserBoardFiles.getUserFiles", user_board_num);
	}
	//파일 추가하기
	public void insertUserFile(MultipartRequest multi, int user_board_num) {
		Enumeration<String> files = multi.getFileNames();
		UserFilesVO vo = new UserFilesVO();
		while(files.hasMoreElements()) {
			//사용자가 업로드한 파일태그의 name
			String name = files.nextElement();
			//사용자가 업로드한 원본 파일 이름
			String original = multi.getOriginalFileName(name);
			//중복 시 변경된 이름
			String systemName = multi.getFilesystemName(name);
			if(systemName == null) {continue;}
			
			vo.setUser_file_name(systemName);
			vo.setUser_board_num(user_board_num);
			vo.setUser_file_name_original(original);
			
			sql_session.insert("UserBoardFiles.insertUserFile", vo);
		}
	}

}
