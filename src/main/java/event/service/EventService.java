package event.service;

import java.util.List;
import java.util.Map;

import event.bean.EventDTO;
import event.bean.EventListPaging;


public interface EventService {

	public List<EventDTO> getEventList(String pg);

	public EventListPaging eventListPaging(String pg);


}
