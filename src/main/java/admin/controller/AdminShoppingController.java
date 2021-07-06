package admin.controller;

import java.util.List;

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

import admin.bean.MemberListPaging;
import admin.service.AdminProductService;
import member.bean.MemberDTO;

@Controller
@RequestMapping("admin")
public class AdminShoppingController {
	@Autowired
	AdminProductService adminProductService;
	
	//주문관리 창 띄우기
	@RequestMapping(value = "product/orderControl", method = RequestMethod.GET)
	public String eventList(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/admin/product/orderControl.jsp");

		return "/admin/adminIndex";
	}
	
	//주문목록 띄우기	//실험
	@RequestMapping(value="/getOrderControl", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getMemberList(@RequestParam(required = false, defaultValue = "1") String pg,
		   HttpSession session, HttpServletResponse response) {
		//1페이지당 5개씩
		List<MemberDTO> list = adminProductService.getMemberList(pg);
		
		//페이징 처리
		MemberListPaging memberListPaging = adminProductService.memberListPaging(pg);
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("memberListPaging", memberListPaging);
		mav.addObject("pg", pg);
		mav.addObject("list", list);
		
		mav.setViewName("jsonView");
		
		return mav;
	}
	

}
