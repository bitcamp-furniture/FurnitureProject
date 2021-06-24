package event.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

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

import event.service.EventService;

// 판매자 이벤트 관리
@Controller
@RequestMapping(value = "/admin/event")
public class EventController {
	@Autowired
	private EventService eventService;

	
	@RequestMapping(value = "/eventList", method = RequestMethod.GET)
	public String eventList(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {
		System.out.println("??");
		model.addAttribute("pg", pg);
		model.addAttribute("adminDisplay", "/admin/event/eventListAdmin.jsp");
		
		return "../adminIndex";
	}

	


}
