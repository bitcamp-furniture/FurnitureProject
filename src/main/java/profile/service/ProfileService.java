package profile.service;

import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;
import profile.bean.*;

import javax.servlet.http.HttpSession;

public interface ProfileService {

	public void askWrite(AskDTO askDTO);

	public List<AskDTO> getAskList(Map<String, String> map);

	public AskPaging askPaging(Map<String, String> map);

	public AskDTO getAsk(String seq);

	public MemberDTO getMember(int id);

	public void updateMember(Map<String, String> map, HttpSession session);

	public void updateContact(Map<String, String> map);

	public void updatePassword(Map<String, String> map);

	public List<WishlistDTO> getWishlist(String id, String wishlistPg);

	public void choiceDelete(int id);

	public void totalDelete(String memberId);

	public WishlistPaging wishlistPaging(String id, String wishlistPg);

    List<OrderDTO> getOrderList(String id, String orderPg);

	OrderPaging orderPaging(String id, String orderPg);

	void updateOrderStatus(int id);

    List<CartDTO> getCartList(String id, String cartPg);

	CartPaging cartPaging(String id, String cartPg);

    void cartDelete(int id);

	void cartTotalDelete(String memberId);

	List<CartDTO> getAllCartList(String memberId);
}
