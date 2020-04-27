package com.example.test.controller.fund;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.test.model.fund.dto.FundDTO;
import com.example.test.model.user.dto.UserDTO;
import com.example.test.service.fund.FundService;

@Controller
@RequestMapping("fund/*")
public class FundController {

	private static final Logger logger =LoggerFactory.getLogger(FundController.class);
	
	@Inject
	FundService fundService;
	
	@RequestMapping("apply_project.do")
	public String apply_project() {
		return "project_write/apply_project";
	}
	
	@RequestMapping("bond_list.do")
	public String bond_list() {
		return "invest/bond/bond_list";
	}
	@RequestMapping("stock_list.do")
	public String stock_list() {
		return "invest/stock/stock_list";
	}
	@RequestMapping("comming_soon_list.do")
	public String comming_soon_list() {
		return "invest/commingsoon/comming_soon_list";
	}
	
	@RequestMapping("invest_detail/{bno}")
	public ModelAndView view(@PathVariable("bno") int bno, HttpSession session) throws Exception {
		FundDTO dto=fundService.view(bno,session);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("invest/invest_detail");
		mav.addObject("list", dto);
		/*
		 * mav.addObject("grade", boardgradeService.list(bno)); mav.addObject("company",
		 * companyService.view(dto.getCompany_name())); mav.addObject("comment",
		 * fundboardService.list(bno)); mav.addObject("count",
		 * fundboardService.count(bno));
		 */
		return mav;
	}
	
	@RequestMapping("buy/{bno}")
	public ModelAndView buy(@PathVariable("bno") int bno, ModelAndView mav, HttpSession session) throws Exception{
		String userid=(String)session.getAttribute("userid");
		/*
		 * UserDTO user_view=userService.user_view(userid); int
		 * grade=user_view.getGrade(); mav.addObject("user_info", user_view);
		 * mav.addObject("list", boardService.view(bno)); mav.addObject("grade",
		 * gradeService.grade_check(grade)); mav.setViewName("board/buy");
		 */
		return mav;
	}
	
	@RequestMapping("invest.do")
	public ModelAndView invest_list(ModelAndView mav) throws Exception{
		mav.addObject("support_list", fundService.supportList());
		mav.addObject("cnt_list", fundService.viewcntList());
		mav.addObject("good_list", fundService.likeList());
		mav.addObject("today_list", fundService.todayList());
		mav.setViewName("invest/invest_list");
		return mav;
	}
	
	@RequestMapping("like_fund.do")
	public String like_fund(int bno, HttpSession session) {
		System.out.println("hi");
		fundService.like(bno, session);
		return "redirect:/fund/invest_detail/"+bno;
	}
}
