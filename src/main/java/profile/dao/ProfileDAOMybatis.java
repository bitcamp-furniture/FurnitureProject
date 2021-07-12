package profile.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections4.map.HashedMap;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import furniture.bean.ReviewDTO;
import member.bean.MemberDTO;
import profile.bean.AskDTO;
import profile.bean.CartDTO;
import profile.bean.OrderDTO;
import profile.bean.OrderDetailDTO;
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
	public List<AskDTO> getAskList(Map<String, String> map) {
		return sqlSession.selectList("profileSQL.getAskList", map);
	}

	@Override
	public int getTotalA(Map<String, String> map) {
		return sqlSession.selectOne("profileSQL.getTotalA", map);
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
	public int getTotalWishlist(String id) {
		return sqlSession.selectOne("profileSQL.getTotalWishlist", id);
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
	public void updateOrderStatus(Map<String, Object> map) {
		sqlSession.update("profileSQL.updateOrderStatus", map);
	}

	@Override
	public List<CartDTO> getCartList(Map<String, Object> map) {
		return sqlSession.selectList("profileSQL.getCartList", map);
	}

	@Override
	public int getTotalCartList(String id) {
		return sqlSession.selectOne("profileSQL.getTotalCartList", id);
	}

	@Override
	public void cartDelete(int id) {
		sqlSession.delete("profileSQL.cartDelete", id);
	}

	@Override
	public void cartTotalDelete(String memberId) {
		sqlSession.delete("profileSQL.cartTotalDelete", memberId);
	}

	@Override
	public List<CartDTO> getAllCartList(int memId) {
		return sqlSession.selectList("profileSQL.getAllCartList", memId);
	}

	@Override
	public int paymentWrite(Map<String, Object> map) {
		sqlSession.insert("profileSQL.paymentWriteOrders",map);
		int orderNumber = sqlSession.selectOne("profileSQL.getOrderNum", map);

		List<CartDTO> cartList = (List<CartDTO>) map.get("cartList");
		for(CartDTO data: cartList) {
			OrderDetailDTO temp = new OrderDetailDTO();
			temp.setProduct_price(data.getProduct_price());
			temp.setProduct_qty(data.getProduct_count());
			temp.setProduct_amounts(data.getProduct_count()*data.getProduct_price());
			temp.setOrder_number(orderNumber);
			temp.setProduct_id(data.getProduct_id());
			temp.setProduct_color(data.getProduct_option_color());

			sqlSession.insert("profileSQL.paymentWriteDetailOrders",temp);
		}//for

		Map<String, Object> ordercontrolMap = new HashMap<String, Object>();
		ordercontrolMap.put("member_id", map.get("memId"));
		ordercontrolMap.put("order_number", orderNumber);
		sqlSession.insert("profileSQL.ordercontrol",ordercontrolMap);

		return orderNumber;
		
		
	}

	@Override
	public int getOrderNum(String memId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("memId", memId);
		return sqlSession.selectOne("profileSQL.getOrderNum", map);
	}

	@Override
	public void payment(Map outputMap) {
		sqlSession.insert("profileSQL.payment", outputMap);
	}

	@Override	
	public void memberDelete(String id) {
		sqlSession.delete("profileSQL.memberDelete",id);
	}

	@Override
	public String gettId(String odId) {
		return sqlSession.selectOne("profileSQL.gettId", odId);
	}

	@Override
	public void updateCumulativeAmount(Map<String, Object> map) {
		sqlSession.update("profileSQL.updateCumulativeAmount", map);
	}

	public void paymentUpdate(String odId) {
		sqlSession.update("profileSQL.paymentUpdate", odId);
	}

	@Override
	public void reviewWrite(ReviewDTO reviewDTO) {
		sqlSession.insert("profileSQL.reviewWrite", reviewDTO);
	}

	@Override
	public int getProductAmounts(Map<String, Object> map) {
		return sqlSession.selectOne("profileSQL.getProductAmounts", map);
	}

}
