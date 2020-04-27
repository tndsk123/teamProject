package com.example.test.service.account;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.test.model.account.dao.AccountDAO;
import com.example.test.model.account.dto.AccountDTO;

@Service
public class AccountServiceImpl implements AccountService {

	@Inject
	AccountDAO dao;
	
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
