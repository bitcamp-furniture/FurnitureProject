package profile.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import profile.bean.AskDTO;
import profile.bean.AskPaging;
import profile.bean.WishlistDTO;
import profile.dao.ProfileDAO;

@Service
public class ProfileServiceImpl implements ProfileService {
	@Autowired
	ProfileDAO profileDAO;
	@Autowired
	AskPaging askPaging;

	@Override
	public void askWrite(AskDTO askDTO) {
		profileDAO.askWrite(askDTO); 
	}

	@Override
	public List<AskDTO> getAskList(String pg) {
		//1페이지당 5개씩
		int endNum = Integer.parseInt(pg)*5;
		int startNum = endNum-4;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
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
	public void updateMember(Map<String, String> map) {
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
	public List<WishlistDTO> getWishlist(int id) {
		return profileDAO.getWishlist(id);
	}

	@Override
	public List<String> getWishlistImage(String member_id) {
		return profileDAO.getWishlistImage(member_id);
	}

}
