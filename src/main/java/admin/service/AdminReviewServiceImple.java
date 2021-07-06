package admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import furniture.bean.ReviewDTO;
import admin.bean.AdminReviewPaging;
import admin.bean.AdminReviewSelectListPaging;
import admin.dao.AdminReviewDAO;

@Service
public class AdminReviewServiceImple implements AdminReviewService
{
	@Autowired
	private AdminReviewDAO adminreviewDAO;
	@Autowired
	private AdminReviewPaging adminreviewPaging;
	@Autowired
	private AdminReviewSelectListPaging adminreviewSelectListPaging;
	
	@Override
	public List<ReviewDTO> adminReviewList(String pg) {
		
		//1페이지당 9개씩
		int endNum = Integer.parseInt(pg)*5;
		int startNum = endNum-4;
		Map<Object,Object> map = new HashMap<Object,Object>();

		map.put("startNum",startNum);
		map.put("endNum",endNum);
		return adminreviewDAO.adminReviewList(map);	
	}

	@Override
	public AdminReviewPaging adminreviewPaging(String pg) {
		int totalaAdmin = adminreviewDAO.getTotalReviewList();
		
		adminreviewPaging.setCurrentPage(Integer.parseInt(pg));
		adminreviewPaging.setPageBlock(3);
		adminreviewPaging.setPageSize(5);
		adminreviewPaging.setTotalA(totalaAdmin);
		adminreviewPaging.makePagingHTML();
		return adminreviewPaging;
	}

	@Override
	public void adminReviewListDelete(String[] check) {
		
		Map<String,String[]>map = new HashMap<String,String[]>();
		map.put("array",check);
		
		adminreviewDAO.adminReviewListDelete(map);	
	}

	//오름 차순 정렬
	@Override
	public List<ReviewDTO> adminreviewASCList(String pg, String sort1) {
		int endNum = Integer.parseInt(pg)*5;
		int startNum = endNum-4;
		
		Map<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("sort1",sort1);
		map.put("startNum",startNum);
		map.put("endNum",endNum);
		
		return adminreviewDAO.adminreviewASCList(map);
	}
	//내림차순
	@Override
	public List<ReviewDTO> adminreviewDESCtList(String pg, String sort1) {
		int endNum = Integer.parseInt(pg)*5;
		int startNum = endNum-4;

		Map<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("sort1",sort1);
		map.put("startNum",startNum);
		map.put("endNum",endNum);
		
		return adminreviewDAO.adminreviewDESCList(map);
	}

	@Override
	public AdminReviewSelectListPaging adminReviewSelectList(String pg, String sort1) {
		int SelectaAdmin = adminreviewDAO.getTotalReviewList();
		
		adminreviewSelectListPaging.setCurrentPage(Integer.parseInt(pg));
		adminreviewSelectListPaging.setPageBlock(3);
		adminreviewSelectListPaging.setPageSize(5);
		adminreviewSelectListPaging.setTotalA(SelectaAdmin);
		adminreviewSelectListPaging.makePagingHTML();
		return adminreviewSelectListPaging;
	}
}
