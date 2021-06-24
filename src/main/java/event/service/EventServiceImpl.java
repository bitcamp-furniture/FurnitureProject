package event.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

/*
	// 리뷰 리스트 ... 상품id를 담아가야 함
	@Override
	public List<ReviewDTO> reviewList(String pg) {
		//1페이지당 3개씩
	      int endNum = Integer.parseInt(pg)*3;
	      int startNum = endNum-2;
	      
	      Map<String, Integer> map = new HashMap<String, Integer>();
	      map.put("startNum", startNum);
	      map.put("endNum", endNum);
		  return furnitureDAO.reviewList(map);
	}

	@Override
	public Review_paging review_paging(String pg) {
		int totalA = furnitureDAO.getTotalReview();// 총글수

		review_paging.setCurrentPage(Integer.parseInt(pg));// 현재페이지
		review_paging.setPageBlock(3);
		review_paging.setPageSize(3);
		review_paging.setTotalA(totalA);
		review_paging.makePagingHTML();
 
		return review_paging;
	}

*/
}
