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
		sqlSession.delete("adminSQL.cancelSales", map);
		
	}

	@Override
	public List<AdminProductDTO> getSearchOrderList(Map<String, String> map) {
		return sqlSession.selectList("adminSQL.getSearchOrderList", map);
	}


}
