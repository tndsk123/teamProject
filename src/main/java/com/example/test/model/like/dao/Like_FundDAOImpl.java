package com.example.test.model.like.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.test.model.fund.dao.FundDAO;
import com.example.test.model.like.dto.Like_FundDTO;

@Repository
public class Like_FundDAOImpl implements Like_FundDAO {

	@Inject
	SqlSession session;
	@Inject
	FundDAO dao;
	
	@Override
	public void like_fund(Like_FundDTO dto) {
		session.insert("like_fund.insert", dto);
	}

	@Override
	@Transactional
	public void cancel_like(Like_FundDTO dto) {
		session.delete("like_fund.delete", dto);
		int bno=dto.getBno();
		try {
			dao.unlike(bno);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public int confirm_like(Like_FundDTO dto) {
		return session.selectOne("like_fund.confirm", dto);
	}
	@Override
	public int count(String userid) {
		return session.selectOne("like_fund.count", userid);
	}
	@Override
	public String user_like(String userid) {
		return session.selectOne("like_fund.user_like", userid);
	}

}
