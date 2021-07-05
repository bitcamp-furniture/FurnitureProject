package profile.dao;

import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;
import profile.bean.AskDTO;
import profile.bean.CartDTO;
import profile.bean.OrderDTO;
import profile.bean.WishlistDTO;

public interface ProfileDAO {

	public void askWrite(AskDTO askDTO);

	public List<AskDTO> getAskList(Map<String, Integer> map);

	public int getTotalA();

	public AskDTO getAsk(String seq);

	public MemberDTO getMember(int id);

	public void updateMember(Map<String, String> map);

	public void updateContact(Map<String, String> map);

	public void updatePassword(Map<String, String> map);

	public List<WishlistDTO> getWishlist(Map<String, Object> map);

	public void choiceDelete(int id);

	public void totalDelete(String memberId);

	public int getTotalWishlist();

	public List<OrderDTO> getOrderList(Map<String, Object> map);

	public int getTotalOrderList(String id);

	void updateOrderStatus(int id);

    List<CartDTO> getCartList(Map<String, Object> map);

	int getTotalCartList(String id);

	void cartDelete(int id);

	void cartTotalDelete(String memberId);

	List<CartDTO> getAllCartList(String memberId);
}
