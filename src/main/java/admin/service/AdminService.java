package admin.service;

import java.util.List;
import java.util.Map;

import admin.bean.MemberListPaging;
import member.bean.MemberDTO;

public interface AdminService {

	public List<MemberDTO> getMemberList(String pg);

	public MemberListPaging memberListPaging(String pg);

	public List<MemberDTO> getSearchMemberList(Map<String, String> map);

	public MemberListPaging memberListSearchPaging(Map<String, String> map);

	public void memberListDelete(String[] check);

}
