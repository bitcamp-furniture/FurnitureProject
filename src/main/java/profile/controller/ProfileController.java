package profile.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

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

import furniture.bean.ProductDTO;
import furniture.bean.ReviewDTO;
import furniture.service.FurnitureService;
import member.bean.MemberDTO;
import profile.bean.*;
import profile.service.ProfileService;


@Controller
@RequestMapping(value="profile")
public class ProfileController {
	@Autowired
	ProfileService profileService;
	@Autowired
	FurnitureService furnitureService;
	
	@RequestMapping(value="profile", method=RequestMethod.GET)
	public String profile(Model model, HttpSession session) {
		if(session.getAttribute("memId") == null) {
			model.addAttribute("display", "/profile/profile.jsp");
			return "/index";
		} else {
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
	public String asklist(@RequestParam(required = false, defaultValue = "1") String askPg, Model model) {
		model.addAttribute("askPg", askPg);
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
		//MultipartFile ??? ???????????? ???????????? ??????
		String filePath = "D:\\FurnitureProject\\src\\main\\webapp\\profile\\storage";
		String fileName;
		File file;
		for (MultipartFile img : list) {
			fileName = img.getOriginalFilename();
			file = new File(filePath, fileName);

			//?????? ??????
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
		String memEmail = (String) session.getAttribute("memEmail");

		Map<String, String> map = new HashMap<String, String>();
		
		map.put("askPg", askPg);
		map.put("memEmail", memEmail);
		
		//1???????????? 5??????
		List<AskDTO> list = profileService.getAskList(map);
		
		//????????? ??????
		AskPaging askPaging = profileService.askPaging(map);
				
		//??????
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("askPaging", askPaging);
		mav.addObject("askPg", askPg);
		mav.addObject("list", list);
		mav.addObject("memEmail", memEmail);
		
		mav.setViewName("jsonView");
		
		return mav;
	}
	
	@RequestMapping(value="askView", method=RequestMethod.GET)
	public String boardView(@RequestParam String seq, //????????? ???????????? ?????????: seq, pg
							@RequestParam String askPg,
							Model model) { //????????? 2?????? ????????? ??????

		model.addAttribute("seq", seq); //seq??? ????????? ?????????
		model.addAttribute("askPg", askPg);
		
		/* model.addAttribute("display", "/profile/askView.jsp"); */
		return "/profile/askView";
	}
	
	@RequestMapping(value="getAskView", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getImageboardView(@RequestParam String seq) { //????????? 2?????? ????????? ??????
		AskDTO askDTO = profileService.getAsk(seq);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("askDTO",askDTO);
		mav.setViewName("jsonView");
		return mav;
		
	}	
	
//----------------------------------------------------------------
//???????????? ?????? ????????????
	@RequestMapping(value="getMember", method=RequestMethod.POST)
    @ResponseBody
    public MemberDTO getMember(@RequestParam int id) {
        return profileService.getMember(id);
    }
	
//----------------------------------------------------------------
//?????? ?????? ??????
	@RequestMapping(value="updateMember", method=RequestMethod.POST)
    @ResponseBody
    public void updateMember(@RequestParam Map<String, String> map, Model model, HttpSession session) {
        profileService.updateMember(map, session);
    }
	
//----------------------------------------------------------------
//?????? ?????? ??????
	@RequestMapping(value="updateContact", method=RequestMethod.POST)
    @ResponseBody
    public void updateContact(@RequestParam Map<String, String> map) {
        profileService.updateContact(map);
    }
	
//----------------------------------------------------------------
//?????? ?????? ??????
	@RequestMapping(value="updatePassword", method=RequestMethod.POST)
    @ResponseBody
    public void updatePassword(@RequestParam Map<String, String> map) {
        profileService.updatePassword(map);
    }
	
//----------------------------------------------------------------
//?????????
	@RequestMapping(value="getWishlist", method=RequestMethod.POST)
    @ResponseBody
    public ModelAndView getWishlist(@RequestParam String id,
									@RequestParam(required = false, defaultValue="1") String wishlistPg) {

		List<WishlistDTO> list = profileService.getWishlist(id, wishlistPg);
		//System.out.println("list = "+list);

		//????????? ??????
		WishlistPaging wishlistPaging = profileService.wishlistPaging(id, wishlistPg);

        ModelAndView mav = new ModelAndView();
		mav.addObject("wishlistPg", wishlistPg);
		mav.addObject("list", list);
		mav.addObject("wishlistPaging", wishlistPaging);
		mav.setViewName("jsonView");
		return mav;
    }

//----------------------------------------------------------------
//????????? ????????????
	@RequestMapping(value="choiceDelete", method=RequestMethod.POST)
	@ResponseBody
	public void choiceDelete(@RequestParam int id) {
		//System.out.println("id = "+id);
		profileService.choiceDelete(id);
	}

//----------------------------------------------------------------
//????????? ????????????
	@RequestMapping(value="totalDelete", method=RequestMethod.POST)
	@ResponseBody
	public void totalDelete(@RequestParam String memberId) {
		//System.out.println("memberId = "+ memberId);
		profileService.totalDelete(memberId);
	}

//----------------------------------------------------------------
//????????????
    @RequestMapping(value="getOrderList", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getOrderList(@RequestParam String id,
									@RequestParam(required = false, defaultValue="1") String orderPg) {

		List<OrderDTO> list = profileService.getOrderList(id, orderPg);

		//????????? ??????
		OrderPaging orderPaging = profileService.orderPaging(id, orderPg);

		ModelAndView mav = new ModelAndView();
		mav.addObject("orderPg", orderPg);
		mav.addObject("list", list);
		mav.addObject("orderPaging", orderPaging);
		mav.setViewName("jsonView");
		return mav;
	}

//----------------------------------------------------------------
//?????????????????? ??????
	@RequestMapping(value="updateOrderStatus", method=RequestMethod.POST)
	@ResponseBody
	public int updateOrderStatus(@RequestParam Map<String, Object> map) {
		System.out.println("map = " +map);
		profileService.updateOrderStatus(map);
		profileService.updateCumulativeAmount(map);

		int productAmounts = profileService.getProductAmounts(map);

//		ModelAndView mav = new ModelAndView();
//		mav.addObject("productAmounts", productAmounts);
//		mav.setViewName("jsonView");
//		return mav;
		return productAmounts;
	}

//----------------------------------------------------------------
//????????????
 	@RequestMapping(value="getCartList", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getCartList(@RequestParam int id,
									@RequestParam(required = false, defaultValue="1") String cartPg) {
		List<CartDTO> list = profileService.getCartList(id+"",cartPg);
		List<CartDTO> cartList = profileService.getAllCartList(id);
		//????????? ??????
		CartPaging cartPaging = profileService.cartPaging(id+"", cartPg);


		ModelAndView mav = new ModelAndView();
		mav.addObject("cartList", cartList);
		mav.addObject("cartPg", cartPg);
		mav.addObject("list", list);
		mav.addObject("cartPaging", cartPaging);
		mav.setViewName("jsonView");
		return mav;
	}

//----------------------------------------------------------------
//???????????? ????????????
	@RequestMapping(value="cartDelete", method=RequestMethod.POST)
	@ResponseBody
	public void cartDelete(@RequestParam int id) {
		//System.out.println("memberId = "+ memberId);
		profileService.cartDelete(id);
	}
//----------------------------------------------------------------
//???????????? ????????????
	@RequestMapping(value="cartTotalDelete", method=RequestMethod.POST)
	@ResponseBody
	public void cartTotalDelete(@RequestParam String memberId) {
		//System.out.println("memberId = "+ memberId);
		profileService.cartTotalDelete(memberId);
	}

//-------------------------------------------------------------------
//???????????? ???
@RequestMapping(value="orderPaymentView", method=RequestMethod.GET)
public String orderPaymentView(Model model, HttpSession session, MemberDTO memberDTO) {
	int memId = (Integer) session.getAttribute("memId");
	List<CartDTO> cartList = profileService.getAllCartList(memId);
	memberDTO = profileService.getMember(memId);

	model.addAttribute("memId",memId);
	model.addAttribute("memberDTO",memberDTO);
	model.addAttribute("cartList", cartList);
	model.addAttribute("display", "/profile/orderPayment.jsp");
	return "/index";
}

//---------------------------------------------------------------------------------------
//????????????
@RequestMapping(value="paymentWrite", method=RequestMethod.POST)
@ResponseBody
public void paymentWrite(HttpSession session
		,@RequestParam int total
		) {
	String email = (String) session.getAttribute("memEmail");
	
	int memId = (Integer) session.getAttribute("memId");
	List<CartDTO> cartList = profileService.getAllCartList(memId);
	
	Map<String, Object> map = new HashMap<String, Object>();
	
	
	map.put("memId", memId);
	map.put("total", total);
	map.put("cartList", cartList);
	

	profileService.paymentWrite(map);
}





//????????????
@RequestMapping(value="orderComplete", method=RequestMethod.GET)
public String orderComplete(Model model, HttpSession session, OrderDetailDTO orderDetailDTO, MemberDTO memberDTO) {
	//???????????? id,email ??? ?????????
	String email = (String) session.getAttribute("memEmail");
	int memId = (Integer) session.getAttribute("memId");
	memberDTO = profileService.getMember(memId);
	
	int orderNumber= profileService.getOrderNum(memId+"");
	orderDetailDTO.setOrder_number(orderNumber);
	
	profileService.cartTotalDelete(memId+"");
			
	model.addAttribute("memberDTO",memberDTO);
	model.addAttribute("orderDetailDTO",orderDetailDTO);
	model.addAttribute("display", "/profile/orderComplete.jsp");
	return "/index";
}

	//?????? ??????
	@ResponseBody
	@RequestMapping(value="memberDelete", method=RequestMethod.POST)
	public void memberDelete(@RequestParam String id,Model model,HttpSession session) {
		profileService.memberDelete(id);
		session.invalidate();
	}
	
	
	// ?????? ?????? ???
	@RequestMapping(value="reviewWriteForm", method=RequestMethod.GET)
	public String reviewWriteForm(@RequestParam int id, Model model, HttpSession session) {
		ProductDTO productDTO = furnitureService.getIdToOneData(id);
		String email = (String) session.getAttribute("memEmail");
		
		model.addAttribute("productDTO", productDTO);
		model.addAttribute("email", email);
		model.addAttribute("id", id);
		return "/profile/reviewWriteForm";
	}
	
	// ?????? write
	@RequestMapping(value="reviewWrite", method=RequestMethod.POST)
	@ResponseBody
	public void reviewWrite(@ModelAttribute ReviewDTO reviewDTO, @RequestParam("review__Image") MultipartFile review__Image, HttpSession session) {
		//MultipartFile ??? ???????????? ???????????? ??????
		String filePath = "C:\\code\\Spring\\workspace\\FurnitureProject\\src\\main\\webapp\\storage\\review";
		String fileName = review__Image.getOriginalFilename();
		File file = new File(filePath, fileName);

		String email = (String) session.getAttribute("memEmail");

		//?????? ??????
		try {
			FileCopyUtils.copy(review__Image.getInputStream(), new FileOutputStream(file));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		reviewDTO.setReview_image(fileName);
		reviewDTO.setEmail(email);
		//DB
		profileService.reviewWrite(reviewDTO);
	}

	
	
	
}



