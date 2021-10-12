package com.onsale.app.shopping.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.onsale.app.shopping.vo.ItemReviewVO;
import com.onsale.mybatis.config.SqlMapConfig;

public class ItemReviewDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;

	public ItemReviewDAO() {
		sql_session = sessionf.openSession(true);
	}
	//리뷰 추가
	public void insertReview(ItemReviewVO review) {
		sql_session.insert("ItemReview.insertReview", review);
	}
		
	//리뷰 목록
	public List<ItemReviewVO> getReviewList(int shopitem_num){
		return sql_session.selectList("ItemReview.getReviewList", shopitem_num);
	}
	//리뷰삭제
	public void deleteReview(int review_num) {
		sql_session.delete("ItemReview.deleteReview", review_num);
	}
	//리뷰 수정
	public void updateReview(ItemReviewVO review) {
		sql_session.update("ItemReview.updateReview", review);
	}
		
}
