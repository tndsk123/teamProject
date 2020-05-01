package com.example.test.controller.user_fund;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.test.model.coupon.dto.User_couponDTO;
import com.example.test.model.user_fund.dto.UserFundDTO;
import com.example.test.service.account.AccountService;
import com.example.test.service.coupon.User_couponService;
import com.example.test.service.fund.FundService;
import com.example.test.service.user.UserService;
import com.example.test.service.user_fund.UserFundService;

@Controller
@RequestMapping("user_fund/*")
public class User_fundController {

	private static final Logger logger =LoggerFactory.getLogger(User_fundController.class);
	
	@Inject
	FundService fundService;
	@Inject
	UserService userService;
	@Inject
	AccountService accountService;
	@Inject
	User_couponService couponService;
	@Inject
	UserFundService userfundService;
	
	@RequestMapping("buy.do")
	public ModelAndView buy(@ModelAttribute UserFundDTO dto, HttpSession session, @RequestParam("cou_no") int cou_no,@RequestParam("cno") int cno) throws Exception{
		ModelAndView mav = new ModelAndView();
		String userid=(String)session.getAttribute("userid");
		if(cou_no!=0) {
			User_couponDTO dto2=new User_couponDTO();
			dto2.setUserid(userid);
			dto2.setCou_no(cou_no);
			couponService.delete_coupon(dto2);
			fundService.buy_fund(dto.getBno(),dto.getNow_fund());
		}else {
			fundService.buy_fund(dto.getBno(),(dto.getNow_fund()+dto.getDiscount()));
		}
		dto.setUserid(userid); 
		accountService.buy_fund(cno,dto.getNow_fund()); 
		userfundService.fund_buy(dto);		
		mav.addObject("dto", dto);
		mav.addObject("account", accountService.view(cno));
		mav.setViewName("invest_buy/buy_success");		
		return mav;
	}
	@RequestMapping("my_fund.do")
	public ModelAndView my_fund(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String userid=(String)session.getAttribute("userid");
		mav.addObject("dto",userfundService.fund_view(userid));
		mav.setViewName("user_fund/my_fund");		
		return mav;
	}
}
