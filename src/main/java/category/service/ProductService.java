package category.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import furniture.bean.ProductDTO;
import category.bean.ProductListDTO;
import category.bean.ProductPaging;
import category.bean.SortedListPaging;


public interface ProductService {

	//상품 등록하는 메소드
	public void categoryboardWrite(ProductDTO productDTO);
	
	//모든 리스트 출력하는 메소드
	public List<ProductDTO> getAllList();

	//페이지 값이랑 카테고리를 넘기기 
	public List<ProductListDTO> selectList(String pg, String category);

	public ProductPaging productPaging(String pg, String category);

	public List<ProductDTO> searchList(String pg, String keyword);

	public ProductPaging productSearchPaging(String pg, String keyword);

	public List<ProductListDTO> sortedSelectList(String pg, String key, String category);

	public SortedListPaging sortedListPaging(String pg, String key, String category);



}
