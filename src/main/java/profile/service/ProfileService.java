package profile.service;

import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;
import profile.bean.AskDTO;
import profile.bean.AskPaging;
import profile.bean.WishlistDTO;

public interface ProfileService {

	public void askWrite(AskDTO askDTO);

	public List<AskDTO> getAskList(String pg);

	public AskPaging askPaging(String pg);

	public AskDTO getAsk(String seq);

	public MemberDTO getMember(int id);

	public void updateMember(Map<String, String> map);

	public void updateContact(Map<String, String> map);

	public void updatePassword(Map<String, String> map);

	public List<WishlistDTO> getWishlist(int id);



}
