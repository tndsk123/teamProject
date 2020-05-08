package com.example.test.service.user_fund;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.test.model.user.dao.UserDAO;
import com.example.test.model.user_fund.dao.UserFundDAO;
import com.example.test.model.user_fund.dto.UserFundDTO;

@Service
public class UserFundServiceImpl implements UserFundService {

	@Inject
	UserFundDAO dao;
	@Inject
	UserDAO userDao;
	
	@Override
	@Transactional
	public void fund_buy(UserFundDTO dto) {
		dao.fund_buy(dto);
		String userid=dto.getUserid();
		userDao.update_fund(userid);
	}

	@Override
	public List<UserFundDTO> fund_view(String userid) {
		return dao.fund_view(userid);
	}
	@Override
	public List<UserFundDTO> company_fund(int bno) {
		return dao.company_fund(bno);
	}
	@Override
	public int count(int bno) {
		return dao.count(bno);
	}

}
