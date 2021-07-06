package admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import furniture.bean.ReviewDTO;
import admin.bean.AdminReviewPaging;
import admin.bean.AdminReviewSelectListPaging;
import admin.service.AdminReviewService;

@Controller
@RequestMapping("admin")
public class AdminReviewController {
	@Autowired
	AdminReviewService adminReviewService;
	
	// 관리자페이지 - 리뷰관리
	@RequestMapping(value = "/review", method = RequestMethod.GET)
	public String review(Model model) {
		model.addAttribute("display", "/admin/review/reviewList.jsp");
		return "/admin/adminIndex";
	}
	
	//관리자 페이지 -리뷰관리에서 리뷰 클릭시 
	@ResponseBody
	@RequestMapping(value = "/adminReviewList", method = RequestMethod.POST)
	public ModelAndView adminReviewList(@RequestParam(required = false, defaultValue = "1") String pg,
			                    		Model model)
	{

		List<ReviewDTO> adminReviewList = adminReviewService.adminReviewList(pg);

		AdminReviewPaging adminreviewPaging = adminReviewService.adminreviewPaging(pg);
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.addObject("adminReviewList", adminReviewList);
		mav.addObject("adminreviewPaging", adminreviewPaging);
		mav.setViewName("jsonView");
		
		return mav;
	}
	//관리자페이지 - 리뷰삭제
	@RequestMapping(value="adminReviewListwDelete", method=RequestMethod.GET)
	public ModelAndView adminReviewListwDelete(String[] check) {
		ModelAndView mav = new ModelAndView();
		adminReviewService.adminReviewListDelete(check);
		
		 return new ModelAndView("redirect:/admin/review");
	}
	
	//관리자 페이지 - 리뷰 정렬
	//오름차순 정렬
	@ResponseBody
	@RequestMapping(value = "/adminReviewASCList", method = RequestMethod.POST)
	public ModelAndView adminReviewASCList(@RequestParam(required = false, defaultValue = "1") String pg,
										@RequestParam String sort1,
			                    		Model model)
	{
		// sort1 = 글번호순,날짜순,상품이름순,아이디순,평점순
		
		List<ReviewDTO> adminreviewSelectList = adminReviewService.adminreviewASCList(pg,sort1);
		ModelAndView mav = new ModelAndView();
			
		AdminReviewSelectListPaging adminreviewSelectListPaging = adminReviewService.adminReviewSelectList(pg,sort1);

		mav.addObject("pg", pg);
		mav.addObject("sort1", sort1);
		mav.addObject("adminreviewSelectList", adminreviewSelectList);
		mav.addObject("adminreviewSelectListPaging", adminreviewSelectListPaging);
		mav.setViewName("jsonView");
		
		return mav;
	
	}
	//내림 차순 정렬
	@ResponseBody
	@RequestMapping(value = "/adminReviewDESCList", method = RequestMethod.POST)
	public ModelAndView adminReviewDESCList(@RequestParam(required = false, defaultValue = "1") String pg,
										@RequestParam String sort1,
			                    		Model model)
	{
		// sort1 = 글번호순,날짜순,상품이름순,아이디순,평점순
		
		List<ReviewDTO> adminreviewSelectList = adminReviewService.adminreviewDESCtList(pg,sort1);
		ModelAndView mav = new ModelAndView();
	
		AdminReviewSelectListPaging adminreviewSelectListPaging = adminReviewService.adminReviewSelectList(pg,sort1);
			
		mav.addObject("pg", pg);
		mav.addObject("sort1", sort1);
		mav.addObject("adminreviewSelectList", adminreviewSelectList);
		mav.addObject("adminreviewSelectListPaging", adminreviewSelectListPaging);
		mav.setViewName("jsonView");
		
		return mav;
	}


}


