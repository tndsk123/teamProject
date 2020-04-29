package com.example.test.controller.fund_board_comment;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.test.controller.fund.FundController;
import com.example.test.service.fund_board_comment.Fund_Board_CommentService;

@Controller
@RequestMapping("fund_board_comment/*")
public class Fund_Board_CommentController {

	private static final Logger logger =LoggerFactory.getLogger(FundController.class);
	
	@Inject
	Fund_Board_CommentService commentService;
}
