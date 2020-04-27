package com.example.test.model.account.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.test.model.account.dto.AccountDTO;

@Repository
public class AccountDAOImpl implements AccountDAO {

	@Inject
	SqlSession session;
	
	@Override
	public void append_account(AccountDTO dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<AccountDTO> account_list(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete_account(int cno) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update_account(AccountDTO dto) {
		// TODO Auto-generated method stub

	}

}
