package admin.dao;

import java.util.List;
import java.util.Map;

import admin.bean.AdminProductDTO;
import member.bean.MemberDTO;

public interface AdminProductDAO {

	public int getTotalA();

	public List<AdminProductDTO> getOrderControl(Map<String, Integer> map);

	public void paymentConfirm(Map<String, String[]> map);

	public void deliveryReady(Map<String, String[]> map);

	public void delivery(Map<String, String[]> map);

	public void delay(Map<String, String[]> map);

	public void cancelSales(Map<String, String[]> map);

	public void deliveryComplete(Map<String, String[]> map);
	
	public void purchaseConfirmed(Map<String, String[]> map);

	public void invoice(Map<String, String> map);

	public List<AdminProductDTO> getSearchOrderList(Map<String, String> map);

	public List<AdminProductDTO> getdeliveryReady(Map<String, Integer> map);

	public List<AdminProductDTO> getduringDeliver(Map<String, Integer> map);

	public List<AdminProductDTO> getDeliverComplete(Map<String, Integer> map);

	public List<AdminProductDTO> getOrderCancle(Map<String, Integer> map);

	public List<AdminProductDTO> getPurchaseConfirmed(Map<String, Integer> map);

	public void memberCumulativerAmount(Map<String, String[]> map);

	public void canclePoint(Map<String, String[]> map);

	public void cancleAmount(Map<String, String[]> map);

	public void cancelSalesComplete(Map<String, String[]> map);

	public void memberPointUpdate(Map<String, String[]> map);

}
