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

	public List<OrderDTO> getOrderList(String id, String orderPg);

    public OrderPaging orderPaging(String id, String orderPg);

	public void updateOrderStatus(Map<String, Object> map);

	public List<CartDTO> getCartList(String id, String cartPg);

    public CartPaging cartPaging(String id, String cartPg);

	public void cartDelete(int id);

    public void cartTotalDelete(String memberId);

	public List<CartDTO> getAllCartList(int memId);

	public int paymentWrite(Map<String, Object> map);

	public int getOrderNum(String email);

	public void payment(Map outputMap);

	public void memberDelete(String id);

	public String gettId(String orderNumber);

	public void updateCumulativeAmount(Map<String, Object> map);
}
