package com.example.test.service.like;

import com.example.test.model.like.dto.Like_FundDTO;

public interface Like_FundService {

	public void like_fund(Like_FundDTO dto);
	public void cancel_like(Like_FundDTO dto);
	public int count(String userid);
	public String user_like(String userid);
	public int confirm_like(Like_FundDTO dto);
}
