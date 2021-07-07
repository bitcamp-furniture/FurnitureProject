package admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.bean.AdminProductDTO;
import admin.bean.OrderControlPaging;
import admin.dao.AdminProductDAO;

@Service
public class AdminProductServiceImpl implements AdminProductService{
	@Autowired
	private AdminProductDAO adminProductDAO;
	@Autowired
	private OrderControlPaging orderControlPaging;

	//배송준비 버튼 클릭 시
	@Override
	public void deliveryReady(String[] check) {
		Map<String, String[]> map = new HashMap<String, String[]>();
		map.put("array", check);
		adminProductDAO.deliveryReady(map);
	}

	//입금 확인 처리 버튼 클릭 시
	@Override
	public void paymentConfirm(String[] check) {
		Map<String, String[]> map = new HashMap<String, String[]>();
		map.put("array", check);
		adminProductDAO.paymentConfirm(map);
		
	}
	
	@Override
	public List<AdminProductDTO> getOrderControl(String orderControlPg) {
		int endNum = Integer.parseInt(orderControlPg)*15;
		int startNum = endNum-14;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		//DB
		List<AdminProductDTO> list = adminProductDAO.getOrderControl(map);
		
		return list;
	}

	@Override
	public OrderControlPaging orderControlPaging(String orderControlPg) {
		int totalA = adminProductDAO.getTotalA();
		
		orderControlPaging.setCurrentPage(Integer.parseInt(orderControlPg));
		orderControlPaging.setPageBlock(5);
		orderControlPaging.setPageSize(15);
		orderControlPaging.setTotalA(totalA);
		orderControlPaging.makePagingHTML();
		
		return orderControlPaging;
	}

}
