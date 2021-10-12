package com.onsale.app.owner.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.onsale.mybatis.config.SqlMapConfig;

public class MartDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;

	public MartDAO() {
			sql_session = sessionf.openSession(true);
		}

}
