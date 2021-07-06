package profile.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import profile.bean.*;
import profile.dao.ProfileDAO;

import javax.servlet.http.HttpSession;

@Service
public class ProfileServiceImpl implements ProfileService {
	@Autowired
	ProfileDAO profileDAO;
	@Autowired
	AskPaging askPaging;
	@Autowired
	WishlistPaging wishlistPaging;
	@Autowired
	OrderPaging orderPaging;
	@Autowired
	CartPaging cartPaging;

	@Override
	public void askWrite(AskDTO askDTO) {
		profileDAO.askWrite(askDTO); 
	}

	@Override
	public List<AskDTO> getAskList(Map<String, String> map) {
		//1페이지당 5개씩
		int endNum = Integer.parseInt(map.get("askPg"))*5;
		int startNum = endNum-4;
		
		map.put("startNum", startNum+"");
		map.put("endNum", endNum+"");
		
		//DB
		List<AskDTO> list = profileDAO.getAskList(map);
		
		return list;
	}

	@Override
	public AskPaging askPaging(String pg) {
		int totalA = profileDAO.getTotalA();//총 글 수
		
		askPaging.setCurrentPage(Integer.parseInt(pg));
		askPaging.setPageBlock(3);
		askPaging.setPageSize(5);
		askPaging.setTotalA(totalA);
		askPaging.makePagingHTML();
		
		return askPaging;
	}

	@Override
	public AskDTO getAsk(String seq) {
		return profileDAO.getAsk(seq);
	}
	
	@Override
	public MemberDTO getMember(int id) {
		return profileDAO.getMember(id);
	}

	@Override
	public void updateMember(Map<String, String> map, HttpSession session) {
		//session.removeAttribute("memId");
		session.setAttribute("memName", map.get("name"));
		profileDAO.updateMember(map);
	}

	@Override
	public void updateContact(Map<String, String> map) {
		profileDAO.updateContact(map);
	}

	@Override
	public void updatePassword(Map<String, String> map) {
		profileDAO.updatePassword(map);
	}

	@Override
	public List<WishlistDTO> getWishlist(String id, String wishlistPg) {
		int endNum = Integer.parseInt(wishlistPg)*9;
		int startNum = endNum-8;

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		map.put("id", id);

		return profileDAO.getWishlist(map);
	}

	@Override
	public void choiceDelete(int id) {
		profileDAO.choiceDelete(id);
	}

	@Override
	public void totalDelete(String memberId) {
		profileDAO.totalDelete(memberId);
	}

	@Override
	public WishlistPaging wishlistPaging(String id, String wishlistPg) {
		int totalA = profileDAO.getTotalWishlist(id);

		wishlistPaging.setCurrentPage(Integer.parseInt(wishlistPg)); //현재 페이지
		wishlistPaging.setPageBlock(3);
		wishlistPaging.setPageSize(9);
		wishlistPaging.setTotalA(totalA);
		wishlistPaging.makePagingHTML();

		return wishlistPaging;
	}

	@Override
	public List<OrderDTO> getOrderList(String id, String orderPg) {
		int endNum = Integer.parseInt(orderPg)*4;
		int startNum = endNum-3;

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		map.put("id", id);

		return profileDAO.getOrderList(map);
	}

	@Override
	public OrderPaging orderPaging(String id, String orderPg) {
		int totalA = profileDAO.getTotalOrderList(id);

		orderPaging.setCurrentPage(Integer.parseInt(orderPg)); //현재 페이지
		orderPaging.setPageBlock(3);
		orderPaging.setPageSize(4);
		orderPaging.setTotalA(totalA);
		orderPaging.makePagingHTML();

		return orderPaging;
	}

	@Override
	public void updateOrderStatus(int id) {
		profileDAO.updateOrderStatus(id);
	}

	@Override
	public List<CartDTO> getCartList(String id, String cartPg) {
		int endNum = Integer.parseInt(cartPg)*3;
		int startNum = endNum-2;

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		map.put("id", id);

		return profileDAO.getCartList(map);
	}

	@Override
	public CartPaging cartPaging(String id, String cartPg) {
		int totalA = profileDAO.getTotalCartList(id);

		cartPaging.setCurrentPage(Integer.parseInt(cartPg)); //현재 페이지
		cartPaging.setPageBlock(3);
		cartPaging.setPageSize(3);
		cartPaging.setTotalA(totalA);
		cartPaging.makePagingHTML();

		return cartPaging;
	}

	@Override
	public void cartDelete(int id)  {
		profileDAO.cartDelete(id);
	}

	@Override
	public void cartTotalDelete(String memberId) {
		profileDAO.cartTotalDelete(memberId);
	}

	@Override
	public List<CartDTO> getAllCartList(String memberId) {
		return profileDAO.getAllCartList(memberId);

	}

}
