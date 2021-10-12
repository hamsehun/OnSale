package com.onsale.app.shopping.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.onsale.app.owner.vo.MartVO;
import com.onsale.app.owner.vo.OwnerVO;
import com.onsale.app.owner.vo.ShopItemVO;
import com.onsale.app.shopping.vo.CartVO;
import com.onsale.mybatis.config.SqlMapConfig;

public class ShoppingDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;

	public ShoppingDAO() {
		sql_session = sessionf.openSession(true);
	}

	// 상품 목록
	public List<ShopItemVO> getList(int startRow, int endRow) {
		Map<String, Integer> pageMap = new HashMap<>();

		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);

		return sql_session.selectList("Shopping.getList", pageMap);
	}
	
	public int getTotal() {
		return sql_session.selectOne("Shopping.getTotal");
	}

	public ShopItemVO getDetail(int shopitem_num) {
		return sql_session.selectOne("Shopping.getDetail", shopitem_num);
	}
	
	public List<Map<String, String>> getPurchase(String user_email) {
		return sql_session.selectList("Shopping.getPurchase", user_email);
	}

//	마트검색
	public List<MartVO> getMartList(String keyword) {
		return sql_session.selectList("Shopping.getMartList", keyword);
	}

	// 로그인한 유저 정보
	public String getNickname(String user_email) {
		return sql_session.selectOne("Shopping.getNickname", user_email);
	}

//  클릭한 마트 상품 목록
	public List<ShopItemVO> getMartItemList(int startRow, int endRow, int martNum) {
		Map<String, Integer> pageMap = new HashMap<>();

		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);
		pageMap.put("martNum", martNum);

		return sql_session.selectList("Shopping.getMartItemList", pageMap);
	}

	public String getMartName(int martNum) {
		return sql_session.selectOne("Shopping.getMartName", martNum);
	}

	public List<ShopItemVO> getItemSearchList(int startRow, int endRow, String martName, String keyword) {
		Map<String, Object> pageMap = new HashMap<>();

		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);
		pageMap.put("martName", martName);
		pageMap.put("keyword", keyword);

		return sql_session.selectList("Shopping.getItemSearchList", pageMap);
	}

	// 유저번호 가져오기
	public int getUserNum(String user_email) {
		return sql_session.selectOne("Shopping.getUserNum", user_email);
	}

	// 장바구니에 담기
	public void cartInput(CartVO vo) {
		sql_session.insert("Shopping.cartInput", vo);
	}

	// 장바구니 목록
	public List<CartVO> cartList(int user_num) {
		return sql_session.selectList("Shopping.cartList", user_num);
	}

	// 재고 갯수 수정
	public void updateStock(ShopItemVO ShopItemVO) {
		sql_session.update("Shopping.updateStock", ShopItemVO);
	}

	// 장바구니 삭제
	public void deleteCart(int cart_num) {
		sql_session.delete("Shopping.deleteCart", cart_num);
	}

	// 장바구니 조회
	public boolean searchCart(CartVO vo) {
		return (Integer) sql_session.selectOne("Shopping.searchCart", vo) == 1;

	}

	// 장바구니에서 아이템 카운트 가져요기
	public int getItemCnt(CartVO vo) {
		return sql_session.selectOne("Shopping.getItemCnt", vo);
	}

	// 장바구니에 카운트 업데이트
	public void addCartNum(CartVO vo) {
		sql_session.update("Shopping.addCartNum", vo);
	}

//	지역 선택
	public List<MartVO> getChoiceAreaList(String area){
		return sql_session.selectList("Shopping.getChoiceAreaList", area);
	}
	
//	재난 지원금
	public List<MartVO> getCovidList(String area){
		return sql_session.selectList("Shopping.getCovidList",area);
	}
	
//	최신 등록순
	public List<MartVO> getUpdateList(String area){
		return sql_session.selectList("Shopping.getUpdateList",area);
	}
	public OwnerVO getownerInfo(String mart_owner_email) {
		return sql_session.selectOne("Owner.getownerInfo", mart_owner_email);
	}
	
}
