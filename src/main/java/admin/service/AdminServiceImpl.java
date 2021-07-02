package admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.bean.MemberListPaging;
import admin.dao.AdminDAO;
import member.bean.MemberDTO;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDAO adminDAO;
	
	@Autowired
	private MemberListPaging memberListPaging;

	@Override
	public List<MemberDTO> getMemberList(String pg) {
		//1페이지당 5개씩 (15개로 수정)
		int endNum = Integer.parseInt(pg)*5;
		int startNum = endNum-4;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		//DB
		List<MemberDTO> list = adminDAO.getAdminList(map);
		
		return list;
	}

	@Override
	public MemberListPaging memberListPaging(String pg) {
		int totalA = adminDAO.getTotalA();//총글수 계산하려면 db 다녀와야함.
		
		memberListPaging.setCurrentPage(Integer.parseInt(pg));//현재 페이지를 줘. 현재 페이지를 빨갛게 표시하기 위행..		
		memberListPaging.setPageBlock(3);
		memberListPaging.setPageSize(5);
		memberListPaging.setTotalA(totalA);
		memberListPaging.makePagingHTML();
		
		return memberListPaging;//controller에서 페이징 처리한 것 아님. 여기서 처리한 것.
	}

}
