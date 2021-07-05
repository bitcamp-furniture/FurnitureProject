package admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import furniture.bean.ReviewDTO;
import furniture.service.FurnitureService;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	FurnitureService furnitureService;
	
	//관리자페이지 창 띄우기
	@RequestMapping(value="/adminIndex", method=RequestMethod.GET)
	public String joinPage() {
		return "/admin/adminIndex";
	}
	
	//실험중
	//라인 차트 : 리뷰 
	@RequestMapping(value = "/reviewLineChart")
	@ResponseBody
	 public ModelAndView reviewLineChart(Model model) {
		        	   
		//라인 차트 : 일별 리뷰수
		List<ReviewDTO> reviewdDay = furnitureService.reviewDay();	 
		ModelAndView mav = new ModelAndView();
		mav.addObject("reviewdDay", reviewdDay);
		mav.setViewName("jsonView");
		      
		return mav;
	  }

}
