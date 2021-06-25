package event.dao;

import java.util.List;
import java.util.Map;

import event.bean.EventDTO;

public interface EventDAO {

	public List<EventDTO> getEventList(Map<String, Integer> map);

	public int getTotalEventList();

	public void deleteEvent(String id);

	public void eventWrite(EventDTO eventDTO);

}
