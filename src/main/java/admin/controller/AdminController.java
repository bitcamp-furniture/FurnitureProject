package admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import furniture.bean.ReviewDTO;
import furniture.service.FurnitureService;

import admin.bean.MemberListPaging;
import admin.service.AdminService;
import member.bean.MemberDTO;
import profile.bean.AskDTO;
import profile.bean.OrderDTO;


@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	FurnitureService furnitureService;
	@Autowired
	AdminService adminService;
	
	//관리자페이지 창 띄우기
	@RequestMapping(value="/adminIndex", method=RequestMethod.GET)
	public String joinPage() {
		return "/admin/adminIndex";
	}
	
	//memberList 창 띄우기
	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String eventList(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/admin/memberList.jsp");

		return "/admin/adminIndex";
	}
	
	//memberList 데이터 가져오기
	@RequestMapping(value="/getMemberList", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getMemberList(@RequestParam(required = false, defaultValue = "1") String pg,
		   HttpSession session, HttpServletResponse response) {
		//1페이지당 5개씩
		List<MemberDTO> list = adminService.getMemberList(pg);
		
		//페이징 처리
		MemberListPaging memberListPaging = adminService.memberListPaging(pg);
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("memberListPaging", memberListPaging);
		mav.addObject("pg", pg);
		mav.addObject("list", list);
		
		mav.setViewName("jsonView");
		
		return mav;
	}
	
	//회원목록 검색
	@RequestMapping(value="/getSearchMemberList", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getSearchMemberList(@RequestParam Map map) {
		
		List<MemberDTO> list = adminService.getSearchMemberList(map);
		
		MemberListPaging memberListPaging = adminService.memberListSearchPaging(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("memberListPaging", memberListPaging);
		mav.addObject("pg", map.get("pg"));
		mav.addObject("list", list);
		mav.setViewName("jsonView");

		
		return mav;
	}
	
	//회원 삭제
	@RequestMapping(value="/memberListDelete", method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView memberListDelete(@RequestParam String[] check) {
		adminService.memberListDelete(check);
		
		return new ModelAndView("redirect:/admin/memberList");
	}	

	// 대시보드 ... 최신 리뷰, 문의 n건씩
	@RequestMapping(value="/getRecentList", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getRecentList() {
		List<ReviewDTO> lastReviewList = adminService.getRecentReviewList();
		List<AskDTO> lastQnAList = adminService.getRecentQnAList();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("lastReviewList", lastReviewList);
		mav.addObject("lastQnAList", lastQnAList);
		mav.setViewName("jsonView");

		return mav;
	}
	

	// 라인 차트그리기 : 주문
	// 바 차트 :  매출
	// 도넛차트 : 카테고리중에서 매출이 높은 순
	@RequestMapping(value = "/orderChart")
	@ResponseBody
	 public ModelAndView orderChart(Model model) {
   
		List<String> orderDay = adminService.orderDay();	 
		List<Integer> orderCount = adminService.orderCount();	 
		List<Integer> orderSales = adminService.orderSales();
		List<String> orderCateName = adminService.orderCateName();	
		List<Integer> orderCateSales = adminService.orderCateSales();	 
		
		ModelAndView mav = new ModelAndView();
		//주문날짜
		mav.addObject("orderDay", orderDay);
		//주문 건수
		mav.addObject("orderCount", orderCount);
		// 일별 주문 매출
		mav.addObject("orderSales", orderSales);
		//카테고리별 매출
		mav.addObject("orderCateName",orderCateName);
		mav.addObject("orderCateSales",orderCateSales);
		mav.setViewName("jsonView");
		
		return mav;
	  }	
	
}

