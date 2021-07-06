package admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import admin.service.AdminQNAService;
import profile.bean.AskDTO;
import profile.bean.AskPaging;

@Controller
@RequestMapping(value="admin")
public class AdminQNAController {
	@Autowired
	AdminQNAService adminQNAService;
	
	
	@RequestMapping(value = "/adminQNA", method = RequestMethod.GET)
	public String eventList(@RequestParam(required = false, defaultValue = "1") String askPg, Model model) {
		model.addAttribute("askPg", askPg);
		model.addAttribute("display", "/admin/adminQNA.jsp");

		return "/admin/adminIndex";
	}
	
	@RequestMapping(value="/getAskList", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getAskList(@RequestParam(required = false, defaultValue = "1") String askPg,
			HttpSession session, HttpServletResponse response) {
		String memEmail = (String) session.getAttribute("memEmail");

		Map<String, String> map = new HashMap<String, String>();
		
		map.put("askPg", askPg);
		map.put("memEmail", memEmail);
		
		
		
		//1페이지당 5개씩
		List<AskDTO> list = adminQNAService.getAskList(map);
		
		//페이징 처리
		AskPaging askPaging = adminQNAService.askPaging(map);
				
		//세션
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("askPaging", askPaging);
		mav.addObject("askPg", askPg);
		mav.addObject("list", list);
		mav.addObject("memEmail", memEmail);
		
		mav.setViewName("jsonView");
		
		return mav;
	}
	
}
