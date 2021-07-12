package admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.bean.AdminProductDTO;
import admin.bean.DeliverCompletePaging;
import admin.bean.DeliveryPaging;
import admin.bean.DuringDeliverPaging;
import admin.bean.OrderCanclePaging;
import admin.bean.OrderControlPaging;
import admin.bean.PurchaseConfirmedPaging;
import admin.dao.AdminProductDAO;
import member.bean.MemberDTO;

@Service
public class AdminProductServiceImpl implements AdminProductService{
	@Autowired
	private AdminProductDAO adminProductDAO;
	@Autowired
	private OrderControlPaging orderControlPaging;
	@Autowired
	private DeliveryPaging deliveryPaging;
	@Autowired
	private DuringDeliverPaging duringDeliverPaging;
	@Autowired
	private DeliverCompletePaging deliverCompletePaging;
	@Autowired
	private OrderCanclePaging orderCanclePaging;
	@Autowired
	private PurchaseConfirmedPaging purchaseConfirmedPaging;

	//신규주문 띄우기
	@Override
	public List<AdminProductDTO> getOrderControl(String orderControlPg) {
		int endNum = Integer.parseInt(orderControlPg)*8;
		int startNum = endNum-7;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		//DB
		List<AdminProductDTO> list = adminProductDAO.getOrderControl(map);
		
		return list;
	}

	//신규주문 페이징
	@Override
	public OrderControlPaging orderControlPaging(String pg) {
		int totalA = adminProductDAO.getOrderTotal();
		
		orderControlPaging.setCurrentPage(Integer.parseInt(pg));
		orderControlPaging.setPageBlock(5);
		orderControlPaging.setPageSize(8);
		orderControlPaging.setTotalA(totalA);
		orderControlPaging.makePagingHTML();
		
		return orderControlPaging;
	}
	
	//배송준비 목록 띄우기
	@Override
	public List<AdminProductDTO> getDeliveryReady(String deliveryPg) {
		int endNum = Integer.parseInt(deliveryPg)*8;
		int startNum = endNum-7;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		//DB
		List<AdminProductDTO> list = adminProductDAO.getDeliveryReady(map);
		
		return list;
	}

	//배송준비 페이징
	@Override
	public DeliveryPaging deliveryPaging(String deliveryPg) {
		int totalA = adminProductDAO.getDeliveryTotal();
		
		deliveryPaging.setCurrentPage(Integer.parseInt(deliveryPg));
		deliveryPaging.setPageBlock(5);
		deliveryPaging.setPageSize(8);
		deliveryPaging.setTotalA(totalA);
		deliveryPaging.makePagingHTML();
		
		return deliveryPaging;
	}
	
	//배송중 목록 띄우기
	@Override
	public List<AdminProductDTO> getduringDeliver(String duringDeliverPg) {
		int endNum = Integer.parseInt(duringDeliverPg)*15;
		int startNum = endNum-14;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		//DB
		List<AdminProductDTO> list = adminProductDAO.getduringDeliver(map);
		
		return list;
	}

	//배송중 페이징
	@Override
	public DuringDeliverPaging duringDeliverPaging(String duringDeliverPg) {
		int totalA = adminProductDAO.getOrderTotal();
		
		duringDeliverPaging.setCurrentPage(Integer.parseInt(duringDeliverPg));
		duringDeliverPaging.setPageBlock(5);
		duringDeliverPaging.setPageSize(15);
		duringDeliverPaging.setTotalA(totalA);
		duringDeliverPaging.makePagingHTML();
		
		return duringDeliverPaging;
	}
	
	//배송완료 목록 띄우기
	@Override
	public List<AdminProductDTO> getDeliverComplete(String deliverCompletePg) {
		int endNum = Integer.parseInt(deliverCompletePg)*15;
		int startNum = endNum-14;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		//DB
		List<AdminProductDTO> list = adminProductDAO.getDeliverComplete(map);
		
		return list;
	}

	//배송완료 페이징
	@Override
	public DeliverCompletePaging deliverCompletePaging(String deliverCompletePg) {
		int totalA = adminProductDAO.getOrderTotal();
		
		deliverCompletePaging.setCurrentPage(Integer.parseInt(deliverCompletePg));
		deliverCompletePaging.setPageBlock(5);
		deliverCompletePaging.setPageSize(15);
		deliverCompletePaging.setTotalA(totalA);
		deliverCompletePaging.makePagingHTML();
		
		return deliverCompletePaging;
	}
	
	//취소처리 목록 띄우기
	@Override
	public List<AdminProductDTO> getOrderCancle(String orderCanclePg) {
		int endNum = Integer.parseInt(orderCanclePg)*15;
		int startNum = endNum-14;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		//DB
		List<AdminProductDTO> list = adminProductDAO.getOrderCancle(map);
		
		return list;
	}

	//취소처리 페이징
	@Override
	public OrderCanclePaging orderCanclePaging(String orderCanclePg) {
		int totalA = adminProductDAO.getOrderTotal();
		
		orderCanclePaging.setCurrentPage(Integer.parseInt(orderCanclePg));
		orderCanclePaging.setPageBlock(5);
		orderCanclePaging.setPageSize(15);
		orderCanclePaging.setTotalA(totalA);
		orderCanclePaging.makePagingHTML();
		
		return orderCanclePaging;
	}

	//구매확정 목록 띄우기
	@Override
	public List<AdminProductDTO> getPurchaseConfirmed(String purchaseConfirmedPg) {
		int endNum = Integer.parseInt(purchaseConfirmedPg)*15;
		int startNum = endNum-14;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		//DB
		List<AdminProductDTO> list = adminProductDAO.getPurchaseConfirmed(map);
		
		return list;
	}

	//구매확정 페이징
	@Override
	public PurchaseConfirmedPaging purchaseConfirmedPaging(String purchaseConfirmedPg) {
		int totalA = adminProductDAO.getOrderTotal();
		
		purchaseConfirmedPaging.setCurrentPage(Integer.parseInt(purchaseConfirmedPg));
		purchaseConfirmedPaging.setPageBlock(5);
		purchaseConfirmedPaging.setPageSize(15);
		purchaseConfirmedPaging.setTotalA(totalA);
		purchaseConfirmedPaging.makePagingHTML();
		
		return purchaseConfirmedPaging;
	}


	
	//-----------------------------------------------------------------------
	//발송처리 버튼 클릭 
	@Override
	public void invoice(Map<String, String> map) {
		adminProductDAO.invoice(map);
	}
	
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

	//배송중 버튼 클릭 시
	@Override
	public void delivery(String[] check) {
		Map<String, String[]> map = new HashMap<String, String[]>();
		map.put("array", check);
		adminProductDAO.delivery(map);
		
	}
	
	//발송완료 버튼 클릭 시
	@Override
	public void deliveryComplete(String[] check) {
		Map<String, String[]> map = new HashMap<String, String[]>();
		map.put("array", check);
		adminProductDAO.deliveryComplete(map);
		
	}
	
	//구매확정 버튼 클릭 시
	@Override
	public void purchaseConfirmed(String[] check) {
		Map<String, String[]> map = new HashMap<String, String[]>();
		map.put("array", check);
		adminProductDAO.purchaseConfirmed(map);
	}
	
	//포인트 지급
	@Override
	public void memberPointUpdate(String[] check) {
		Map<String, String[]> map = new HashMap<String, String[]>();
		map.put("array", check);
		adminProductDAO.memberPointUpdate(map);
		
	}


	//발송지연 처리
	@Override
	public void delay(String[] check) {
		Map<String, String[]> map = new HashMap<String, String[]>();
		map.put("array", check);
		adminProductDAO.delay(map);
		
	}

	//판매취소 처리
	@Override
	public void cancelSales(String odId) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("odId", odId);
		adminProductDAO.cancelSales(map);
		
	}
	
	//판매취소 처리 -- 포인트 회수
	@Override
	public void canclePoint(String[] check) {
		Map<String, String[]> map = new HashMap<String, String[]>();
		map.put("array", check);
		adminProductDAO.canclePoint(map);
		
	}
	
	//판매취소 처리 -- 누적금액 회수
	@Override
	public void cancleAmount(String[] check) {
		Map<String, String[]> map = new HashMap<String, String[]>();
		map.put("array", check);
		adminProductDAO.cancleAmount(map);
		
	}
	
	//판매취소 처리 (구매확정 외의 탭에 있는 주문취소 버튼)
	@Override
	public void cancelSalesComplete(String odId) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("odId", odId);
		adminProductDAO.cancelSalesComplete(map);
		
	}

	//주문 검색
	@Override
	public List<AdminProductDTO> getSearchOrderList(Map<String, String> map) {
		int endNum = Integer.parseInt(map.get("orderControlPg"))*8;
		int startNum = endNum-7;
		
		map.put("startNum", startNum+"");
		map.put("endNum", endNum+"");
		
		List<AdminProductDTO> list = adminProductDAO.getSearchOrderList(map);
		
		return list;
	}

	//membertable의 컬럼 amount -- 구매확정 버튼 클릭 시 소비자가 구매한 가구 가격 누적금액에 추가 
	@Override
	public void memberCumulativerAmount(String[] check) {
		Map<String, String[]> map = new HashMap<String, String[]>();
		map.put("array", check);
		adminProductDAO.memberCumulativerAmount(map);
		System.out.println(map.get("array"));
		
	
		
	}

	@Override
	public OrderControlPaging searchOrderControlPaging(Map<String, String> map) {
		int totalA = adminProductDAO.getSearchOrderTotal(map);
		
		orderControlPaging.setCurrentPage(Integer.parseInt(map.get("pg")));
		orderControlPaging.setPageBlock(5);
		orderControlPaging.setPageSize(8);
		orderControlPaging.setTotalA(totalA);
		orderControlPaging.makePagingHTML();
		
		return orderControlPaging;
	}

	@Override
	public List<AdminProductDTO> getSearchDeliveryReady(Map<String, String> map) {
		int endNum = Integer.parseInt(map.get("deliveryPg"))*8;
		int startNum = endNum-7;
		
		map.put("startNum", startNum+"");
		map.put("endNum", endNum+"");
		
		List<AdminProductDTO> list = adminProductDAO.getSearchDeliveryReady(map);
		
		return list;
	}

	@Override
	public DeliveryPaging searchDeliveryReadyPaging(Map<String, String> map) {
		int totalA = adminProductDAO.getSearchDeliveryTotal(map);
		
		deliveryPaging.setCurrentPage(Integer.parseInt(map.get("deliveryPg")));
		deliveryPaging.setPageBlock(5);
		deliveryPaging.setPageSize(8);
		deliveryPaging.setTotalA(totalA);
		deliveryPaging.makePagingHTML();
		
		return deliveryPaging;
	}



}
