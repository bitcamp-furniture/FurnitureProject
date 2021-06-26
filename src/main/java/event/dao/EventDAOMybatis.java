package event.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import event.bean.EventDTO;

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
}
