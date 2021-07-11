package admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import admin.bean.AdminProductDTO;
import member.bean.MemberDTO;

@Repository
@Transactional
public class AdminProductDAOMybatis implements AdminProductDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int getTotalA() {
		return sqlSession.selectOne("adminSQL.getTotalA");
	}

	@Override
	public List<AdminProductDTO> getOrderControl(Map<String, Integer> map) {
		return sqlSession.selectList("adminSQL.getOrderControl", map);
	}
	
	@Override
	public void invoice(Map<String, String> map) {
		sqlSession.update("adminSQL.invoice", map);
		
	}
	
	@Override
	public void deliveryReady(Map<String, String[]> map) {
		sqlSession.update("adminSQL.deliveryReady", map);
	}

	@Override
	public void paymentConfirm(Map<String, String[]> map) {
		sqlSession.update("adminSQL.paymentConfirm", map);
		
	}

	@Override
	public void delivery(Map<String, String[]> map) {
		sqlSession.update("adminSQL.delivery", map);
		
	}

	@Override
	public void delay(Map<String, String[]> map) {
		sqlSession.update("adminSQL.delay", map);
		
	}

	@Override
	public void cancelSales(Map<String, String[]> map) {
		sqlSession.update("adminSQL.cancelSales", map);
		
	}
	
	@Override
	public void deliveryComplete(Map<String, String[]> map) {
		sqlSession.update("adminSQL.deliveryComplete", map);
		
	}

	@Override
	public void purchaseConfirmed(Map<String, String[]> map) {
		sqlSession.update("adminSQL.purchaseConfirmed", map);
		
	}

	@Override
	public List<AdminProductDTO> getSearchOrderList(Map<String, String> map) {
		return sqlSession.selectList("adminSQL.getSearchOrderList", map);
	}

	@Override
	public List<AdminProductDTO> getdeliveryReady(Map<String, Integer> map) {
		return sqlSession.selectList("adminSQL.getDeliveryReady", map);
	}

	@Override
	public List<AdminProductDTO> getduringDeliver(Map<String, Integer> map) {
		return sqlSession.selectList("adminSQL.getDuringDeliver", map);
	}

	@Override
	public List<AdminProductDTO> getDeliverComplete(Map<String, Integer> map) {
		return sqlSession.selectList("adminSQL.getDeliverComplete", map);
	}

	@Override
	public List<AdminProductDTO> getOrderCancle(Map<String, Integer> map) {
		return sqlSession.selectList("adminSQL.getOrderCancle", map);
	}

	@Override
	public List<AdminProductDTO> getPurchaseConfirmed(Map<String, Integer> map) {
		return sqlSession.selectList("adminSQL.getPurchaseConfirmed", map);
	}
	
	@Override
	public void memberCumulativerAmount(Map<String, String[]> map) {
		sqlSession.update("adminSQL.memberCumulativerAmount", map);
		
	}

}
