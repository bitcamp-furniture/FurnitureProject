package admin.controller;

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

import admin.bean.AdminProductDTO;
import admin.bean.MemberListPaging;
import admin.bean.OrderControlPaging;
import admin.service.AdminProductService;
import member.bean.MemberDTO;

@Controller
@RequestMapping("admin")
public class AdminProductController {
	@Autowired
	AdminProductService adminProductService;
	
	//주문관리 창 띄우기
	@RequestMapping(value = "product/orderControl", method = RequestMethod.GET)
	public String eventList(@RequestParam(required = false, defaultValue = "1") String orderControlPg, Model model) {
		model.addAttribute("orderControlPg", orderControlPg);
		model.addAttribute("display", "/admin/product/orderControl.jsp");

		return "/admin/adminIndex";
	}
	
	//주문목록 띄우기	
	@RequestMapping(value="product/getOrderControl", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getOrderControl(@RequestParam(required = false, defaultValue = "1") String orderControlPg,
		   HttpSession session, HttpServletResponse response) {
		//1페이지당 5개씩
		List<AdminProductDTO> list = adminProductService.getOrderControl(orderControlPg);
		
		//페이징 처리
		OrderControlPaging orderControlPaging = adminProductService.orderControlPaging(orderControlPg);
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("orderControlPaging", orderControlPaging);
		mav.addObject("pg", orderControlPg);
		mav.addObject("list", list);
		
		mav.setViewName("jsonView");
		
		return mav;
	}
	
	//배송준비 버튼 클릭 시
	@RequestMapping(value="product/deliveryReady", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView deliveryReady(@RequestParam String[] check) {
		adminProductService.deliveryReady(check);

		return new ModelAndView("redirect:/admin/product/orderControl");
	}
	
	//입금확인 버튼 클릭 시
	@RequestMapping(value="product/paymentConfirm", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView paymentConfirm(@RequestParam String[] check) {
		adminProductService.paymentConfirm(check);
		
		return new ModelAndView("redirect:/admin/product/orderControl");
	}
	
	//배송중으로 되돌리기
	@RequestMapping(value="product/delivery", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView delivery(@RequestParam String[] check) {
		adminProductService.delivery(check);
		
		return new ModelAndView("redirect:/admin/product/orderControl");
	}
	
	//발송지연 처리
	@RequestMapping(value="product/delay", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView delay(@RequestParam String[] check) {
		adminProductService.delay(check);
		
		return new ModelAndView("redirect:/admin/product/orderControl");
	}

	//판매취소 처리
	@RequestMapping(value="product/cancelSales", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView cancelSales(@RequestParam String[] check) {
		adminProductService.cancelSales(check);
		
		return new ModelAndView("redirect:/admin/product/orderControl");
	}
	
	//주문관련 검색
	@RequestMapping(value="product/getSearchOrderList", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getSearchOrderList(@RequestParam Map map) {
		List<AdminProductDTO> list = adminProductService.getSearchOrderList(map);
		
		//MemberListPaging memberListPaging = adminProductService.memberListSearchPaging(map);
		
		ModelAndView mav = new ModelAndView();
		//mav.addObject("memberListPaging", memberListPaging);
		mav.addObject("orderControlPg", map.get("orderControlPg"));
		mav.addObject("list", list);
		mav.setViewName("jsonView");

		
		return mav;
	}
	

}
