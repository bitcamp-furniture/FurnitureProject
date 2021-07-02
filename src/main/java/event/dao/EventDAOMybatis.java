package event.dao;

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
}


