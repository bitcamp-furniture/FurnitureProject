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
import admin.bean.DeliverCompletePaging;
import admin.bean.DeliveryPaging;
import admin.bean.DuringDeliverPaging;
import admin.bean.MemberListPaging;
import admin.bean.OrderCanclePaging;
import admin.bean.OrderControlPaging;
import admin.bean.PurchaseConfirmedPaging;
import admin.service.AdminProductService;
import member.bean.MemberDTO;

@Controller
@RequestMapping("admin")
public class AdminProductController {
	@Autowired
	AdminProductService adminProductService;
	
	//주문관리 창 띄우기
	@RequestMapping(value = "product/orderControl", method = RequestMethod.GET)
	public String eventList(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/admin/product/orderControl.jsp");

		return "/admin/adminIndex";
	}
	
	//테이블 데이터 뿌리기
	//신규주문 테이블 띄우기	
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
		mav.addObject("orderControlPg", orderControlPg);
		mav.addObject("list", list);
		
		mav.setViewName("jsonView");
		
		return mav;
	}
	
	//배송준비중 테이블 띄우기	
	@RequestMapping(value="product/getDeliveryReady", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getdeliveryReady(@RequestParam(required = false, defaultValue = "1") String deliveryPg,
		   HttpSession session, HttpServletResponse response) {
		//1페이지당 5개씩
		List<AdminProductDTO> list = adminProductService.getDeliveryReady(deliveryPg);
		
		//페이징 처리
		DeliveryPaging deliveryPaging = adminProductService.deliveryPaging(deliveryPg);
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("deliveryPaging", deliveryPaging);
		mav.addObject("deliveryPg", deliveryPg);
		mav.addObject("list", list);
		
		mav.setViewName("jsonView");
		
		return mav;
	}
	
	//배송중 테이블 띄우기	
	@RequestMapping(value="product/getDuringDeliver", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getduringDeliver(@RequestParam(required = false, defaultValue = "1") String duringDeliverPg,
		   HttpSession session, HttpServletResponse response) {
		//1페이지당 5개씩
		List<AdminProductDTO> list = adminProductService.getduringDeliver(duringDeliverPg);
		
		//페이징 처리
		DuringDeliverPaging duringDeliverPaging = adminProductService.duringDeliverPaging(duringDeliverPg);
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("duringDeliverPaging", duringDeliverPaging);
		mav.addObject("duringDeliverPg", duringDeliverPg);
		mav.addObject("list", list);
		
		mav.setViewName("jsonView");
		
		return mav;
	}
	
	//배송완료 테이블 띄우기	
	@RequestMapping(value="product/getDeliverComplete", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getDeliverComplete(@RequestParam(required = false, defaultValue = "1") String deliverCompletePg,
		   HttpSession session, HttpServletResponse response) {
		//1페이지당 5개씩
		List<AdminProductDTO> list = adminProductService.getDeliverComplete(deliverCompletePg);
		
		//페이징 처리
		DeliverCompletePaging deliverCompletePaging = adminProductService.deliverCompletePaging(deliverCompletePg);
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("deliverCompletePaging", deliverCompletePaging);
		mav.addObject("pg", deliverCompletePg);
		mav.addObject("list", list);
		
		mav.setViewName("jsonView");
		
		return mav;
	}
	
	//취소처리 테이블 띄우기	
	@RequestMapping(value="product/getOrderCancle", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getOrderCancle(@RequestParam(required = false, defaultValue = "1") String orderCanclePg,
		   HttpSession session, HttpServletResponse response) {
		//1페이지당 5개씩
		List<AdminProductDTO> list = adminProductService.getOrderCancle(orderCanclePg);
		
		//페이징 처리
		OrderCanclePaging orderCanclePaging = adminProductService.orderCanclePaging(orderCanclePg);
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("orderCanclePaging", orderCanclePaging);
		mav.addObject("pg", orderCanclePg);
		mav.addObject("list", list);
		
		mav.setViewName("jsonView");
		
		return mav;
	}
	
	//구매확정 테이블 띄우기	
	@RequestMapping(value="product/getPurchaseConfirmed", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getPurchaseConfirmed(@RequestParam(required = false, defaultValue = "1") String purchaseConfirmedPg,
		   HttpSession session, HttpServletResponse response) {
		//1페이지당 5개씩
		List<AdminProductDTO> list = adminProductService.getPurchaseConfirmed(purchaseConfirmedPg);
		
		//페이징 처리
		PurchaseConfirmedPaging purchaseConfirmedPaging = adminProductService.purchaseConfirmedPaging(purchaseConfirmedPg);
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("purchaseConfirmedPaging", purchaseConfirmedPaging);
		mav.addObject("pg", purchaseConfirmedPg);
		mav.addObject("list", list);
		
		mav.setViewName("jsonView");
		
		return mav;
	}

	//----------------------------------------------------------------------------------------------------------------
	//운송장 발송 버튼 클릭 시
	@RequestMapping(value="product/invoice", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView invoice(@RequestParam Map map) {		
		System.out.println(map);
		adminProductService.invoice(map);
		
		return new ModelAndView("redirect:/admin/product/orderControl");
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
	
	//발송완료 처리
	@RequestMapping(value="product/deliveryComplete", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView deliveryComplete(@RequestParam String[] check) {
		adminProductService.deliveryComplete(check);
		
		return new ModelAndView("redirect:/admin/product/orderControl");
	}
	
	//구매확정 처리
	@RequestMapping(value="product/purchaseConfirmed", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView purchaseConfirmed(@RequestParam String[] check, @RequestParam Map map) {
		adminProductService.purchaseConfirmed(check);
		adminProductService.memberCumulativerAmount(map);
		
		System.out.println(map);
		
		return new ModelAndView("redirect:/admin/product/orderControl");
	}
	
	//주문관련 검색
	@RequestMapping(value="product/getSearchOrderList", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getSearchOrderList(@RequestParam Map<String, String> map) {
		List<AdminProductDTO> list = adminProductService.getSearchOrderList(map);
		
		OrderControlPaging orderControlPaging = adminProductService.searchOrderControlPaging(map);

		
		ModelAndView mav = new ModelAndView();
		mav.addObject("orderControlPaging",orderControlPaging);
		mav.addObject("orderControlPg", map.get("orderControlPg"));
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		
		return mav;
	}
	@RequestMapping(value="product/getSearchDeliveryReady", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getSearchDeliveryReady(@RequestParam Map<String, String> map) {
		List<AdminProductDTO> list = adminProductService.getSearchDeliveryReady(map);
		
		DeliveryPaging deliveryPaging = adminProductService.searchDeliveryReadyPaging(map);

		
		ModelAndView mav = new ModelAndView();
		mav.addObject("deliveryPaging",deliveryPaging);
		mav.addObject("deliveryPg", map.get("deliveryPg"));
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		
		return mav;
	}
	
	
	

}
