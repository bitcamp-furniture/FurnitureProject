package profile.dao;

import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;
import profile.bean.AskDTO;

public interface ProfileDAO {

	public void askWrite(AskDTO askDTO);

	public List<AskDTO> getAskList(Map<String, Integer> map);

	public int getTotalA();

	public MemberDTO getMember(int id);

	public void updateMember(Map<String, String> map);

	public void updateContact(Map<String, String> map);

	public void updatePassword(Map<String, String> map);

}
