package com.example.test.model.fund.dao;

import java.util.List;

import com.example.test.model.fund.dto.Fund_BoardDTO;

public interface Fund_BoardDAO {

	public List<Fund_BoardDTO> list(int bno);
	public Fund_BoardDTO view(int f_bno);
	public void insert(Fund_BoardDTO dto);
	public void update(Fund_BoardDTO dto);
	public void delete(int f_bno);
	public int count(int bno);
}
