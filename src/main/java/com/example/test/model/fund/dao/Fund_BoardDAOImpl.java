package com.example.test.model.fund.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.test.model.fund.dto.Fund_BoardDTO;

@Repository
public class Fund_BoardDAOImpl implements Fund_BoardDAO {

	@Inject
	SqlSession session;
	
	@Override
	public List<Fund_BoardDTO> list(int bno) {
		return session.selectList("fund_board.list", bno);
	}

	@Override
	public Fund_BoardDTO view(int f_bno) {
		return session.selectOne("fund_board.view", f_bno);
	}

	@Override
	public void insert(Fund_BoardDTO dto) {
		session.insert("fund_board.insert", dto);
	}

	@Override
	public void update(Fund_BoardDTO dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int f_bno) {
		// TODO Auto-generated method stub

	}
	@Override
	public int count(int bno) {
		return session.selectOne("fund_board.count", bno);
	}

}
