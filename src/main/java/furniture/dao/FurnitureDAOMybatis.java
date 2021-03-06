package furniture.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import furniture.bean.ProductDTO;
import furniture.bean.ProductImageDTO;
import furniture.bean.Product_OptionDTO;
import furniture.bean.Product_qnaDTO;
import furniture.bean.ReviewDTO;
import profile.bean.CartDTO;
import profile.bean.WishlistDTO;

@Repository
@Transactional
public class FurnitureDAOMybatis implements FurnitureDAO {
	@Autowired
	private SqlSession sqlSession;

	// 상품 문의 작성
	@Override
	public void productQnAWrite(Product_qnaDTO product_qnaDTO) {
		System.out.println(product_qnaDTO);
		sqlSession.insert("productSQL.productQnAWrite", product_qnaDTO);
	}

	// 상품 문의 리스트
	@Override
	public List<Product_qnaDTO> productQnAList(String pg) {
		return sqlSession.selectList("productSQL.productQnAList");
	}

	// 상품 문의 총 갯수
	@Override
	public int getTotalQNA(String product_name) {
		return sqlSession.selectOne("productSQL.getTotalQNA", product_name);
	}

	// 리뷰 총 갯수
	@Override
	public int getTotalReview(String product_name) {
		return sqlSession.selectOne("productSQL.getTotalReview",product_name);
	}

	// 상품 리뷰 리스트
	@Override
	public List<ReviewDTO> reviewList(Map<String, String> map) {
		return sqlSession.selectList("productSQL.reviewList", map);
	}

	// 상품 문의 리스트 + 페이징
	@Override
	public List<Product_qnaDTO> productQnAListPaging(Map<String, String> map) {
		return sqlSession.selectList("productSQL.productQnAListPaging", map);
	}

	@Override
	public List<ReviewDTO> reviewListTop5() {
		return sqlSession.selectList("productSQL.reviewListTop5");
	}

	@Override
	public List<ProductDTO> getBestSeller() {
		return sqlSession.selectList("productSQL.getBestSeller");
	}
	@Override
	public void productRegistration(ProductDTO productDTO) {
		sqlSession.insert("productSQL.productRegistration",productDTO);
	}

	@Override
	public void productImageRegistration(ProductImageDTO productImageDTO) {
		sqlSession.insert("productSQL.productImageRegistration",productImageDTO);
	}

	@Override
	public ProductDTO getIdToOneData(Integer id) {
		return sqlSession.selectOne("productSQL.getIdToOneData", id);
	}

	@Override
	public List<ProductImageDTO> getIdToImageData(Integer id) {
		System.out.println("다오바티스id값"+id);
		return sqlSession.selectList("productSQL.getIdToImageData", id);
	}

	@Override
	public int getProductId(String product_code) {
		
		return sqlSession.selectOne("productSQL.getProductId", product_code);
	}

	@Override
	public void productOptionRegistration(Product_OptionDTO product_OptionDTO) {
		sqlSession.insert("productSQL.productOptionRegistration", product_OptionDTO);
	}


	@Override
	public List<Product_OptionDTO> getIdOption(Integer id) {
		return sqlSession.selectList("productSQL.getIdOption", id);
	}
	
	@Override
	public boolean wishQ(Map<String, Integer> wishMap) {
		WishlistDTO wishlistDTO = new WishlistDTO();
		wishlistDTO = sqlSession.selectOne("productSQL.wishQ", wishMap);
		boolean wishQ;
		if(wishlistDTO!=null) {
			wishQ = true;
		}else {
			wishQ = false;
		}
		System.out.println(wishlistDTO+"위시리스트DTO");
		System.out.println(wishQ+"wishQ");
		return wishQ;
	}	

	
	@Override
	public List<Integer> reviewDay() {
		return sqlSession.selectList("productSQL.reviewDay");
	}


	@Override
	public void addCart(Map<String, String> map) {
		sqlSession.selectList("productSQL.addCart", map);
	}

	@Override
	public boolean getcart(Map<String, String> map) {
		if(sqlSession.selectOne("productSQL.getcart", map)!=null){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public void updateCart(Map<String, String> map) {
		sqlSession.update("productSQL.updateCart", map);
	}

	@Override
	public void addWishButton(Map<String, Object> addWishMap) {
		sqlSession.insert("productSQL.addWishButton", addWishMap);
	}

	@Override
	public void deleteWishButton(Map<String, Object> deleteWishMap) {
		sqlSession.delete("productSQL.deleteWishButton", deleteWishMap);
		
		
	}

}
