package event.dao;

import java.util.List;
import java.util.Map;

import event.bean.EventDTO;
import event.bean.FaQDTO;
import event.bean.NoticeDTO;

public interface EventDAO {

	public List<EventDTO> getEventList(Map<String, Integer> map);

	public int getTotalEventList();

	public void deleteEvent(String id);

	public void eventWrite(EventDTO eventDTO);

	public EventDTO getEventView(String id);

	public List<EventDTO> AllListBanner();

	public List<NoticeDTO> getNoticeList(Map<String, Integer> map);

	public int getTotalNoticeList();
	 
	public NoticeDTO getNoticeView(String id);
	
	public List<FaQDTO> faQList(Map<Object, Object> map);

	public int getTotalFaQList(String div);
	
	public List<FaQDTO> faQAllList(Map<Object, Object> map);

	public int getTotalAllFaQList();

	public FaQDTO getFaQView(String id);
}
