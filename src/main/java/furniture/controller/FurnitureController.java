package furniture.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
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

import category.bean.ProductListDTO;
import category.bean.ProductPaging;
import category.service.ProductService;
import event.bean.EventDTO;
import event.bean.EventListPaging;
import event.bean.NoticeDTO;
import event.bean.NoticeListPaging;
import event.service.EventService;
import furniture.bean.ProductDTO;
import furniture.bean.ProductImageDTO;
import furniture.bean.Product_OptionDTO;
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

	private String webPath = "C:\\Users\\A\\Desktop\\최종프로젝트 관련\\프로젝트클론\\210629.1525\\src\\main\\webapp\\upload";
	// 상품 상세컷 ... DB연결, 상품id 필요
		@RequestMapping(value = "/main/productView", method = RequestMethod.GET)
		public String productView(@RequestParam(required = false, defaultValue = "1") String pg
								, Integer id
								, Model model
	                            ) {
			ProductDTO productDTO = new ProductDTO();
			//ProductImageDTO productImageDTO = new ProductImageDTO();
			productDTO = furnitureService.getIdToOneData(id);
			List<ProductImageDTO> list = furnitureService.getIdToImageData(id);

			
			//테스트
			System.out.println(list);
			System.out.println(productDTO);
			System.out.println(list.size());

			
			model.addAttribute("productDTO", productDTO);//뷰가서 게터로, ${productDTO.product_id} 이런식으로 하는것 같은데
			//model.addAttribute("productImageDTO", productImageDTO);//뷰가서 게터로, 이거는forEach로 반복문 돌리면서
			model.addAttribute("ImageList", list);
			model.addAttribute("pg", pg);
			model.addAttribute("display", "/main/productView.jsp");
			return "/index";
		}


		   // 상품 상세컷 ... 상품 문의 작성
		   @RequestMapping(value = "/main/productQnAWrite", method = RequestMethod.POST)
		   @ResponseBody
		   public ModelAndView productQnAWrite(@ModelAttribute Product_qnaDTO product_qnaDTO
		         ,@RequestParam Map<String, String>map
		         ,HttpSession session) {
		      

		     // map.put("email",(String) session.getAttribute("memId"));
		     // map.put("id", map.get("product_id"));
			   
		      //product_qnaDTO.setEmail((String) session.getAttribute("memId"));
		      product_qnaDTO.setEmail("무야호");
		      product_qnaDTO.setProduct_id(map.get("product_id"));
		      product_qnaDTO.setProduct_name(map.get("product_name"));

		      
		      System.out.println(product_qnaDTO +"product_qnaDTO 찍엇어요");
		      
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
	public String eventView(@RequestParam(required = false, defaultValue = "1") String eventPg, String id,
			Model model) {
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

		List<ProductListDTO> selectList = productService.selectList(pg, category);
		ProductPaging productPaging = productService.productPaging(pg, category);
		mav.addObject("pg", pg);
		mav.addObject("selectList", selectList);
		mav.addObject("productPaging", productPaging);

		mav.setViewName("jsonView");
		return mav;
	}
	

	// 메인 - 공지사항
	@RequestMapping(value = "/main/notice", method = RequestMethod.GET)
	public String notice(Model model) {
		model.addAttribute("display", "/main/noticeList.jsp");
		return "/index";
	}

	
	// 메인 - 공지사항 리스트 + 페이징
	@ResponseBody
	@RequestMapping(value = "/main/getNoticeList", method = RequestMethod.POST)
	public ModelAndView getNoticeList(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {
		List<NoticeDTO> noticeList = eventService.getNoticeList(pg);
		NoticeListPaging noticeListPaging = eventService.noticeListPaging(pg);

		ModelAndView mav = new ModelAndView();
		mav.addObject("noticeList", noticeList);
		mav.addObject("pg", pg);
		mav.addObject("noticeListPaging", noticeListPaging);

		mav.setViewName("jsonView");
		return mav;
	}
	
	// 메인 - 공지사항 view
	@RequestMapping(value = "/main/noticeView", method = RequestMethod.GET)
	public String noticeView(@RequestParam String id,
			Model model) {
		NoticeDTO noticeDTO = eventService.getNoticeView(id);
		
		model.addAttribute("id", id);
		model.addAttribute("noticeDTO", noticeDTO);
		model.addAttribute("display", "/main/noticeView.jsp");
		return "/index";
	}


	// 메인 - FaQ
	@RequestMapping(value = "/main/FaQ", method = RequestMethod.GET)
	public String FaQ(Model model) {
		model.addAttribute("display", "/main/FaQList.jsp");
		return "/index";
	}
	
	// 메인 - FaQ 리스트 + 페이징
	@ResponseBody
	@RequestMapping(value = "/main/FaQList", method = RequestMethod.POST)
	public ModelAndView FaQList(@RequestParam(required = false, defaultValue = "1") String pg,
			                    @RequestParam String div,
			                    Model model) {
		
		List<NoticeDTO> noticeList = eventService.getNoticeList(pg);
		NoticeListPaging noticeListPaging = eventService.noticeListPaging(pg);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("noticeList", noticeList);
		mav.addObject("pg", pg);
		mav.addObject("noticeListPaging", noticeListPaging);
		
		mav.setViewName("jsonView");
		return mav;
	}

		

		   //썸네일 + 디테일 이미지 등록
		   @RequestMapping(value = "/admin/productRegistrationView", method = RequestMethod.GET)
			
			public String productRegistrationView(Model model) {
			   model.addAttribute("display", "/admin/productRegistration.jsp");
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
//				productDTO.setProduct_category2("1");
//				ProductDTO productDTO = new ProductDTO();
//				ProductImageDTO productImageDTO = new ProductImageDTO();
//				productDTO.setId(id);
//				productDTO.setId(id);
//				productDTO.setId(id);
//				productDTO.setId(id);
				//String realPath = ctx.getRealPath(webPath);
				//System.out.println(realPath);
				//이게 realPath 경로를 찍은건데 복붙해서 탐색기에 넣으면 나옴
				
				//category테이블에서 product_category1를 select해서 category_name을 끌고 와서 하려다가 hidden값으로 하기

				//productDTO.setProduct_category1("550");
				//productDTO.setProduct_category2("120");

				String fileName = thumbImg.getOriginalFilename();
				File file = new File(webPath, fileName); // 파일 생성, 경로와 파일 이름
				//파일올리기thumbImg.transferTo(file);
				
				System.out.println(productDTO+"1");	
				furnitureService.productRegistration(productDTO); //담겨진 DTO를 DB에 넣기
				
				/////////////////////////productDTO의 id값을 ImageDTO에 수동으로 넣기
				int productId = furnitureService.getProductId(productDTO.getProduct_code());
				productImageDTO.setId(productId);
				/////////////////////////
				System.out.println(productDTO+"2");
				System.out.println(productImageDTO+"2");
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
					file = new File(webPath, fileName);
					// 파일복사
					try {
						FileCopyUtils.copy(detailImg.getInputStream(), new FileOutputStream(file));
					} catch (IOException e) {
						e.printStackTrace();
					}
					productImageDTO.setProduct_img_detail(fileName);//ImageDTO에 다담았다
					furnitureService.productImageRegistration(productImageDTO);//다 담았으니 DB로감
					System.out.println(productDTO);
					System.out.println(productImageDTO);
				} //for
				
				Product_OptionDTO product_OptionDTO = new Product_OptionDTO(); 
				product_OptionDTO.setId(productId);
				
				for(int i=0; i<product_colors.length; i++) {
				product_OptionDTO.setColor(product_colors[i]);
				furnitureService.productOptionRegistration(product_OptionDTO);//다 담았으니 DB로감
				}
				
				System.out.println(productDTO+"3");
				
				return "redirect:/admin/productRegistrationView";
			}
}


