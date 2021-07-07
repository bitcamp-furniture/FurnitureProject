package furniture.dao;

import java.util.List;
import java.util.Map;

import furniture.bean.ProductDTO;
import furniture.bean.ProductImageDTO;
import furniture.bean.Product_OptionDTO;
import furniture.bean.Product_qnaDTO;
import furniture.bean.ReviewDTO;
import profile.bean.CartDTO;

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


	public List<Integer> reviewDay();

	public boolean wishQ(Map<String, Integer> wishMap);

	public void addWishButton(Map<String, Object> addWishMap);

	public void deleteWishButton(Map<String, Object> deleteWishMap);

	public List<Product_OptionDTO> getIdOption(Integer id);

    public void addCart(Map<String, String> map);

    public boolean getcart(Map<String, String> map);

	public void updateCart(Map<String, String> map);

}