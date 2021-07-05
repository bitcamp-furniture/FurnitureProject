package event.service;

import java.util.List;
import java.util.Map;

import event.bean.EventDTO;
import event.bean.EventListPaging;
import event.bean.FaQAllListPaging;
import event.bean.FaQDTO;
import event.bean.FaQListPaging;
import event.bean.NoticeDTO;
import event.bean.NoticeListPaging;

public interface EventService {

	public List<EventDTO> getEventList(String pg);

	public EventListPaging eventListPaging(String pg);

	public void deleteEvent(String id);

	public void eventWrite(EventDTO eventDTO);

	public EventDTO getEventView(String id);

	public List<EventDTO> AllListBanner();

	public List<NoticeDTO> getNoticeList(String pg);

	public NoticeListPaging noticeListPaging(String pg);

	public NoticeDTO getNoticeView(String id);

	public List<FaQDTO> faQList(String pg, String div);

	public FaQListPaging faQListPaging(String pg, String div);

	public List<FaQDTO> faQAllList(String pg);

	public FaQDTO getFaQView(String id);

	public FaQAllListPaging faQAllListPaging(String pg);


}
