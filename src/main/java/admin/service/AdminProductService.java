package admin.service;

import java.util.List;
import java.util.Map;

import admin.bean.AdminProductDTO;
import admin.bean.MemberListPaging;
import admin.bean.OrderControlPaging;
import member.bean.MemberDTO;

public interface AdminProductService {

	public List<AdminProductDTO> getOrderControl(String orderControlPg);
	
	public OrderControlPaging orderControlPaging(String orderControlPg);
	
	public void deliveryReady(String[] check);

	public void paymentConfirm(String[] check);

	public void delivery(String[] check);

	public void delay(String[] check);

	public void cancelSales(String[] check);

	public List<AdminProductDTO> getSearchOrderList(Map<String, String> map);
	
}
