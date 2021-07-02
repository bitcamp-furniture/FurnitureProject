package furniture.service;

import java.util.List;
import java.util.Map;

import furniture.bean.ProductDTO;
import furniture.bean.ProductImageDTO;
import furniture.bean.Product_OptionDTO;
import furniture.bean.Product_qnaDTO;
import furniture.bean.Product_qna_paging;
import furniture.bean.ReviewDTO;
import furniture.bean.Review_paging;

public interface FurnitureService {

	// 상품 문의
	public void productQnAWrite(Product_qnaDTO product_qnaDTO);

	public List<Product_qnaDTO> productQnAListPaging(String pg, String product_name);
	
	public Product_qna_paging product_qna_paging(String pg);

	public List<ReviewDTO> reviewList(String pg, String product_name);

	public Review_paging review_paging(String pg);

	public List<ReviewDTO> reviewListTop5();

	public List<ProductDTO> getBestSeller();

	public void productRegistration(ProductDTO productDTO);

	public void productImageRegistration(ProductImageDTO productImageDTO);

	public ProductDTO getIdToOneData(Integer id);

	public List<ProductImageDTO> getIdToImageData(Integer id);

	public int getProductId(String product_code);

	public void productOptionRegistration(Product_OptionDTO product_OptionDTO);

	
}
