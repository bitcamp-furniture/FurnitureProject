package admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import admin.service.AdminService;

@Controller
@RequestMapping("admin")
public class AdminShoppingController {
	@Autowired
	AdminService adminService;
	
	//주문관리 창 띄우기
	@RequestMapping(value = "product/orderControl", method = RequestMethod.GET)
	public String eventList(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/admin/product/orderControl.jsp");

		return "/admin/adminIndex";
	}
	
	//주문목록 띄우기
	

}
