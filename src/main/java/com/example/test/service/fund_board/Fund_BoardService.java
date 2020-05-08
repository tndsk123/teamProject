package com.example.test.service.fund_board;

import java.util.List;

import com.example.test.model.fund.dto.Fund_BoardDTO;

public interface Fund_BoardService {

	public List<Fund_BoardDTO> list(int bno);
	public Fund_BoardDTO view(int f_bno);
	public void insert(Fund_BoardDTO dto);
	public void update(Fund_BoardDTO dto);
	public void delete(int f_bno);
	public int count(int bno);
}
