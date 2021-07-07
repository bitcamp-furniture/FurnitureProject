package admin.dao;

import java.util.List;
import java.util.Map;

import furniture.bean.ReviewDTO;
import member.bean.MemberDTO;
import profile.bean.AskDTO;
import profile.bean.OrderDTO;

public interface AdminDAO {

	public List<MemberDTO> getAdminList(Map<String, Integer> map);

	public int getTotalA();

	public List<MemberDTO> getSearchMemberList(Map<String, String> map);

	public int getSearchTotal(Map<String, String> map);

	public void memberListDelete(Map<String, String[]> map);

	public List<ReviewDTO> getRecentReviewList();

	public List<AskDTO> getRecentQnAList();

	public List<String> orderDay();

	public List<Integer> orderCount();

	public List<Integer> orderSales();

	public List<Integer> orderCateSales();

	public List<String> orderCateName();

}
