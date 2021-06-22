package furniture.dao;

import java.util.List;
import java.util.Map;

import furniture.bean.ProductDTO;
import furniture.bean.Product_qnaDTO;
import furniture.bean.ReviewDTO;

public interface FurnitureDAO {

	public void productQnAWrite(Product_qnaDTO product_qnaDTO);

	public List<Product_qnaDTO> productQnAList(String pg);

	public int getTotalQNA();

	public List<ReviewDTO> reviewList(Map<String, Integer> map);

	public List<Product_qnaDTO> productQnAListPaging(Map<String, Integer> map);

	public int getTotalReview();

	public List<ReviewDTO> reviewListTop5();

	public List<ProductDTO> getBestSeller();

}
