package com.example.test.model.like.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.test.model.like.dto.Like_FundDTO;

@Repository
public class Like_FundDAOImpl implements Like_FundDAO {

	@Inject
	SqlSession session;
	
	@Override
	public void like_fund(Like_FundDTO dto) {
		session.insert("like_fund.insert", dto);
	}

	@Override
	public void cancel_like(int bno) {
		session.delete("like_fund.delete", bno);
	}
	
	@Override
	public int confirm_like(Like_FundDTO dto) {
		return session.selectOne("like_fund.confirm", dto);
	}
	@Override
	public int count(String userid) {
		return session.selectOne("like_fund.count", userid);
	}

}
