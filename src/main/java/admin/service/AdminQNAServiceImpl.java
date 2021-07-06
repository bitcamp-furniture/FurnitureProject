package admin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.dao.AdminQNADAO;
import profile.bean.AskDTO;
import profile.bean.AskPaging;

@Service
public class AdminQNAServiceImpl implements AdminQNAService {
	@Autowired
	AdminQNADAO adminQNADAO;
	@Autowired
	AskPaging askPaging;

	@Override
	public List<AskDTO> getAskList(Map<String, String> map) {
		//1페이지당 5개씩
		int endNum = Integer.parseInt(map.get("askPg"))*15;
		int startNum = endNum-14;
		
		map.put("startNum", startNum+"");
		map.put("endNum", endNum+"");
		
		//DB
		List<AskDTO> list = adminQNADAO.getAskList(map);
		
		return list;
	}

	@Override
	public AskPaging askPaging(Map<String, String> map) {
		int totalA = adminQNADAO.getAskTotalA(map);//총 글 수
		
		askPaging.setCurrentPage(Integer.parseInt(map.get("askPg")));
		askPaging.setPageBlock(3);
		askPaging.setPageSize(15);
		askPaging.setTotalA(totalA);
		askPaging.makePagingHTML();
		
		return askPaging;
	}
	
	

}
