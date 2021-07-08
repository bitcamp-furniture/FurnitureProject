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

}
