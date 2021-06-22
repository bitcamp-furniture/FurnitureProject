package profile.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import profile.bean.AskDTO;
import profile.bean.AskPaging;
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

}
