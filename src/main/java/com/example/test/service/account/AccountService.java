package com.example.test.service.account;

import java.util.List;

import com.example.test.model.account.dto.AccountDTO;

public interface AccountService {

	public void append_account(AccountDTO dto);
	public List<AccountDTO> account_list(String userid);
	public void delete_account(int cno);
	public void update_account(AccountDTO dto);
	public void buy_fund(int cno, int price);
	public AccountDTO view(int cno);
}
