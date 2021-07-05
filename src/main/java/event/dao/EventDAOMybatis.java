package event.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import event.bean.EventDTO;
import event.bean.FaQDTO;
import event.bean.NoticeDTO;
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
	public List<FaQDTO> faQList(Map<Object, Object> map) {
		
		return sqlSession.selectList("eventSQL.faQList",map);
	}

	@Override
	public int getTotalFaQList(String div) {
		return sqlSession.selectOne("eventSQL.getTotalFaQList",div);
	}

	@Override
	public List<FaQDTO> faQAllList(Map<Object, Object> map) {
		return sqlSession.selectList("eventSQL.FaQAllList",map);
	}

	@Override
	public int getTotalAllFaQList() {
		return sqlSession.selectOne("eventSQL.getTotalAllFaQList");
	}

	@Override
	public FaQDTO getFaQView(String id) {
		return sqlSession.selectOne("eventSQL.getFaQView", Integer.parseInt(id));
	}
}


