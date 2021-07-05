package event.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import event.bean.EventDTO;
import event.bean.EventListPaging;
import event.bean.FaQAllListPaging;
import event.bean.FaQDTO;
import event.bean.FaQListPaging;
import event.bean.NoticeDTO;
import event.bean.NoticeListPaging;
import furniture.bean.ReviewDTO;
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

	public ProductManagingListPaging ProductManagingListPaging(String selectCate, String selectProduct, String productPg);

	public double getproductReviewAvg(String id);

	public List<String> getProductColors(String id);

	public void productListDelete(String[] check);

	public List<ProductManagingDTO> getSortedProductList(String selectCate, String selectProduct, String productPg);

	public List<FaQDTO> faQList(String pg, String div);

	public FaQListPaging faQListPaging(String pg, String div);

	public List<FaQDTO> faQAllList(String pg);

	public FaQDTO getFaQView(String id);

	public FaQAllListPaging faQAllListPaging(String pg);

}
