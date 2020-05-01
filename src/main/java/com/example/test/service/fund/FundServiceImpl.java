package com.example.test.service.fund;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.test.model.fund.dao.FundDAO;
import com.example.test.model.fund.dto.FundDTO;
import com.example.test.model.like.dao.Like_FundDAO;
import com.example.test.model.like.dto.Like_FundDTO;

@Service
public class FundServiceImpl implements FundService {

	@Inject
	FundDAO fundDao;
	@Inject
	Like_FundDAO likeDao;
	
	@Override
	public List<FundDTO> supportList() throws Exception {
		return fundDao.supportList();
	}

	@Override
	public List<FundDTO> likeList() throws Exception {
		return fundDao.likeList();
	}

	@Override
	public List<FundDTO> viewcntList() throws Exception {
		return fundDao.viewcntList();
	}

	@Override
	public List<FundDTO> todayList() throws Exception {
		return fundDao.todayList();
	}
	@Override
	@Transactional
	public FundDTO view(int bno, HttpSession session) throws Exception {
		increateViewcnt(bno, session);
		return fundDao.view(bno);
	}
	@Override
	public void increateViewcnt(int bno, HttpSession session) throws Exception {
		long cnt_update_time=0;
		String userid=(String)session.getAttribute("userid");
		if(session.getAttribute("cnt_update_time_"+bno+userid) != null) {
			//최근에 조회수를 올린 시간
			cnt_update_time=(long)session.getAttribute("cnt_update_time_"+bno+userid);
		}
		long current_time=System.currentTimeMillis();
		//일정 시간(10초)이 경과후 조회수 증가 처리
		if(current_time - cnt_update_time > 10*1000) {
			fundDao.increateViewcnt(bno);
			session.setAttribute("cnt_update_time_"+bno+userid, current_time);
		}	
		
	}
	
	@Override
	@Transactional
	public void like(int bno, HttpSession session){
		Like_FundDTO dto=new Like_FundDTO();
		dto.setBno(bno);
		String userid=(String)session.getAttribute("userid");
		dto.setUserid(userid);
		int result=likeDao.confirm_like(dto);
		if(result==0) {
			likeDao.like_fund(dto);		
			try {
				fundDao.like(bno);
			} catch (Exception e) {
				e.printStackTrace();
			}			
		}else {
			likeDao.cancel_like(dto);
		}	
	}
	@Override
	public List<FundDTO> like_fund(String bno) throws Exception {
		return fundDao.like_fund(bno);
	}
	@Override
	public void buy_fund(int bno, int now_fund) throws Exception {
		fundDao.buy_fund(bno, now_fund);
	}

}
