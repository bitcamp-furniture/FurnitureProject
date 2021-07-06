package admin.service;

import java.util.List;

import admin.bean.MemberListPaging;
import member.bean.MemberDTO;

public interface AdminProductService {

	public List<MemberDTO> getMemberList(String pg);

	public MemberListPaging memberListPaging(String pg);

}
