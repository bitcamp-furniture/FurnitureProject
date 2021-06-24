package event.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import event.bean.EventDTO;
import event.bean.EventListPaging;
import event.dao.EventDAO;
import furniture.bean.ProductDTO;
import furniture.bean.Product_qnaDTO;
import furniture.bean.Product_qna_paging;
import furniture.bean.ReviewDTO;
import furniture.bean.Review_paging;
import furniture.dao.FurnitureDAO;

@Service
public class EventServiceImpl implements EventService {
	@Autowired
	private EventDAO eventDAO;
	@Autowired
	private EventListPaging eventListPaging;

	@Override
	public List<EventDTO> getEventList(String pg) {
		//1페이지당 5개씩
		int endNum = Integer.parseInt(pg)*5;
		int startNum = endNum-4;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		return eventDAO.getEventList(map);
	}

	@Override
	public EventListPaging eventListPaging(String pg) {
		int totalA = eventDAO.getTotalEventList();// 총글수

		eventListPaging.setCurrentPage(Integer.parseInt(pg));// 현재페이지
		eventListPaging.setPageBlock(3);
		eventListPaging.setPageSize(5);
		eventListPaging.setTotalA(totalA);
		eventListPaging.makePagingHTML();

		return eventListPaging;
	}

}
