package event.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import event.bean.EventDTO;
import event.bean.NoticeDTO;
import event.bean.ProductManagingDTO;
import furniture.bean.ProductDTO;
import furniture.bean.ReviewDTO;

@Repository
@Transactional
public class EventDAOMybatis implements EventDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<EventDTO> getEventList(Map<String, Integer> map) {
		return sqlSession.selectList("eventSQL.getEventList", map);
	}

	@Override
	public int getTotalEventList() {
		return sqlSession.selectOne("eventSQL.getTotalEventList");
	}

	@Override
	public void deleteEvent(String id) {
		sqlSession.delete("eventSQL.deleteEvent", id);
	}

	@Override
	public void eventWrite(EventDTO eventDTO) {
		sqlSession.insert("eventSQL.eventWrite", eventDTO);

	}

	@Override
	public EventDTO getEventView(String id) {
		return sqlSession.selectOne("eventSQL.getEventView", id);
	}

	
	@Override
   public List<EventDTO> AllListBanner() {
      return sqlSession.selectList("eventSQL.AllListBanner");
   }

	@Override
	public List<NoticeDTO> getNoticeList(Map<String, Integer> map) {
		return sqlSession.selectList("eventSQL.getNoticeList", map);
	}

	@Override
	public int getTotalNoticeList() {
		return sqlSession.selectOne("eventSQL.getTotalNoticeList");
	}
	
	@Override
	public NoticeDTO getNoticeView(String id) {
		return sqlSession.selectOne("eventSQL.getNoticeView", id);
	}

	@Override
	public List<ProductManagingDTO> getProductList(Map<String, Integer> map) {
		return sqlSession.selectList("eventSQL.getProductList", map);
	}

	@Override
	public int getProductPagingA() {
		return sqlSession.selectOne("eventSQL.getProductPagingA");
	}

	// 리뷰가 존재하면 평균 점수를 가져오고, 없으면 0을 리턴한다
	@Override
	public double getproductReviewAvg(String id) {
		double getproductReviewAvg = 0.0;
		List<ReviewDTO> isNull = sqlSession.selectList("eventSQL.isNullProductReview", Integer.parseInt(id));

		if(isNull.size() != 0) {
			getproductReviewAvg = sqlSession.selectOne("eventSQL.getproductReviewAvg", Integer.parseInt(id));
		}
		return getproductReviewAvg;
	}

	@Override
	public List<String> getProductColors(String id) {
		return sqlSession.selectList("eventSQL.getProductColors", Integer.parseInt(id));
	}

	@Override
	public void productListDelete(Map<String, String[]> map) {
		sqlSession.delete("eventSQL.productListDelete",map);
	}

	@Override
	public List<ProductManagingDTO> getSortedProductList(Map<String, Object> map) {
		String selectCate = (String) map.get("selectCate");
		String selectProduct = (String) map.get("selectProduct");

		
		// Map<String, String> map = new HashMap<String, String>();
		if(selectCate.equals("all")) { // 카테고리 전체(where절 x)
			if(selectProduct.equals("1")) { 
				map.put("sortOption", "product_price");
				map.put("orderBy", "desc");
			} else if(selectProduct.equals("2")) { 
				map.put("sortOption", "product_price");
				map.put("orderBy", "asc");
			} else if(selectProduct.equals("3")) { 
				map.put("sortOption", "review");
				map.put("orderBy", "desc");
			} else if(selectProduct.equals("4")) { 
				map.put("sortOption", "review");
				map.put("orderBy", "asc");
			}
			System.out.println(map);
			
			return sqlSession.selectList("eventSQL.getSortedProductListNOCATEreview", map);

		} else { //selectCate = 100, 200, 300.... //  where product_category2 = #{selectCate}
			//map.put("selectCate", selectCate);

			// selectProduct = 1(가격높은순), 2(가격낮은순), 3(평점높은순), 4(평점낮은순)
			if(selectProduct.equals("1")) { 
				map.put("sortOption", "product_price");
				map.put("orderBy", "desc");
			} else if(selectProduct.equals("2")) { 
				map.put("sortOption", "product_price");
				map.put("orderBy", "asc");
			} else if(selectProduct.equals("3")) { 
				map.put("sortOption", "review");
				map.put("orderBy", "desc");
			} else if(selectProduct.equals("4")) { 
				map.put("sortOption", "review");
				map.put("orderBy", "asc");
			}
			System.out.println(map);
			return sqlSession.selectList("eventSQL.getSortedProductListYESCATEreview", map);

		}
	}
}


