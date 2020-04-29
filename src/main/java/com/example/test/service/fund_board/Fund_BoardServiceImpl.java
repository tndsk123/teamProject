package com.example.test.service.fund_board;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.test.model.fund.dao.Fund_BoardDAO;
import com.example.test.model.fund.dto.Fund_BoardDTO;

@Service
public class Fund_BoardServiceImpl implements Fund_BoardService {

	@Inject
	Fund_BoardDAO dao;
	
	@Override
	public List<Fund_BoardDTO> list(int bno) {
		return dao.list(bno);
	}

	@Override
	public Fund_BoardDTO view(int f_bno) {
		return dao.view(f_bno);
	}

	@Override
	public void insert(Fund_BoardDTO dto) {
		dao.insert(dto);
	}

	@Override
	public void update(Fund_BoardDTO dto) {
		dao.update(dto);
	}

	@Override
	public void delete(int f_bno) {
		dao.delete(f_bno);
	}

}
