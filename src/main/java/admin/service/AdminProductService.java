package admin.service;

import java.util.List;
import java.util.Map;

import admin.bean.AdminProductDTO;
import admin.bean.DeliverCompletePaging;
import admin.bean.DeliveryPaging;
import admin.bean.DuringDeliverPaging;
import admin.bean.MemberListPaging;
import admin.bean.OrderCanclePaging;
import admin.bean.OrderControlPaging;
import admin.bean.PurchaseConfirmedPaging;
import member.bean.MemberDTO;

public interface AdminProductService {

	public List<AdminProductDTO> getOrderControl(String orderControlPg);
	
	public OrderControlPaging orderControlPaging(String orderControlPg);
	
	public DeliveryPaging deliveryPaging(String deliveryPg);
	
	public void deliveryReady(String[] check);

	public void paymentConfirm(String[] check);

	public void delivery(String[] check);

	public void delay(String[] check);

	public void cancelSales(String[] check);

	public List<AdminProductDTO> getSearchOrderList(Map<String, String> map);

	public void invoice(Map<String,String> map);

	public void deliveryComplete(String[] check);

	public void purchaseConfirmed(String[] check);

	public List<AdminProductDTO> getdeliveryReady(String deliveryPg);

	public List<AdminProductDTO> getduringDeliver(String duringDeliverPg);

	public DuringDeliverPaging duringDeliverPaging(String duringDeliverPg);

	public List<AdminProductDTO> getDeliverComplete(String deliverCompletePg);

	public DeliverCompletePaging deliverCompletePaging(String deliverCompletePg);

	public List<AdminProductDTO> getOrderCancle(String orderCanclePg);

	public OrderCanclePaging orderCanclePaging(String orderCanclePg);

	public List<AdminProductDTO> getPurchaseConfirmed(String purchaseConfirmedPg);

	public PurchaseConfirmedPaging purchaseConfirmedPaging(String purchaseConfirmedPg);

	public void memberCumulativerAmount(String[] check);

	public void canclePoint(String[] check);

	public void cancleAmount(String[] check);

	public void cancelSalesComplete(String[] check);

	public void memberPointUpdate(String[] check);


	
}
