package com.example.test.model.fund.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.test.model.fund.dto.FundDTO;

@Repository
public class FundDAOImpl implements FundDAO {

	@Inject
	SqlSession session;
	
	@Override
	public List<FundDTO> supportList() throws Exception {
		return session.selectList("fund.supportList");
	}

	@Override
	public List<FundDTO> likeList() throws Exception {
		return session.selectList("fund.likeList");
	}

	@Override
	public List<FundDTO> viewcntList() throws Exception {
		return session.selectList("fund.viewcntList");
	}

	@Override
	public List<FundDTO> todayList() throws Exception {
		return session.selectList("fund.todayList");
	}
	@Override
	public void increateViewcnt(int bno) throws Exception {
		session.update("fund.increateViewcnt", bno);	
	}
	@Override
	public FundDTO view(int bno) throws Exception {
		return session.selectOne("fund.view", bno);
	}
	@Override
	public void like(int bno) throws Exception {
		session.update("fund.like", bno);		
	}
	@Override
	public void unlike(int bno) throws Exception {
		session.update("fund.unlike", bno);
	}
	@Override
	public List<FundDTO> like_fund(String bno_list) throws Exception {
		Map<String, Object> map=new HashMap<>();
		map.put("bno_list", bno_list);
		return session.selectList("fund.like_fund", map);
	}
}
