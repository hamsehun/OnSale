package com.onsale.app.martsearch.dao;

import java.util.List;

import javax.websocket.OnError;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.onsale.app.board.vo.OwnerBoardVO;
import com.onsale.app.owner.vo.MartVO;
import com.onsale.app.owner.vo.ShopItemVO;
import com.onsale.mybatis.config.SqlMapConfig;

public class MartsearchDAO {

	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;

	public MartsearchDAO() {
		sql_session = sessionf.openSession(true);
	}
	
//	지역 선택
	public List<MartVO> getChoiceAreaList(String area){
		return sql_session.selectList("MartSearch.getChoiceAreaList", area);
	}
	
//	재난 지원금
	public List<MartVO> getCovidList(String area){
		return sql_session.selectList("MartSearch.getCovidList",area);
	}
	
//	최신 등록순
	public List<MartVO> getUpdateList(String area){
		return sql_session.selectList("MartSearch.getUpdateList",area);
	}
	
//	배달 여부
	public List<MartVO> getDeliveryList(String area){
		return sql_session.selectList("MartSearch.getDeliveryList",area);
	}
	
//	마트 정보
	public MartVO getMartInfo(int mart_num) {
		return sql_session.selectOne("MartSearch.getMartInfo", mart_num);
	}
	
	public List<ShopItemVO> getMartItems(int mart_num) {
		return sql_session.selectList("MartSearch.getMartItems", mart_num);
	}
	
	public List<OwnerBoardVO> getMartBoard(String mart_name){
		return sql_session.selectList("MartSearch.getMartBoard", mart_name);
	}
	
//	안쓰는거
/*	public List<MartVO> getAllUpdateList(){
		return sql_session.selectList("MartSearch.getAllUpdateList");
	}
	
	public List<MartVO> getAllCovidList(){
		return sql_session.selectList("MartSearch.getAllCovidList");
	}
	
	public List<MartVO> getAllDeliveryList(){
		return sql_session.selectList("MartSearch.getAllDeliveryList");
	}
	
	public List<MartVO> getAllMartList(){
		return sql_session.selectList("MartSearch.getAllMartList");
	}*/
}
