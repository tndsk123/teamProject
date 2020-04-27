package com.example.test.controller.account;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.test.service.account.AccountService;


@Controller
@RequestMapping("account/*")
public class AccountContoller {

	private static final Logger logger =LoggerFactory.getLogger(AccountContoller.class);
	
	@Inject
	AccountService accountService;
	
	@RequestMapping("append_account.do")
	public String append_account() {
		return "account/append_account";
	}
}
