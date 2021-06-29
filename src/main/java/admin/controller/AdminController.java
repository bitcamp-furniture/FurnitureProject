package admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	//관리자페이지 창 띄우기
	@RequestMapping(value="/adminIndex", method=RequestMethod.GET)
	public String joinPage() {
		return "/admin/adminIndex";
	}

}
