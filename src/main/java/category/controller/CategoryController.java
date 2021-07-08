package category.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import furniture.bean.ProductDTO;
import category.bean.ProductListDTO;
import category.bean.ProductPaging;
import category.bean.SortedListPaging;
import category.service.ProductService;
import event.bean.EventDTO;
import event.service.EventService;

@Controller 
@RequestMapping(value = "/category/view")
public class CategoryController {
	@Autowired
	private ProductService productService;
	@Autowired
	private EventService eventService;

	// 카테고리 인덱스 소환
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String category(@RequestParam(required = false, defaultValue = "1") String pg,Model model) {
		model.addAttribute("pg",pg);
		model.addAttribute("display", "/category/view/category.jsp");
		model.addAttribute("categorydisplay", "/category/view/categorymain.jsp");

		return "/index";
	}

	// 전체 상품을 리스트로 가져오는 메소드 +페이징 필요 없음 
	@ResponseBody
	@RequestMapping(value = "/getAllList", method = RequestMethod.POST)
	public ModelAndView getAllList(@RequestParam(required = false, defaultValue = "1") String pg
								   , HttpSession session)
	   {
	      ModelAndView mav = new ModelAndView();
	      List<ProductDTO> allList = productService.getAllList();
	      List<EventDTO> AllListBanner = eventService.AllListBanner();
	      //eventService.
	      
			int memId;
			if(session.getAttribute("memId")==null) {
				memId = 0;
			} else {
				memId = (Integer) session.getAttribute("memId");
			}

	      
			mav.addObject("memId", memId);
	      mav.addObject("allList", allList);
	      mav.addObject("AllListBanner", AllListBanner);
	      mav.addObject("pg", pg);
	      mav.setViewName("jsonView");
	      return mav;
	   }
	
	//선택 상품을 리스트로 가져오는 메소드 + 페이징 작업중
	@RequestMapping(value = "/categorySelectList",method=RequestMethod.GET)
	public String categorySelectList(@RequestParam(required = false, defaultValue = "1") String pg,
									Model model)
	{
		model.addAttribute("pg",pg);
		model.addAttribute("display", "/category/view/category.jsp");
		model.addAttribute("categorydisplay", "/category/view/selectList.jsp");
		return "/index";
	}


	   @RequestMapping(value = "/selectList", method = RequestMethod.GET)
	   public String selectList(@RequestParam(required = false, defaultValue = "1") String pg,
	                      		@RequestParam String category, Model model,
	                      		HttpSession session) {

			int memId;
			if(session.getAttribute("memId")==null) {
				memId = 0;
			} else {
				memId = (Integer) session.getAttribute("memId");
			}

	      model.addAttribute("memId", memId);
	      model.addAttribute("category", category);
	      model.addAttribute("pg", pg);
	      model.addAttribute("display", "/category/view/category.jsp");
	      model.addAttribute("categorydisplay", "/category/view/selectList.jsp");

	      return "/index";
	   }

	   // 선택 상품을 리스트로 가져오는 메소드 + 페이징 작업중
	   @ResponseBody
	   @RequestMapping(value = "/getCategoryList", method = RequestMethod.POST)
	   public ModelAndView getCategoryList(@RequestParam(required = false, defaultValue = "1") String pg,
	                              @RequestParam String category) {
	      ModelAndView mav = new ModelAndView();

	      List<ProductListDTO> selectList = productService.selectList(pg, category);
	      ProductPaging productPaging = productService.productPaging(pg,category);
	      mav.addObject("pg", pg);
	      mav.addObject("category", category);
	      mav.addObject("selectList", selectList);
	      mav.addObject("productPaging", productPaging);
	      
	      mav.setViewName("jsonView");
	      return mav;
	   }
	   
		// 헤더에서 키워드 검색 시 페이지 이동하는 메소드
		@RequestMapping(value = "/search",method=RequestMethod.GET)
		public String search(@RequestParam(required = false, defaultValue = "1") String pg,
							 @RequestParam String keyword,
										   Model model)
		{
			model.addAttribute("pg", pg);
			model.addAttribute("keyword", keyword);
			model.addAttribute("display", "/category/view/category.jsp");
			model.addAttribute("categorydisplay", "/category/view/search.jsp");
			return "/index";
		}

		// 선택 상품을 리스트로 가져오는 메소드 + 페이징 작업중
		@ResponseBody
		@RequestMapping(value = "/getSearchList", method = RequestMethod.POST)
		public ModelAndView getSearchList(@RequestParam(required = false, defaultValue = "1") String pg,
										  @RequestParam String keyword) {
			ModelAndView mav = new ModelAndView();
			
			List<ProductDTO> searchList = productService.searchList(pg, keyword);
			ProductPaging productSearchPaging = productService.productSearchPaging(pg,keyword);
			mav.addObject("pg", pg);
			mav.addObject("keyword", keyword);
			mav.addObject("searchList", searchList);
			mav.addObject("productSearchPaging", productSearchPaging);
			
			mav.setViewName("jsonView");
			return mav;
		}
		
		// 선택 상품을 리스트로 가져오는 메소드 + 페이징 작업중
		@ResponseBody
		@RequestMapping(value = "/sortedSelectList", method = RequestMethod.POST)
		public ModelAndView sortedSelectList(@RequestParam(required = false, defaultValue = "1") String pg,
											 @RequestParam String key,
											 @RequestParam String category) {
			ModelAndView mav = new ModelAndView();
			
			List<ProductListDTO> sortedSelectList = productService.sortedSelectList(pg, key, category);
			SortedListPaging sortedListPaging = productService.sortedListPaging(pg, key, category);
			
			mav.addObject("pg", pg);
			mav.addObject("key", key);
			mav.addObject("sortedSelectList", sortedSelectList);
			mav.addObject("sortedListPaging", sortedListPaging);
			
			mav.setViewName("jsonView");
			return mav;
		}
}

