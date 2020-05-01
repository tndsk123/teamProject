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
import com.example.test.model.like.dto.Like_FundDTO;
import com.example.test.model.user.dto.UserDTO;
import com.example.test.service.account.AccountService;
import com.example.test.service.coupon.CouponService;
import com.example.test.service.coupon.User_couponService;
import com.example.test.service.fund.FundService;
import com.example.test.service.fund_board.Fund_BoardService;
import com.example.test.service.like.Like_FundService;
import com.example.test.service.user.UserService;

@Controller
@RequestMapping("fund/*")
public class FundController {

	private static final Logger logger =LoggerFactory.getLogger(FundController.class);
	
	@Inject
	FundService fundService;
	@Inject
	Like_FundService like_fundService;
	@Inject
	Fund_BoardService boardService;
	@Inject
	UserService userService;
	@Inject
	AccountService accountService;
	@Inject
	User_couponService couponService;
	
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
		ModelAndView mav=new ModelAndView();
		FundDTO dto=fundService.view(bno,session);
		String userid=(String)session.getAttribute("userid");
		if(userid!=null) {
			Like_FundDTO dto2=new Like_FundDTO();
			dto2.setBno(bno);
			dto2.setUserid(userid);
			int check_like=like_fundService.confirm_like(dto2);
			mav.addObject("check_like", check_like);
		}						
		mav.setViewName("invest/detail/invest_detail");
		mav.addObject("fund_board", boardService.list(bno));
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
		UserDTO user_view=userService.user_view(userid);
		int grade=user_view.getGrade();
		mav.addObject("user_account", accountService.account_list(userid));
		mav.addObject("user_info", user_view);
		mav.addObject("list", fundService.view(bno, session));
		mav.addObject("grade",userService.get_grade(userid));
		mav.addObject("coupon", couponService.view(userid));
		mav.setViewName("invest_buy/invest_buy");		
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
