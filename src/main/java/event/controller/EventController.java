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

import event.bean.EventDTO;
import event.bean.EventListPaging;
import event.service.EventService;

// 판매자 이벤트 관리
@Controller
@RequestMapping(value = "/admin/event")
public class EventController {
	@Autowired
	private EventService eventService;

	// eventListAdmin를 여는 메소드
	@RequestMapping(value = "/eventList", method = RequestMethod.GET)
	public String eventList(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {
		model.addAttribute("pg", pg);
		model.addAttribute("adminDisplay", "/admin/event/eventListAdmin.jsp");

		return "/admin/adminIndex";
	}

	// DB에서 pg값을 가지고 가서 이벤트의 리스트를 긁어오는 메소드
	@ResponseBody
	@RequestMapping(value = "/getEventList", method = RequestMethod.POST)
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

	// 이벤트 등록 adminDisplay랑 연결
	@RequestMapping(value = "/eventWriteForm", method = RequestMethod.GET) // Resolver를 타고 가지말아라
	public String categoryAllList(Model model) {

		model.addAttribute("adminDisplay", "/admin/event/eventWriteForm.jsp");
		return "/admin/adminIndex";

	}

	// 이벤트 등록 페이지 뷰~~ 만들어야댐 이미지도 받고
	@ResponseBody
	@RequestMapping(value = "/eventWrite", method = RequestMethod.POST)
	public void eventWrite(@ModelAttribute EventDTO eventDTO, @RequestParam MultipartFile event_banner,
			@RequestParam("event_detail[]") List<MultipartFile> list, Model model) {
		String filePath = "C:\\code\\Spring\\workspace\\FurnitureProject\\src\\main\\webapp\\storage\\event";
		// 이건 배너 이미지
		String bannerName = event_banner.getOriginalFilename();
		// 배너파일 생성 후후훗
		File bannerfile = new File(filePath, bannerName);
		// 상세파일 생성
		File detailfile;

		try {
			FileCopyUtils.copy(event_banner.getInputStream(), new FileOutputStream(bannerfile));
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 배너이미지 이름을 eventDTO.setEvent_img_banner에 넣어넣어
		eventDTO.setEvent_img_banner(bannerName);

		// 상세이미지 값이 있다면 쭉 넣어야되고
		for (MultipartFile detailImg : list) {
			bannerName = detailImg.getOriginalFilename();
			detailfile = new File(filePath, bannerName);

			// 파일복사
			try {
				FileCopyUtils.copy(detailImg.getInputStream(), new FileOutputStream(detailfile));
			} catch (IOException e) {
				e.printStackTrace();
			}

			eventDTO.setEvent_img_detail(bannerName);

			eventService.eventWrite(eventDTO);
		}
	}

	// 리스트 삭제
	@ResponseBody
	@RequestMapping(value = "/deleteEvent", method = RequestMethod.POST)
	public void deleteEvent(@RequestParam String id) {
		eventService.deleteEvent(id);
	}

}
