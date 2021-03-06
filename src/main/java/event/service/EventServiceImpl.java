package event.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import event.bean.EventDTO;
import event.bean.EventListPaging;
import event.bean.FaQAllListPaging;
import event.bean.FaQDTO;
import event.bean.FaQListPaging;
import event.bean.NoticeDTO;
import event.bean.NoticeListPaging;
import event.bean.ProductManagingDTO;
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
	@Autowired
	private NoticeListPaging noticeListPaging;
	@Autowired
	private event.bean.ProductManagingListPaging productManagingListPaging;
	@Autowired
	private FaQListPaging faQListPaging;
	@Autowired
	private FaQAllListPaging faQAllListPaging;

	@Override
	public List<EventDTO> getEventList(String pg) {
		// 1페이지당 5개씩
		int endNum = Integer.parseInt(pg) * 5;
		int startNum = endNum - 4;

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

	@Override
	public void deleteEvent(String id) {
		eventDAO.deleteEvent(id);
	}

	// 이벤트 등록
	@Override
	public void eventWrite(EventDTO eventDTO) {
		eventDAO.eventWrite(eventDTO);
	}

	@Override
	public EventDTO getEventView(String id) {
		return eventDAO.getEventView(id);
	}
	
	@Override
   public List<EventDTO> AllListBanner() {
      return eventDAO.AllListBanner();
   
   }

	////////////////////////////// 공지 //////////////////////////////
	@Override
	public List<NoticeDTO> getNoticeList(String pg) {
		// 1페이지당 5개씩
		int endNum = Integer.parseInt(pg) * 10;
		int startNum = endNum - 9;

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);

		return eventDAO.getNoticeList(map);
	}

	@Override
	public NoticeListPaging noticeListPaging(String pg) {
		int totalA = eventDAO.getTotalNoticeList();// 총글수
		
		noticeListPaging.setCurrentPage(Integer.parseInt(pg));// 현재페이지
		noticeListPaging.setPageBlock(3);
		noticeListPaging.setPageSize(10);
		noticeListPaging.setTotalA(totalA);
		noticeListPaging.makePagingHTML();
		
		return noticeListPaging;
	}

	@Override
	public NoticeDTO getNoticeView(String id) {
		return eventDAO.getNoticeView(id);
	}
	
	////////////////////////////// 상품관리 //////////////////////////////
	@Override
	public List<ProductManagingDTO> getProductList(String pg) {
		// 1페이지당 10개씩
		int endNum = Integer.parseInt(pg) * 15;
		int startNum = endNum - 14;

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);

		return eventDAO.getProductList(map);
	}

	@Override
	public event.bean.ProductManagingListPaging ProductManagingListPaging(String selectCate, String selectProduct, String productPg) {
		if(!selectCate.equals("0")) {
			productManagingListPaging.setFlag(1);
		}else {
			productManagingListPaging.setFlag(0);
		}
		
		int totalA = eventDAO.getProductPagingA(selectCate, selectProduct);
		
		productManagingListPaging.setCurrentPage(Integer.parseInt(productPg));
		productManagingListPaging.setPageBlock(5);
		productManagingListPaging.setPageSize(15);
		productManagingListPaging.setTotalA(totalA);
		productManagingListPaging.makePagingHTML();
		
		return productManagingListPaging;
	}

	@Override
	public double getproductReviewAvg(String id) {
		return eventDAO.getproductReviewAvg(id);
	}

	@Override
	public List<String> getProductColors(String id) {
		// 리스트 형식으로 데이터 받아와서 여기서 String[]으로 만들기??
		
		List<String> colors = eventDAO.getProductColors(id);
		return colors;
	}

	@Override
	public void productListDelete(String[] check) {
	      Map<String,String[]>map = new HashMap<String,String[]>();
	      map.put("array",check);
	      
	      eventDAO.productListDelete(map);   
	}

	@Override
	public List<ProductManagingDTO> getSortedProductList(String selectCate, String selectProduct, String productPg) {
		// 1페이지당 10개씩
		int endNum = Integer.parseInt(productPg) * 15;
		int startNum = endNum - 14;

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		map.put("productPg", productPg);
		map.put("selectProduct", selectProduct);
		map.put("selectCate", selectCate);


		return eventDAO.getSortedProductList(map);
	}

	@Override
	public List<FaQDTO> faQList(String pg, String div) {
		//1페이지당 9개씩
		int endNum = Integer.parseInt(pg)*9;
		int startNum = endNum-8;
		Map<Object,Object> map = new HashMap<Object,Object>();
		map.put("div",div);
		map.put("startNum",startNum);
		map.put("endNum",endNum);
		return eventDAO.faQList(map);	
	}
	
	//해당 페이징
	@Override
	public FaQListPaging faQListPaging(String pg, String div) {
		
		int totalFAQ = eventDAO.getTotalFaQList(div);
		
		faQListPaging.setCurrentPage(Integer.parseInt(pg));
		faQListPaging.setPageBlock(3);
		faQListPaging.setPageSize(9);
		faQListPaging.setTotalA(totalFAQ);
		faQListPaging.makePagingHTML();
		return faQListPaging;
	}
	//모든 리스트 페이징FaQAllList
	@Override
	public List<FaQDTO> faQAllList(String pg) {
		int endNum = Integer.parseInt(pg)*9;
		int startNum = endNum-8;
		
		Map<Object,Object> map = new HashMap<Object,Object>();
		map.put("startNum",startNum);
		map.put("endNum",endNum);
		return eventDAO.faQAllList(map);	
	}
	
	@Override
	public FaQAllListPaging faQAllListPaging(String pg) {
		int totalFAQ = eventDAO.getTotalAllFaQList();// 총글수 
		
		faQAllListPaging.setCurrentPage(Integer.parseInt(pg));
		faQAllListPaging.setPageBlock(3);
		faQAllListPaging.setPageSize(9);
		faQAllListPaging.setTotalA(totalFAQ);
		faQAllListPaging.makePagingHTML();
		return faQAllListPaging;
	}

	@Override
	public FaQDTO getFaQView(String id) {
		return eventDAO.getFaQView(id);
	}
}
