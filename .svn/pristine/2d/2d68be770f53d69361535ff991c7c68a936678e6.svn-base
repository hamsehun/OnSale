package com.onsale.app.owner.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.onsale.app.owner.vo.MartVO;
import com.onsale.app.owner.vo.OwnerVO;
import com.onsale.mybatis.config.SqlMapConfig;

public class OwnerDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;

	public OwnerDAO() {
		sql_session = sessionf.openSession(true);
	}

	// 사장님 회원가입
	public void ownerJoin(OwnerVO owner) {
		sql_session.insert("Owner.ownerJoin", owner);
	}
	//마트 추가
	public void addMart(MartVO mart) {
		sql_session.insert("Owner.addMart", mart);
	}
	// 회원정보 수정하기
	// 비밀번호와 주소 수정
	public boolean ownerInfoChange(OwnerVO owner) {
		return (Integer) sql_session.update("Owner.ownerInfoChange", owner) == 1;
	}

	// 비밀번호 수정
	public boolean ownerPwChange(OwnerVO owner) {
		return (Integer) sql_session.update("Owner.ownerPwChange", owner) == 1;
	}

	// 회원정보 수정시, 비번 중복확인
	public boolean ownerInfoChangeCheckPw(String mart_owner_email, String mart_owner_pw) {
		HashMap<String, String> map = new HashMap<>();
		map.put("mart_owner_email", mart_owner_email);
		map.put("mart_owner_pw", mart_owner_pw);
		return (Integer) sql_session.selectOne("Owner.ownerInfoChangeCheckPw", map) == 1;
	}

	// 회원의 모든 정보 가져오기
	public OwnerVO getownerInfo(String mart_owner_email) {
		return sql_session.selectOne("Owner.getownerInfo", mart_owner_email);
	}

	// 오너 번호로 마켓 정보 가져오기
	public MartVO getAddedMartList(String mart_owner_num) {
		return sql_session.selectOne("Owner.getAddedMartList", mart_owner_num);
	}
	
	//마트 삭제
	public void deleteMart(int mart_num) {
		sql_session.delete("Owner.deleteMart", mart_num);
	}
	//마트 정보 수정
	public boolean updateMartDetail(MartVO mart) {
		return (Integer) sql_session.update("Owner.updateMartDetail", mart) == 1;
	}
}
