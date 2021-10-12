package com.onsale.app.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.onsale.app.board.vo.OwnerBoardVO;
import com.onsale.mybatis.config.SqlMapConfig;



public class OwnerBoardDAO {
		SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
		SqlSession sql_session;
		
public OwnerBoardDAO() {
			sql_session = sessionf.openSession(true);
		}
//페이지별 게시글 목록
public List<OwnerBoardVO> getOwnerBoardList(int startRow, int endRow) {
	Map<String, Integer> pageMap = new HashMap<>();
	
	pageMap.put("startRow", startRow);
	pageMap.put("endRow", endRow);
	
	return sql_session.selectList("OwnerBoard.getOwnerBoardList", pageMap);
}
//전체 게시글 수
public int getOwnerBoardTotal() {
	return sql_session.selectOne("OwnerBoard.getOwnerBoardTotal");
}
//게시글 추가
public void insertOwnerBoard(OwnerBoardVO owner_board) {
	sql_session.insert("OwnerBoard.insertOwnerBoard", owner_board);
}
//게시글 번호 가져오기(SEQ)
public int getOwnerSeq() {
	return sql_session.selectOne("OwnerBoard.getOwnerSeq");
}

//게시글 상세보기(게시글 한 개 가져오기)
public OwnerBoardVO getOwnerDetail(int owner_board_num) {
	return sql_session.selectOne("OwnerBoard.getOwnerDetail", owner_board_num);
}

//게시글 수정
public void ownerUpdate(OwnerBoardVO owner_board) {
	sql_session.update("OwnerBoard.ownerUpdate", owner_board);
}

//조회수 증가
public void updateOwnerView(int owner_board_num) {
	sql_session.update("OwnerBoard.updateOwnerView", owner_board_num);
}

//게시글 삭제
public void deleteOwnerBoard(int owner_board_num) {
	sql_session.delete("OwnerBoard.deleteOwnerBoard", owner_board_num);
}
}
