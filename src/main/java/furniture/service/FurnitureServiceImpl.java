package furniture.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import furniture.bean.Product_qnaDTO;
import furniture.bean.Product_qna_paging;
import furniture.bean.ReviewDTO;
import furniture.bean.Review_paging;
import furniture.dao.FurnitureDAO;

@Service
public class FurnitureServiceImpl implements FurnitureService {
	@Autowired
	private FurnitureDAO furnitureDAO;
	@Autowired
	private Product_qna_paging product_qna_paging;
	@Autowired
	private Review_paging review_paging;

	// 상품문의 작성 ... 상품id를 담아가야 함
	@Override
	public void productQnAWrite(Product_qnaDTO product_qnaDTO) {
		furnitureDAO.productQnAWrite(product_qnaDTO);
	}

	// 상품문의 리스트 페이징 ...
	@Override
	public Product_qna_paging product_qna_paging(String pg) {
		int totalA = furnitureDAO.getTotalQNA();// 총글수

		product_qna_paging.setCurrentPage(Integer.parseInt(pg));// 현재페이지
		product_qna_paging.setPageBlock(3);
		product_qna_paging.setPageSize(3);
		product_qna_paging.setTotalA(totalA);
		product_qna_paging.makePagingHTML();
 
		return product_qna_paging;
	}

	// 상품문의 리스트 ... 상품id 담아가야 함
	@Override
	public List<Product_qnaDTO> productQnAListPaging(String pg) {
		//1페이지당 3개씩
	      int endNum = Integer.parseInt(pg)*3;
	      int startNum = endNum-2;
	      
	      Map<String, Integer> map = new HashMap<String, Integer>();
	      map.put("startNum", startNum);
	      map.put("endNum", endNum);
  		  return furnitureDAO.productQnAListPaging(map);
	}

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

	@Override
	public List<ReviewDTO> reviewListTop5() {
		return furnitureDAO.reviewListTop5();
	}

}
