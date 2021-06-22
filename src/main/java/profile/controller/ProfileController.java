package profile.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
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

import profile.bean.AskDTO;
import profile.bean.AskPaging;
import profile.bean.ProfileDTO;
import profile.service.ProfileService;

@Controller
@RequestMapping(value="profile")
public class ProfileController {
	@Autowired
	ProfileService profileService;
	
	@RequestMapping(value="profile", method=RequestMethod.GET)
	public String profile(Model model) {
		model.addAttribute("display", "/profile/profile.jsp");
		return "/index";
	}
	
	@RequestMapping(value="mypage", method=RequestMethod.GET)
	public String mypage(Model model) {
		model.addAttribute("display", "/profile/profile.jsp");
		model.addAttribute("askdisplay", "/profile/mypage.jsp");
		return "/index";
	}
	
	@RequestMapping(value="cart", method=RequestMethod.GET)
	public String cart(Model model) {
		model.addAttribute("display", "/profile/profile.jsp");
		model.addAttribute("askdisplay", "/profile/cart.jsp");
		return "/index";
	}
	
	@RequestMapping(value="wishList", method=RequestMethod.GET)
	public String wishList(Model model) {
		model.addAttribute("display", "/profile/profile.jsp");
		model.addAttribute("askdisplay", "/profile/wishList.jsp");
		return "/index";
	}
	
	@RequestMapping(value="order", method=RequestMethod.GET)
	public String order(Model model) {
		model.addAttribute("display", "/profile/profile.jsp");
		model.addAttribute("askdisplay", "/profile/order.jsp");
		return "/index";
	}
	
	@RequestMapping(value="askList", method=RequestMethod.GET)
	public String asklist(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/profile/profile.jsp");
		model.addAttribute("askdisplay", "/profile/askList.jsp");
		return "/index";
	}

	
	
	
	@RequestMapping(value="askWrite", method=RequestMethod.POST)
	@ResponseBody
	public void askWrite(@ModelAttribute AskDTO askDTO, @RequestParam("img[]") List<MultipartFile> list) {
		//MultipartFile 이 이미지를 보내주는 역할
		String filePath = "D:\\FurnitureProject\\src\\main\\webapp\\profile\\storage";
		String fileName;
		File file;
		for(MultipartFile img : list ) {
			fileName = img.getOriginalFilename();
			file = new File(filePath, fileName);
			
			//파일 복사
			try {
				FileCopyUtils.copy(img.getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			askDTO.setImage1(fileName);
			
			//DB
			profileService.askWrite(askDTO);

		}//for

	}
	

	@RequestMapping(value="getAskList", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getAskList(@RequestParam(required = false, defaultValue = "1") String pg,
			HttpSession session, HttpServletResponse response) {
		//1페이지당 5개씩
		List<AskDTO> list = profileService.getAskList(pg);
		
		//페이징 처리
		AskPaging askPaging = profileService.askPaging(pg);
				
//		//세션
//		String memId = (String) session.getAttribute("memId");
//		
		ModelAndView mav = new ModelAndView();
		mav.addObject("askPaging", askPaging);
		mav.addObject("pg", pg);
		mav.addObject("list", list);
//		mav.addObject("memId", memId);
		
		mav.setViewName("jsonView");
		
		return mav;
	}
	
	
	

}
