package furniture.dao;

import java.util.List;
import java.util.Map;

import furniture.bean.ProductDTO;
import furniture.bean.ProductImageDTO;
import furniture.bean.Product_OptionDTO;
import furniture.bean.Product_qnaDTO;
import furniture.bean.ReviewDTO;

public interface FurnitureDAO {

	public void productQnAWrite(Product_qnaDTO product_qnaDTO);

	public List<Product_qnaDTO> productQnAList(String pg);

	public int getTotalQNA(String product_name);

	public List<ReviewDTO> reviewList(Map<String, String> map);

	public List<Product_qnaDTO> productQnAListPaging(Map<String, String> map);

	public int getTotalReview(String product_name);

	public List<ReviewDTO> reviewListTop5();

	public List<ProductDTO> getBestSeller();

	public void productRegistration(ProductDTO productDTO);

	public void productImageRegistration(ProductImageDTO productImageDTO);

	public ProductDTO getIdToOneData(Integer id);

	public List<ProductImageDTO> getIdToImageData(Integer id);

	public int getProductId(String product_code);

	public void productOptionRegistration(Product_OptionDTO product_OptionDTO);

	public List<ReviewDTO> reviewDay();


}