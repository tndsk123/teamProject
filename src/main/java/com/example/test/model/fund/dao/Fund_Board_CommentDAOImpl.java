package com.example.test.model.fund.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.test.model.fund.dto.Fund_Board_CommentDTO;

@Repository
public class Fund_Board_CommentDAOImpl implements Fund_Board_CommentDAO {

	@Inject
	SqlSession session;
	
	@Override
	public List<Fund_Board_CommentDTO> list(int f_bno) {
		return session.selectList("fund_board_comment.list", f_bno);
	}

	@Override
	public void insert(Fund_Board_CommentDTO dto) {
		session.insert("fund_board_comment.insert", dto);
	}

	@Override
	public void update(Fund_Board_CommentDTO dto) {
		session.update("fund_board_comment.update", dto);
	}

	@Override
	public void delete(int c_fno) {
		session.update("fund_board_comment.delete", c_fno);
	}

}
