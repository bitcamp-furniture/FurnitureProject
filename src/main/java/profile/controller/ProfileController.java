package profile.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

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

import member.bean.MemberDTO;
import profile.bean.*;
import profile.service.ProfileService;

@Controller
@RequestMapping(value="profile")
public class ProfileController {
	@Autowired
	ProfileService profileService;
	
	@RequestMapping(value="profile", method=RequestMethod.GET)
	public String profile(Model model, HttpSession session) {
		int id = (Integer) session.getAttribute("memId");
		String name = (String) session.getAttribute("memName");
		String email = (String) session.getAttribute("memEmail");
		
		model.addAttribute("id", id);
		model.addAttribute("profileName", name);
		model.addAttribute("profileEmail", email);
		model.addAttribute("display", "/profile/profile.jsp");
		model.addAttribute("askdisplay", "/profile/order.jsp");
		return "/index";
	}
	
//	@RequestMapping(value="mypage", method=RequestMethod.GET)
//	public String mypage(Model model, HttpSession session) {
//		int id = (Integer) session.getAttribute("memId");
//		//System.out.println("id="+id);
//		
//		model.addAttribute("id", id);
//		model.addAttribute("display", "/profile/profile.jsp");
//		model.addAttribute("askdisplay", "/profile/mypage.jsp");
//		return "/index";
//	}
	
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

	@RequestMapping(value="askWriteForm", method=RequestMethod.GET)
	public String askWriteForm(Model model, HttpSession session) {
		int id = (Integer) session.getAttribute("memId");
		String name = (String) session.getAttribute("memName");

		model.addAttribute("id", id);
		model.addAttribute("name", name);
		model.addAttribute("display", "/profile/askWrite.jsp");
		return "/profile/order";
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
	public ModelAndView getAskList(@RequestParam(required = false, defaultValue = "1") String askPg,
			HttpSession session, HttpServletResponse response) {
		//1페이지당 5개씩
		List<AskDTO> list = profileService.getAskList(askPg);
		
		//페이징 처리
		AskPaging askPaging = profileService.askPaging(askPg);
				
//		//세션
//		String memId = (String) session.getAttribute("memId");
//		
		ModelAndView mav = new ModelAndView();
		mav.addObject("askPaging", askPaging);
		mav.addObject("askPg", askPg);
		mav.addObject("list", list);
//		mav.addObject("memId", memId);
		
		mav.setViewName("jsonView");
		
		return mav;
	}
	
	@RequestMapping(value="askView", method=RequestMethod.GET)
	public String boardView(@RequestParam String seq, //나에게 들어오는 데이터: seq, pg
							@RequestParam String askPg,
							Model model) { //데이터 2개를 나에게 준다

		model.addAttribute("seq", seq); //seq를 모델에 넣어줌
		model.addAttribute("askPg", askPg);
		
		/* model.addAttribute("display", "/profile/askView.jsp"); */
		return "/profile/askView";
	}
	
	@RequestMapping(value="getAskView", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getImageboardView(@RequestParam String seq) { //데이터 2개를 나에게 준다
		AskDTO askDTO = profileService.getAsk(seq);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("askDTO",askDTO);
		mav.setViewName("jsonView");
		return mav;
		
	}	
	
//----------------------------------------------------------------
//한사람의 정보 가져오기
	@RequestMapping(value="getMember", method=RequestMethod.POST)
    @ResponseBody
    public MemberDTO getMember(@RequestParam int id) {
        return profileService.getMember(id);
    }
	
//----------------------------------------------------------------
//회원 정보 수정
	@RequestMapping(value="updateMember", method=RequestMethod.POST)
    @ResponseBody
    public void updateMember(@RequestParam Map<String, String> map, Model model, HttpSession session) {
        profileService.updateMember(map, session);
    }
	
//----------------------------------------------------------------
//회원 정보 수정
	@RequestMapping(value="updateContact", method=RequestMethod.POST)
    @ResponseBody
    public void updateContact(@RequestParam Map<String, String> map) {
        profileService.updateContact(map);
    }
	
//----------------------------------------------------------------
//회원 정보 수정
	@RequestMapping(value="updatePassword", method=RequestMethod.POST)
    @ResponseBody
    public void updatePassword(@RequestParam Map<String, String> map) {
        profileService.updatePassword(map);
    }
	
//----------------------------------------------------------------
//찜목록
	@RequestMapping(value="getWishlist", method=RequestMethod.POST)
    @ResponseBody
    public ModelAndView getWishlist(@RequestParam String id,
									@RequestParam(required = false, defaultValue="1") String wishlistPg) {

		List<WishlistDTO> list = profileService.getWishlist(id, wishlistPg);
		//System.out.println("list = "+list);

		//페이징 처리
		WishlistPaging wishlistPaging = profileService.wishlistPaging(wishlistPg);

        ModelAndView mav = new ModelAndView();
		mav.addObject("wishlistPg", wishlistPg);
		mav.addObject("list", list);
		mav.addObject("wishlistPaging", wishlistPaging);
		mav.setViewName("jsonView");
		return mav;
    }

//----------------------------------------------------------------
//찜목록 선택삭제
	@RequestMapping(value="choiceDelete", method=RequestMethod.POST)
	@ResponseBody
	public void choiceDelete(@RequestParam int id) {
		//System.out.println("id = "+id);
		profileService.choiceDelete(id);
	}

//----------------------------------------------------------------
//찜목록 선택삭제
	@RequestMapping(value="totalDelete", method=RequestMethod.POST)
	@ResponseBody
	public void totalDelete(@RequestParam String memberId) {
		//System.out.println("memberId = "+ memberId);
		profileService.totalDelete(memberId);
	}

//----------------------------------------------------------------
//구매목록
    @RequestMapping(value="getOrderList", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getOrderList(@RequestParam String id,
									@RequestParam(required = false, defaultValue="1") String orderPg) {

		List<OrderDTO> list = profileService.getOrderList(id, orderPg);

		//페이징 처리
		OrderPaging orderPaging = profileService.orderPaging(id, orderPg);

		ModelAndView mav = new ModelAndView();
		mav.addObject("orderPg", orderPg);
		mav.addObject("list", list);
		mav.addObject("orderPaging", orderPaging);
		mav.setViewName("jsonView");
		return mav;
	}

//----------------------------------------------------------------
//주문처리상태 수정
	@RequestMapping(value="updateOrderStatus", method=RequestMethod.POST)
	@ResponseBody
	public void updateOrderStatus(@RequestParam int id) {
		profileService.updateOrderStatus(id);
	}

//----------------------------------------------------------------
//장바구니
 	@RequestMapping(value="getCartList", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getCartList(@RequestParam String id,
									@RequestParam(required = false, defaultValue="1") String cartPg) {
		System.out.println("cartPg = "+cartPg);
		List<CartDTO> list = profileService.getCartList(id,cartPg);

		//페이징 처리
		CartPaging cartPaging = profileService.cartPaging(id, cartPg);

		ModelAndView mav = new ModelAndView();
		mav.addObject("cartPg", cartPg);
		mav.addObject("list", list);
		mav.addObject("cartPaging", cartPaging);
		mav.setViewName("jsonView");
		return mav;
	}
}















