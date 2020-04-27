package com.example.test.service.like;

import java.util.List;

import com.example.test.model.like.dto.Like_FundDTO;

public interface Like_FundService {

	public void like_fund(Like_FundDTO dto);
	public void cancel_like(int bno);
	public int count(String userid);
	/* public List<E> like_list(); */ 
}
