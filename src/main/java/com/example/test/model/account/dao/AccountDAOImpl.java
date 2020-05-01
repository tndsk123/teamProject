package com.example.test.model.account.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		session.insert("account.append_account", dto);
	}

	@Override
	public List<AccountDTO> account_list(String userid) {
		return session.selectList("account.account_list", userid);
	}

	@Override
	public void delete_account(int cno) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update_account(AccountDTO dto) {
		// TODO Auto-generated method stub

	}
	@Override
	public void buy_fund(int cno, int price) {
		Map<String, Object> map=new HashMap<>();
		map.put("cno", cno);
		map.put("price", price);
		session.update("account.buy_fund", map);
	}
	@Override
	public AccountDTO view(int cno) {
		return session.selectOne("account.view", cno);
	}

}
