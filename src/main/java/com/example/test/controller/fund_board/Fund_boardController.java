package com.example.test.controller.fund_board;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.test.controller.fund.FundController;
import com.example.test.model.fund.dto.Fund_BoardDTO;
import com.example.test.model.grade.dto.GradeDTO;
import com.example.test.service.fund_board.Fund_BoardService;
import com.example.test.service.fund_board_comment.Fund_Board_CommentService;
import com.example.test.service.user.UserService;

@Controller
@RequestMapping("fund_board/*")
public class Fund_boardController {

	private static final Logger logger =LoggerFactory.getLogger(FundController.class);
	
	@Inject
	Fund_BoardService boardService;
	@Inject
	Fund_Board_CommentService commentService;
	@Inject
	UserService userService;
	

	@RequestMapping("view.do")
	@ResponseBody
	public Fund_BoardDTO view(@RequestParam("f_bno") int f_bno) {
//		ModelAndView mav=new ModelAndView();
//		mav.addObject("dto", boardService.view(f_bno));
//		mav.addObject("comment", commentService.list(f_bno));
		return boardService.view(f_bno);
	}
	
	@RequestMapping("insert.do")
	public ModelAndView insert(@ModelAttribute Fund_BoardDTO dto,HttpSession session) {
		ModelAndView mav=new ModelAndView();
		String userid=(String)session.getAttribute("userid");
		GradeDTO dto2=userService.get_grade(userid);
		String grade1=dto2.getDivision();
		String grade2=dto2.getGrade();
		String writer_grade=grade1+" / "+grade2;
		dto.setWriter_grade(writer_grade);
		boardService.insert(dto);
		mav.addObject("message", "success");
		mav.setViewName("redirect:/fund/invest_detail/"+dto.getBno());
		return mav;
	}
}
