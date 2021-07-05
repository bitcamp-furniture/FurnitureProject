package admin.dao;

import java.util.List;
import java.util.Map;

import admin.bean.adminReviewDTO;

public interface adminReviewDAO {

	public List<adminReviewDTO> adminReviewList(Map<Object, Object> map);

	public int getTotalReviewList();

	public void adminReviewListDelete(Map<String, String[]> map);

	public List<adminReviewDTO> adminreviewASCList(Map<Object, Object> map);

	public List<adminReviewDTO> adminreviewDESCList(Map<Object, Object> map);


}
