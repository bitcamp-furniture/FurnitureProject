package event.service;

import java.util.List;
import java.util.Map;

import event.bean.EventDTO;
import event.bean.EventListPaging;
import event.bean.NoticeDTO;
import event.bean.NoticeListPaging;
import event.bean.ProductManagingDTO;
import event.bean.ProductManagingListPaging;
import furniture.bean.ProductDTO;

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

	public List<ProductManagingDTO> getProductList(String pg);

	public ProductManagingListPaging ProductManagingListPaging(String pg);

	public double getproductReviewAvg(String id);

	public List<String> getProductColors(String id);

}
