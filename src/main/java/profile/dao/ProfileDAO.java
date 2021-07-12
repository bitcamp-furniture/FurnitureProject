package profile.dao;

import java.util.List;
import java.util.Map;

import furniture.bean.ReviewDTO;
import member.bean.MemberDTO;
import profile.bean.AskDTO;
import profile.bean.CartDTO;
import profile.bean.OrderDTO;
import profile.bean.WishlistDTO;

public interface ProfileDAO {

	public void askWrite(AskDTO askDTO);

	public List<AskDTO> getAskList(Map<String, String> map);

	public int getTotalA(Map<String, String> map);

	public AskDTO getAsk(String seq);

	public MemberDTO getMember(int id);

	public void updateMember(Map<String, String> map);

	public void updateContact(Map<String, String> map);

	public void updatePassword(Map<String, String> map);

	public List<WishlistDTO> getWishlist(Map<String, Object> map);

	public void choiceDelete(int id);

	public void totalDelete(String memberId);

	public int getTotalWishlist(String id);

	public List<OrderDTO> getOrderList(Map<String, Object> map);

	public int getTotalOrderList(String id);

	void updateOrderStatus(Map<String, Object> map);

    List<CartDTO> getCartList(Map<String, Object> map);

	int getTotalCartList(String id);

	void cartDelete(int id);

	void cartTotalDelete(String memberId);

	List<CartDTO> getAllCartList(int memId);

	public int paymentWrite(Map<String, Object> map);

	public void payment(Map outputMap);

	public int getOrderNum(String memId);

	public void memberDelete(String id);

    String gettId(String orderNumber);

	void updateCumulativeAmount(Map<String, Object> map);
	
    public void paymentUpdate(String check);

	public void reviewWrite(ReviewDTO reviewDTO);
}
