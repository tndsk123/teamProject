package com.example.test.model.like.dao;

import com.example.test.model.like.dto.Like_FundDTO;

public interface Like_FundDAO {

	public void like_fund(Like_FundDTO dto);
	public void cancel_like(int bno);
	public int confirm_like(Like_FundDTO dto);
	public int count(String userid);
}
