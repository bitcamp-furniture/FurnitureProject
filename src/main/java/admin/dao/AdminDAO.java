package admin.dao;

import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;

public interface AdminDAO {

	public List<MemberDTO> getAdminList(Map<String, Integer> map);

	public int getTotalA();

	public List<MemberDTO> getSearchMemberList(Map<String, String> map);

	public int getSearchTotal(Map<String, String> map);

	public void memberListDelete(Map<String, String[]> map);

}
