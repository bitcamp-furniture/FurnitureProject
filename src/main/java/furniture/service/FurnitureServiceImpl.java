package furniture.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import furniture.bean.ProductDTO;
import furniture.bean.ProductImageDTO;
import furniture.bean.Product_OptionDTO;
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
	public Product_qna_paging product_qna_paging(String pg,String product_name) {
		int totalA = furnitureDAO.getTotalQNA(product_name);// 총글수

		product_qna_paging.setCurrentPage(Integer.parseInt(pg));// 현재페이지
		product_qna_paging.setPageBlock(3);
		product_qna_paging.setPageSize(3);
		product_qna_paging.setTotalA(totalA);
		product_qna_paging.makePagingHTML();
		return product_qna_paging;
	}

	// 상품문의 리스트 ... 상품id 담아가야 함
	@Override
	public List<Product_qnaDTO> productQnAListPaging(String pg ,String product_name) {
		//1페이지당 3개씩
	      int endNum = Integer.parseInt(pg)*3;
	      int startNum = endNum-2;

	      Map<String, String> map = new HashMap<String, String>();
	      map.put("startNum", startNum+"");
	      map.put("endNum", endNum+"");
	      map.put("product_name", product_name);
  		  return furnitureDAO.productQnAListPaging(map);
	}

	// 리뷰 리스트 ... 상품id를 담아가야 함
	@Override
	public List<ReviewDTO> reviewList(String pg ,String product_name) {
		//1페이지당 3개씩
	      int endNum = Integer.parseInt(pg)*3;
	      int startNum = endNum-2;
	      
	      Map<String, String> map = new HashMap<String, String>();
	      map.put("startNum", startNum+"");
	      map.put("endNum", endNum+"");
	      map.put("product_name", product_name);

		  return furnitureDAO.reviewList(map);
	}

	@Override
	public Review_paging review_paging(String pg,String product_name) {
		int totalA = furnitureDAO.getTotalReview(product_name);// 총글수

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
	@Override
	public List<ProductDTO> getBestSeller() {
		return furnitureDAO.getBestSeller();
	}
	@Override
	public void productRegistration(ProductDTO productDTO) {
		furnitureDAO.productRegistration(productDTO);
		
	}

	@Override
	public void productImageRegistration(ProductImageDTO productImageDTO) {
		furnitureDAO.productImageRegistration(productImageDTO);
	}

	@Override
	public ProductDTO getIdToOneData(Integer id) {
		return furnitureDAO.getIdToOneData(id);
	}

	@Override
	public List<ProductImageDTO> getIdToImageData(Integer id) {
		List<ProductImageDTO> list = furnitureDAO.getIdToImageData(id);
		System.out.println("퍼니쳐서비스id값"+id);
		return list;
	}

	@Override
	public int getProductId(String product_code) {
		
		return furnitureDAO.getProductId(product_code);
	}

	@Override
	public void productOptionRegistration(Product_OptionDTO product_OptionDTO) {
		furnitureDAO.productOptionRegistration(product_OptionDTO);
		
	}

	@Override
	public List<Product_OptionDTO> getIdOption(Integer id) {
		return furnitureDAO.getIdOption(id);
	}
	//최근 한달 리뷰수~~~
	@Override
	public List<ReviewDTO> reviewDay() {
		return furnitureDAO.reviewDay();
	}
}