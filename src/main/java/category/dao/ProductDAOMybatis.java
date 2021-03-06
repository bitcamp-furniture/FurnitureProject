package category.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import category.bean.ProductListDTO;
import furniture.bean.ProductDTO;

@Transactional
@Repository
public class ProductDAOMybatis implements ProductDAO{
	@Autowired
	private SqlSession sqlSession;
	
	//상품등록 하는 메소드
	@Override
	public void categoryboardWrite(ProductDTO productDTO) {
		sqlSession.insert("productSQL.categoryboardwrite",productDTO);
	}
	
	//모든 리스트들을 가져오는 메소드
	@Override
	public List<ProductDTO> getAllList() {
		List<ProductDTO> list = sqlSession.selectList("productSQL.getAllList");
		return list;
	}
	//선택한 리스트만 가져오는 메소드
	@Override
	public List<ProductListDTO> selectList(Map<Object, Object> map) {
		return sqlSession.selectList("productSQL.selectList", map);
	}

	//모든 상품 총합을 가져오는 메소드
	@Override
	public int getTotalProduct(String category) {
		return sqlSession.selectOne("productSQL.getTotalProduct", category);
	}

	// 검색 결과 리트스를 가져오는 메소드
	@Override
	public List<ProductDTO> searchList(Map<Object, Object> map) {
		return sqlSession.selectList("productSQL.searchList", map);
	}

	@Override
	public int getSearchProduct(String keyword) {
		return sqlSession.selectOne("productSQL.getSearchProduct", keyword);
	}

	@Override
	public List<ProductListDTO> sortedSelectList(Map<Object, Object> map) {
		String key = (String)map.get("key");
		
		// 1 최신순 2 가격낮은순 3 가격높은순
		if(key.equals("1")) {
			map.put("sortOption", "id");
			map.put("orderBy", "desc");
			return sqlSession.selectList("productSQL.sortedSelectList", map);
		} else if(key.equals("2")) {
			map.put("sortOption", "product_price");
			map.put("orderBy", "asc");
			return sqlSession.selectList("productSQL.sortedSelectList", map);
		} else if(key.equals("3")) {
			map.put("sortOption", "product_price");
			map.put("orderBy", "desc");
			return sqlSession.selectList("productSQL.sortedSelectList", map);
		}
		return sqlSession.selectList("productSQL.sortedSelectList", map);
	}

	@Override
	public int sortedListPagingA(String key, String category) {
		return sqlSession.selectOne("productSQL.getTotalProduct", category);
	}




}
