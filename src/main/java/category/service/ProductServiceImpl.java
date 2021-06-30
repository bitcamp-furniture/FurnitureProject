package category.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import furniture.bean.ProductDTO;
import category.bean.ProductPaging;
import category.dao.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService
{

	@Autowired
	private HttpSession session;
	@Autowired
	private HttpServletResponse response;
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private ProductPaging productPaging;

	//상품등록하는 메소드
	public void categoryboardWrite(ProductDTO productDTO) {
		productDAO.categoryboardWrite(productDTO);
	}

	//모든 상품 리스트

	
	//셀렉트 상품리스트 페이지 카테고리 
	@Override
	public List<ProductDTO> selectList(String pg, String category) {
		//1페이지당 9개씩
		int endNum = Integer.parseInt(pg)*9;
		int startNum = endNum-8;
		
		Map<Object,Object> map = new HashMap<Object,Object>();
		map.put("category", category);
		map.put("startNum",startNum);
		map.put("endNum",endNum);
		return productDAO.selectList(map);	
	}

	@Override
	public List<ProductDTO> getAllList() {		
		return productDAO.getAllList();
	}

	//페이징 블럭 페이지 사이즈
	@Override
	public ProductPaging productPaging(String pg,String category) {
		int totalA  = productDAO.getTotalProduct(category);
		
		//여기 부분 수정해야댐(페이지 플록은 5개 정도로만해보고 페이지 사이즈는 9면 될라나?)
		productPaging.setCurrentPage(Integer.parseInt(pg));
		productPaging.setPageBlock(3);
		productPaging.setPageSize(9);
		productPaging.setTotalA(totalA);
		productPaging.makePagingHTML();
		
		return productPaging;
	}

	// 검색 키워드로 리스트 리턴
	@Override
	public List<ProductDTO> searchList(String pg, String keyword) {
		//1페이지당 9개씩
		int endNum = Integer.parseInt(pg)*9;
		int startNum = endNum-8;
		
		Map<Object,Object> map = new HashMap<Object,Object>();
		map.put("keyword", keyword);
		map.put("startNum",startNum);
		map.put("endNum",endNum);
		return productDAO.searchList(map);	
	}

	@Override
	public ProductPaging productSearchPaging(String pg, String keyword) {
		int totalA  = productDAO.getSearchProduct(keyword);
		
		//여기 부분 수정해야댐(페이지 플록은 5개 정도로만해보고 페이지 사이즈는 9면 될라나?)
		productPaging.setCurrentPage(Integer.parseInt(pg));
		productPaging.setPageBlock(3);
		productPaging.setPageSize(9);
		productPaging.setTotalA(totalA);
		productPaging.makePagingHTML();
		return productPaging;
	}



}
