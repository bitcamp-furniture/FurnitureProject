package furniture.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;

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

import category.bean.ProductPaging;
import category.service.ProductService;
import event.bean.EventDTO;
import event.bean.EventListPaging;
import event.service.EventService;
import furniture.bean.ProductDTO;
import furniture.bean.ProductImageDTO;
import furniture.bean.Product_qnaDTO;
import furniture.bean.Product_qna_paging;
import furniture.bean.ReviewDTO;
import furniture.bean.Review_paging;
import furniture.service.FurnitureService;

@Controller
public class FurnitureController {
	@Autowired
	private FurnitureService furnitureService;
	@Autowired
	private EventService eventService;
	@Autowired
	private ProductService productService;
	@Autowired
	private ServletContext ctx;

	// 상품 상세컷 ... DB연결, 상품id 필요
	@RequestMapping(value = "/main/productView", method = RequestMethod.GET)
	public String productView(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {

		model.addAttribute("pg", pg);
		model.addAttribute("display", "/main/productView.jsp");
		return "/index";
	}

	   
	
	// 상품 상세컷 ... 상품 문의 작성
	@RequestMapping(value = "/main/productQnAWrite", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView productQnAWrite(@ModelAttribute Product_qnaDTO product_qnaDTO) {
		// 추후 세션에서 값 받아와  입력
		product_qnaDTO.setEmail("emailmail");
		product_qnaDTO.setProduct_id("35345");

		furnitureService.productQnAWrite(product_qnaDTO);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");

		return mav;
	}


	// 상품 상세컷 ... onload로 부르는 상품문의 리스트 
	// 상품id에 따라 다르게 가져와야 한다!
	@ResponseBody
	@RequestMapping(value = "/main/productQnAListPaging", method = RequestMethod.POST)
	public ModelAndView productQnAListPaging(@RequestParam(required = false, defaultValue = "1") String pg) {
		List<Product_qnaDTO> productQnAList = furnitureService.productQnAListPaging(pg);
		
		// 페이징 처리
		Product_qna_paging product_qna_paging = furnitureService.product_qna_paging(pg);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("productQnAList", productQnAList);
		mav.addObject("product_qna_paging", product_qna_paging);
		mav.setViewName("jsonView");
		return mav;
	}

	// 상품 상세컷 ... onload로 부르는 리뷰 리스트
	// 상품id에 따라 다르게 가져와야 한다!
	@ResponseBody
	@RequestMapping(value = "/main/reviewList", method = RequestMethod.POST)
	public ModelAndView reviewList(@RequestParam(required = false, defaultValue = "1") String pg) {
		List<ReviewDTO> reviewList = furnitureService.reviewList(pg);
		// 페이징 처리
		Review_paging review_paging = furnitureService.review_paging(pg);

		ModelAndView mav = new ModelAndView();
		mav.addObject("reviewList", reviewList);
		mav.addObject("review_paging", review_paging);
		mav.setViewName("jsonView");
		return mav;
	}
	
	// 메인 페이지 ... review ... 최신순 5개만!!!
	@ResponseBody
	@RequestMapping(value = "/main/reviewListTop5", method = RequestMethod.POST)
	public ModelAndView reviewListTop5() {
		List<ReviewDTO> reviewListTop5 = furnitureService.reviewListTop5();
//		System.out.println(reviewListTop5);
		ModelAndView mav = new ModelAndView();
		mav.addObject("reviewListTop5", reviewListTop5);
		mav.setViewName("jsonView");
		return mav;
	}
	
	// 메인 페이지 ...베스트셀러 가져오기
	   @ResponseBody
	   @RequestMapping(value = "/main/getBestSeller", method = RequestMethod.POST)
	   public ModelAndView getBestSeller() {
	      List<ProductDTO> getBestSeller = furnitureService.getBestSeller();
	      ModelAndView mav = new ModelAndView();
	      mav.addObject("getBestSeller", getBestSeller);
	      mav.setViewName("jsonView");
	      return mav;
	   }


		// 메인 - 이벤트 페이지
		@RequestMapping(value = "/main/event", method = RequestMethod.GET)
		public String event(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {

			model.addAttribute("pg", pg);
			model.addAttribute("display", "/main/eventList.jsp");
			return "/index";
		}
		
		@ResponseBody
		@RequestMapping(value = "/main/getEventList", method = RequestMethod.POST)
		public ModelAndView getEventList(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {
			List<EventDTO> eventList = eventService.getEventList(pg);
			EventListPaging eventListPaging = eventService.eventListPaging(pg);
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("eventList", eventList);
			mav.addObject("pg", pg);
			mav.addObject("eventListPaging", eventListPaging);

			mav.setViewName("jsonView");
			return mav;
		}
		
		
		// 메인 - 이벤트 페이지
		@RequestMapping(value = "/main/eventView", method = RequestMethod.GET)
		public String eventView(@RequestParam(required = false, defaultValue = "1") String eventPg, String id, Model model) {
			// 이벤트 DTO를 가지고 가야 한다.
			EventDTO eventDTO = eventService.getEventView(id);
			
			model.addAttribute("id", id);
			model.addAttribute("eventDTO", eventDTO);
			model.addAttribute("eventPg", eventPg);
			model.addAttribute("display", "/main/eventView.jsp");
			return "/index";
		}
		
		
		   // 이벤트 view에서 해당 카테고리의 리스트를 가져오는 메소드 + 페이징 작업중
		   @ResponseBody
		   @RequestMapping(value = "/main/getCategoryList", method = RequestMethod.POST)
		   public ModelAndView getCategoryList(@RequestParam(required = false, defaultValue = "1") String pg,
		                              @RequestParam String category) { // category='수납형침대'
		      ModelAndView mav = new ModelAndView();

		      List<ProductDTO> selectList = productService.selectList(pg, category);
		      ProductPaging productPaging = productService.productPaging(pg,category);
		      mav.addObject("pg", pg);
		      mav.addObject("selectList", selectList);
		      mav.addObject("productPaging", productPaging);
		      
		      mav.setViewName("jsonView");
		      return mav;
		   }


		   //썸네일 + 디테일 이미지 등록
		   @RequestMapping(value = "/productRegistrationView", method = RequestMethod.GET)
			
			public String productRegistrationView(Model model) {
			   model.addAttribute("adminDisplay", "/admin/productRegistration.jsp");
			   return "/admin/adminIndex";
			   }
		   
		   //썸네일 + 디테일 이미지 등록
			@RequestMapping(value = "/productRegistration", method = RequestMethod.POST)
			public String productRegistration(@ModelAttribute ProductDTO productDTO
											, @ModelAttribute ProductImageDTO productImageDTO
											, @RequestParam("img") MultipartFile thumbImg
											, @RequestParam("detailImg[]") List<MultipartFile> list
											, String[] product_colors
											) {
				//productDTO.setProduct_category2("1");
//				ProductDTO productDTO = new ProductDTO();
//				ProductImageDTO productImageDTO = new ProductImageDTO();
//				productDTO.setId(id);
//				productDTO.setId(id);
//				productDTO.setId(id);
//				productDTO.setId(id);
				String webPath = "/category/storage";
				String realPath = ctx.getRealPath(webPath);
				System.out.println(realPath);
				//이게 realPath 경로를 찍은건데 복붙해서 탐색기에 넣으면 나옴
				
				System.out.println(productDTO+"1");
				//category테이블에서 product_category1를 select해서 category_name을 끌고 와서 하려다가 hidden값으로 하기
				
				
				String fileName = thumbImg.getOriginalFilename();
				File file = new File(realPath, fileName); // 파일 생성
				//김지수파일올리기thumbImg.transferTo(file);
				
//				for(int i=0; i<product_colors.length; i++) {
//					productDTO.setProduct_color(product_colors[i]);
//				}
					furnitureService.productRegistration(productDTO);
					//여기서에러
				System.out.println(productDTO+"2");
				// 파일 복사
				
				// 썸네일 이미지(이미지1개)
				try {
					FileCopyUtils.copy(thumbImg.getInputStream(), new FileOutputStream(file));
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				productImageDTO.setProduct_img_thumb(fileName);
				System.out.println(productImageDTO);
				
				// 디테일 이미지(이미지 여러개)
				for (MultipartFile detailImg : list) {
					fileName = detailImg.getOriginalFilename();
					System.out.println(fileName);
					file = new File(realPath, fileName);
					// 파일복사
					try {
						FileCopyUtils.copy(detailImg.getInputStream(), new FileOutputStream(file));
					} catch (IOException e) {
						e.printStackTrace();
					}
					productImageDTO.setProduct_img_detail(fileName);
					furnitureService.productImageRegistration(productImageDTO);
					System.out.println(productDTO);
					System.out.println(productImageDTO);
				} //for
				System.out.println(productDTO+"3");
				return "redirect:/categoryAllList";
			}
		    
			
		
}
