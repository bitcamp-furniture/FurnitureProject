package category.dao;

import java.util.List;
import java.util.Map;

import category.bean.ProductListDTO;
import furniture.bean.ProductDTO;

public interface ProductDAO {

	//상품등록
	public void categoryboardWrite(ProductDTO productDTO);
	//모든 상품 목록 다 불러오기
	public List<ProductDTO> getAllList();

	//선택된 상품 목록 불러오기
	public List<ProductListDTO> selectList(Map<Object, Object> map);
	//총 토탈
	public int getTotalProduct(String category);
	
	public List<ProductDTO> searchList(Map<Object, Object> map);
	
	public int getSearchProduct(String keyword);
	
	public List<ProductListDTO> sortedSelectList(Map<Object, Object> map);
	
	public int sortedListPagingA(String key, String category);

}
