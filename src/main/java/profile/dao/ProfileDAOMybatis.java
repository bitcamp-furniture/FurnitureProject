package profile.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import member.bean.MemberDTO;
import profile.bean.AskDTO;
import profile.bean.CartDTO;
import profile.bean.OrderDTO;
import profile.bean.WishlistDTO;

@Repository
@Transactional
public class ProfileDAOMybatis implements ProfileDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public void askWrite(AskDTO askDTO) {
		sqlSession.insert("profileSQL.askWrite", askDTO);
		
	}

	@Override
	public List<AskDTO> getAskList(Map<String, Integer> map) {
		return sqlSession.selectList("profileSQL.getAskList", map);
	}

	@Override
	public int getTotalA() {
		return sqlSession.selectOne("profileSQL.getTotalA");
	}

	@Override
	public AskDTO getAsk(String seq) {
		return sqlSession.selectOne("profileSQL.getAsk", Integer.parseInt(seq));
	}

	@Override
	public MemberDTO getMember(int id) {
		return sqlSession.selectOne("profileSQL.getMember", id);
	}

	@Override
	public void updateMember(Map<String, String> map) {
		sqlSession.update("profileSQL.updateMember", map);
	}

	@Override
	public void updateContact(Map<String, String> map) {
		sqlSession.update("profileSQL.updateContact", map);
	}

	@Override
	public void updatePassword(Map<String, String> map) {
		sqlSession.update("profileSQL.updatePassword", map);
	}

	@Override
	public List<WishlistDTO> getWishlist(Map<String, Object> map) {
		return sqlSession.selectList("profileSQL.getWishlist", map);
	}

	@Override
	public void choiceDelete(int id) {
		sqlSession.delete("profileSQL.choiceDelete", id);
	}

	@Override
	public void totalDelete(String memberId) {
		sqlSession.delete("profileSQL.totalDelete", memberId);
	}

	@Override
	public int getTotalWishlist() {
		return sqlSession.selectOne("profileSQL.getTotalWishlist");
	}

	@Override
	public List<OrderDTO> getOrderList(Map<String, Object> map) {
		return sqlSession.selectList("profileSQL.getOrderList", map);
	}

	@Override
	public int getTotalOrderList(String id) {
		return sqlSession.selectOne("profileSQL.getTotalOrderList", id);
	}

	@Override
	public void updateOrderStatus(int id) {
		sqlSession.update("profileSQL.updateOrderStatus", id);
	}

	@Override
	public List<CartDTO> getCartList(Map<String, Object> map) {
		return sqlSession.selectList("profileSQL.getCartList", map);
	}

	@Override
	public int getTotalCartList(String id) {
		return sqlSession.selectOne("profileSQL.getTotalCartList", id);
	}

}
