package com.example.test.controller.user_like;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.test.model.like.dto.Like_FundDTO;
import com.example.test.service.fund.FundService;
import com.example.test.service.like.Like_FundService;

@Controller
@RequestMapping("user_like/*")
public class User_likeController {
	
	private static final Logger logger =LoggerFactory.getLogger(User_likeController.class);
	
	@Inject
	Like_FundService likeService;
	@Inject
	FundService fundService;
	
	@RequestMapping("user_like.do")
	public ModelAndView user_like(HttpSession session) throws Exception {
		ModelAndView mav=new ModelAndView();
		String userid=(String)session.getAttribute("userid");
		String bno=likeService.user_like(userid);
		mav.addObject("list", fundService.like_fund(bno));
		mav.setViewName("user/user_like_fund");
		return mav;
	}
	
	@RequestMapping("user_unlike.do")
	public ModelAndView user_unlike(int bno, HttpSession session) {
		ModelAndView mav=new ModelAndView();
		String userid=(String)session.getAttribute("userid");
		Like_FundDTO dto=new Like_FundDTO();
		dto.setUserid(userid);
		dto.setBno(bno);
		likeService.cancel_like(dto);
		mav.addObject("a", "a");
		mav.setViewName("redirect:/user_like/user_like.do");
		return mav;
	}
	
}
