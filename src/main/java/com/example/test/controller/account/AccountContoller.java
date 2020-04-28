package com.example.test.controller.account;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.test.model.account.dto.AccountDTO;
import com.example.test.service.account.AccountService;


@Controller
@RequestMapping("account/*")
public class AccountContoller {

	private static final Logger logger =LoggerFactory.getLogger(AccountContoller.class);
	
	@Inject
	AccountService accountService;
	@Inject
	BCryptPasswordEncoder pwEncoder;
	
	@RequestMapping("append_account.do")
	public String append_account() {
		return "account/append_account";
	}
	
	@RequestMapping("insert_account.do")
	public ModelAndView insert_account(@ModelAttribute AccountDTO dto, HttpSession session) {
		String userid=(String)session.getAttribute("userid");
		dto.setAccount_passwd(pwEncoder.encode(dto.getAccount_passwd()));
		dto.setBuy_passwd(pwEncoder.encode(dto.getBuy_passwd()));
		dto.setUserid(userid);
		ModelAndView mav=new ModelAndView();
		System.out.println(dto);
		accountService.append_account(dto);
		mav.addObject("dto", dto);
		mav.setViewName("account/append_complete");
		return mav;
	}
	
	@RequestMapping("my_account.do")
	public ModelAndView my_account(HttpSession session) {
		String userid=(String)session.getAttribute("userid");
		ModelAndView mav=new ModelAndView();
		mav.setViewName("account/my_account");
		mav.addObject("list", accountService.account_list(userid));
		return mav;
	}
}
