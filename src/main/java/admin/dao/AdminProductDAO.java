package admin.dao;

import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;

public interface AdminProductDAO {

	public int getTotalA();

	public List<MemberDTO> getAdminList(Map<String, Integer> map);

}
