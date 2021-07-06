package admin.dao;

import java.util.List;
import java.util.Map;

import furniture.bean.ReviewDTO;

public interface AdminReviewDAO {

	public List<ReviewDTO> adminReviewList(Map<Object, Object> map);

	public int getTotalReviewList();

	public void adminReviewListDelete(Map<String, String[]> map);

	public List<ReviewDTO> adminreviewASCList(Map<Object, Object> map);

	public List<ReviewDTO> adminreviewDESCList(Map<Object, Object> map);


}
