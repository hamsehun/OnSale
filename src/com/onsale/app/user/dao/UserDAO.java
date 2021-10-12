package com.onsale.app.user.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.onsale.app.user.vo.UserVO;
import com.onsale.mybatis.config.SqlMapConfig;



public class UserDAO {
		SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
		SqlSession sql_session;
	
	public UserDAO() {
		sql_session = sessionf.openSession(true);
	}
	
	//유저 회원가입
	public void userJoin(UserVO user){
		 sql_session.insert("User.userJoin", user);
	}
	
   //회원정보 수정하기
   //비밀번호와 주소 수정
   public boolean userInfoChange(UserVO user) {
      return (Integer)sql_session.update("User.userInfoChange", user) == 1;
   }
   //비밀번호 수정
   public boolean userPwChange(UserVO user) {
	      return (Integer)sql_session.update("User.userPwChange", user) == 1;
   }
   
   //회원정보 수정시, 비번 중복확인
   public boolean InfoChangeCheckPw(String user_email, String user_pw) {
      HashMap<String, String> map = new HashMap<>();
      map.put("user_email", user_email);
      map.put("user_pw", user_pw);
      return (Integer)sql_session.selectOne("User.InfoChangeCheckPw", map) == 1;
   }
   
   //회원의 모든 정보 가져오기
   public UserVO getuserInfo(String user_email) {
	   return sql_session.selectOne("User.getuserInfo", user_email);
   }
   
	//회원 로그인
	public boolean login_user(String user_email, String user_pw) {
		Map<String, String> login_info = new HashMap<>();
		login_info.put("user_email", user_email);
		login_info.put("user_pw", user_pw);
		return (Integer)(sql_session.selectOne("User.login_user", login_info)) == 1;
	}
	
	//사장님 로그인
	public boolean login_owner(String mart_owner_email, String mart_owner_pw) {
		Map<String, String> login_info = new HashMap<>();
		login_info.put("mart_owner_email", mart_owner_email);
		login_info.put("mart_owner_pw", mart_owner_pw);
		return (Integer)(sql_session.selectOne("User.login_owner", login_info)) == 1;
	}
}
