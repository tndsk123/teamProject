package com.example.test.controller.fund;

import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.test.model.company.dto.CompanyDTO;
import com.example.test.model.fund.dto.FundDTO;
import com.example.test.model.like.dto.Like_FundDTO;
import com.example.test.model.user.dto.UserDTO;
import com.example.test.service.account.AccountService;
import com.example.test.service.company.CompanyService;
import com.example.test.service.coupon.User_couponService;
import com.example.test.service.fund.FundService;
import com.example.test.service.fund_board.Fund_BoardService;
import com.example.test.service.like.Like_FundService;
import com.example.test.service.user.UserService;
import com.example.test.service.user_fund.UserFundService;

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
	UserFundService userfundService;
	@Inject
	AccountService accountService;
	@Inject
	User_couponService couponService;
	@Inject
	CompanyService companyService;
	@Resource(name="uploadPath_company")
	String uploadPath_company;
	
	@RequestMapping("apply_project.do")
	public String apply_project() {
		return "project_write/apply_project";
	}
	@RequestMapping("append_project.do")
	public String append_project() {
		return "project_write/append_project";
	}
	@RequestMapping("companyinformation.do")
	public String companyinformation() {
		return "project_write/companyinformation";
	}
	@RequestMapping("project_info.do")
	public String project_info() {
		return "project_write/project_info";
	}
	@RequestMapping("project_coreinfo.do")
	public String project_coreinfo() {
		return "project_write/project_coreinfo";
	}
	@RequestMapping("append_company.do")
	public ModelAndView append_company(@ModelAttribute CompanyDTO dto) throws Exception{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("project_write/append_project");
		System.out.println(dto);
		//companyService.insert(dto, session);
		return mav;
	}
	String uploadFile(String originalName, byte[] fileData) throws Exception {
		UUID uid=UUID.randomUUID();
		String savedName=uid.toString()+"_"+originalName;
		File target=new File(uploadPath_company, savedName);
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}
	
	@RequestMapping("bond_list.do")
	public ModelAndView bond_list() throws Exception {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("invest/bond/bond_list");
		mav.addObject("invest_list", fundService.investList());
		mav.addObject("open_invest_list", fundService.open_investList());
		return mav;
	}
	@RequestMapping("stock_list.do")
	public ModelAndView stock_list() throws Exception {
		ModelAndView mav=new ModelAndView();
		mav.addObject("stock_list", fundService.stockList());
		mav.addObject("open_stock_list", fundService.open_stockList());
		mav.setViewName("invest/stock/stock_list");
		return mav;
	}
	@RequestMapping("comming_soon_list.do") 
	public ModelAndView comming_soon_list() throws Exception{
		ModelAndView mav=new ModelAndView();
		mav.setViewName("invest/commingsoon/comming_soon_list");
		mav.addObject("open_list", fundService.openList());
		return mav;
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
		mav.addObject("fund_count", boardService.count(bno));
		mav.addObject("support_count", userfundService.count(bno));
		mav.addObject("user_fund", userfundService.company_fund(bno));
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
		mav.addObject("open_list", fundService.openList());
		mav.addObject("stock_list", fundService.stockList());
		mav.addObject("invest_list", fundService.investList());
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
