package com.onsale.app.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.onsale.app.board.vo.UserBoardReplyVO;
import com.onsale.app.board.vo.UserBoardVO;
import com.onsale.app.shopping.vo.ItemReviewVO;
import com.onsale.mybatis.config.SqlMapConfig;

public class UserBoardDAO {

	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;

	public UserBoardDAO() {
		sql_session = sessionf.openSession(true);
	}
	
	//페이지별 게시글 목록
	public List<UserBoardVO> getUserBoardList(int startRow, int endRow) {
		Map<String, Integer> pageMap = new HashMap<>();
		
		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);
		
		return sql_session.selectList("UserBoard.getUserBoardList", pageMap);
	}
	//해당 유저의 게시글 목록
	public List<UserBoardVO> getMyBoardList(String user_nickname) {
		return sql_session.selectList("UserBoard.getMyBoardList", user_nickname);
	}
	
	//전체 게시글 수
	public int getUserBoardTotal() {
		return sql_session.selectOne("UserBoard.getUserBoardTotal");
	}
	//유저가 작성한 게시글 수
	public int getMyBoardTotal(String user_nickname) {
		return sql_session.selectOne("UserBoard.getMyBoardTotal", user_nickname);
	}
	//게시글 추가
	public void insertUserBoard(UserBoardVO user_board) {
		sql_session.insert("UserBoard.insertUserBoard", user_board);
	}
	//게시글 번호 가져오기(SEQ)
	public int getUserSeq() {
		return sql_session.selectOne("UserBoard.getUserSeq");
	}
	
	//게시글 상세보기(게시글 한 개 가져오기)
	public UserBoardVO getUserDetail(int user_board_num) {
		return sql_session.selectOne("UserBoard.getUserDetail", user_board_num);
	}
	
	//게시글 수정
	public void userUpdate(UserBoardVO user_board) {
		sql_session.update("UserBoard.userUpdate", user_board);
	}
	
	//조회수 증가
	public void updateUserView(int user_board_num) {
		sql_session.update("UserBoard.updateUserView", user_board_num);
	}
	
	//게시글 삭제
	public void deleteUserBoard(int user_board_num) {
		sql_session.delete("UserBoard.deleteUserBoard", user_board_num);
	}

	//유저 이메일 가져오기
	public String getUserEmail(String user_nickname) {
		return sql_session.selectOne("UserBoard.getUserEmail", user_nickname);
	}
	
	//세션 이메일로 유저 닉네임 가져오기
	public String getUserNickname(String user_email) {
		return sql_session.selectOne("getUserNickname", user_email);
	}
	
	//댓글 목록
	public List<UserBoardReplyVO> getUserReplyList(int user_board_num){
		return sql_session.selectList("UserBoard.getUserReplyList", user_board_num);
	}
	
	//댓글 추가
	public void insertUserReply(UserBoardReplyVO userComment) {
		sql_session.insert("UserBoard.insertUserReply", userComment);
	}
	
	//댓글 번호로 댓글 삭제
	public void deleteUserReply(int user_reply_num) {
		sql_session.delete("UserBoard.deleteUserReply", user_reply_num);
	}
	
	//게시글 삭제시 댓글도 같이 삭제
	public void deleteUserReplyAndBoard(int user_board_num) {
		sql_session.delete("UserBoard.deleteUserReplyAndBoard", user_board_num);
	}

	//댓글 수정
	public void updateUserReply(UserBoardReplyVO userComment) {
		sql_session.update("UserBoard.updateUserReply", userComment);
	}
		
}
