package com.example.test.service.like;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.test.model.like.dao.Like_FundDAO;
import com.example.test.model.like.dto.Like_FundDTO;

@Service
public class Like_FundServiceImpl implements Like_FundService {

	@Inject
	Like_FundDAO dao;
	
	@Override
	public void like_fund(Like_FundDTO dto) {
		dao.like_fund(dto);
	}

	@Override
	public void cancel_like(int bno) {
		dao.cancel_like(bno);
	}
	@Override
	public int count(String userid) {
		return dao.count(userid);
	}
}
