package com.example.test.service.fund_board_comment;

import java.util.List;

import com.example.test.model.fund.dto.Fund_Board_CommentDTO;

public interface Fund_Board_CommentService {

	public List<Fund_Board_CommentDTO> list(int bno);
	public void insert(Fund_Board_CommentDTO dto);
	public void update(Fund_Board_CommentDTO dto);
	public void delete(int c_fno);
}
