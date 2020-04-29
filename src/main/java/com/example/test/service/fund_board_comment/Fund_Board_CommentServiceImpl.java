package com.example.test.service.fund_board_comment;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.test.model.fund.dao.Fund_Board_CommentDAO;
import com.example.test.model.fund.dto.Fund_Board_CommentDTO;

@Service
public class Fund_Board_CommentServiceImpl implements Fund_Board_CommentService {

	@Inject
	Fund_Board_CommentDAO dao;
	
	@Override
	public List<Fund_Board_CommentDTO> list(int f_bno) {
		return dao.list(f_bno);
	}

	@Override
	public void insert(Fund_Board_CommentDTO dto) {
		dao.insert(dto);
	}

	@Override
	public void update(Fund_Board_CommentDTO dto) {
		dao.update(dto);
	}

	@Override
	public void delete(int c_fno) {
		dao.delete(c_fno);
	}

}
