package category.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import category.bean.ProductPaging;
import category.service.ProductService;

@Controller 
@RequestMapping(value = "/category/view")
public class CategoryController {
	@Autowired
	private ProductService productService;

	// 카테고리 인덱스 소환
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String category(@RequestParam(required = false, defaultValue = "1") String pg,Model model) {
		model.addAttribute("pg",pg);
		model.addAttribute("display", "/category/view/category.jsp");
		model.addAttribute("categorydisplay", "/category/view/categorymain.jsp");

		return "/index";
	}

	// 썸네일 + 디테일 이미지 등록
	@RequestMapping(value = "/productboardWrite", method = RequestMethod.POST)
	@ResponseBody
	public void productboardWrite(@ModelAttribute ProductDTO productDTO, @RequestParam MultipartFile thumbImg,
			@RequestParam("detailImg[]") List<MultipartFile> list, Model model) {

		String filePath = "C:\\Users\\LeeMinJeong\\Desktop\\FurnitureProject\\src\\main\\webapp\\category\\storage";
		String fileName = thumbImg.getOriginalFilename();
		File file = new File(filePath, fileName); // 파일 생성

		// 파일 복사
		// 썸네일 이미지(이미지1개)
		try {
			FileCopyUtils.copy(thumbImg.getInputStream(), new FileOutputStream(file));
		} catch (IOException e) {
			e.printStackTrace();
		}

		productDTO.setProduct_img_thumb(fileName);

		// 디테일 이미지(이미지 여러개)
		for (MultipartFile detailImg : list) {
			fileName = detailImg.getOriginalFilename();
			file = new File(filePath, fileName);

			// 파일복사
			try {
				FileCopyUtils.copy(detailImg.getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}

			productDTO.setProduct_img_detail(fileName);

			// DB DB에 한줄 쫘르르륵 들어간다
			productService.categoryboardWrite(productDTO);
		} // for

	}

	// 전체 상품을 리스트로 가져올 때에 display2에 띄우는 것 >> /list로 연결됨
	// display display2 화면에 띄워지는 곳
	@RequestMapping(value = "/categoryAllList", method = RequestMethod.GET) // Resolver를 타고 가지말아라
	public String categoryAllList(@RequestParam(required = false, defaultValue = "1") String pg,
								  Model model) 
	{
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/category/view/category.jsp");
		model.addAttribute("categorydisplay", "/category/view/allList.jsp");
		return "/index";

	}

	
	// 전체 상품을 리스트로 가져오는 메소드 +페이징 필요 없음 
	@ResponseBody
	@RequestMapping(value = "/getAllList", method = RequestMethod.POST)
	public List<ProductDTO> getAllList(Model model) {
		List<ProductDTO> allList = productService.getAllList();
		
		model.addAttribute("allList", allList);
		return allList;
	
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
	                      @RequestParam String category, Model model) {

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

	      List<ProductDTO> selectList = productService.selectList(pg, category);
	      ProductPaging productPaging = productService.productPaging(pg,category);
	      mav.addObject("pg", pg);
	      mav.addObject("category", category);
	      mav.addObject("selectList", selectList);
	      mav.addObject("productPaging", productPaging);
	      
	      mav.setViewName("jsonView");
	      return mav;
	   }
}
