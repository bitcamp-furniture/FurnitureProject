package admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	
	//회원가입 창 띄우기
	@RequestMapping(value="/dashBoard", method=RequestMethod.GET)
	public ModelAndView joinPage() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/admin/dashBoard.jsp");
		mav.setViewName("/adminIndex");
		
		return mav;
	}

}
