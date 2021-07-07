package admin.service;

import java.util.List;
import java.util.Map;

import admin.bean.MemberListPaging;
import furniture.bean.ReviewDTO;
import member.bean.MemberDTO;
import profile.bean.AskDTO;
import profile.bean.OrderDTO;

public interface AdminService {

	public List<MemberDTO> getMemberList(String pg);

	public MemberListPaging memberListPaging(String pg);

	public List<MemberDTO> getSearchMemberList(Map<String, String> map);

	public MemberListPaging memberListSearchPaging(Map<String, String> map);

	public void memberListDelete(String[] check);

	public List<ReviewDTO> getRecentReviewList();

	public List<AskDTO> getRecentQnAList();

	public List<String> orderDay();

	public List<Integer> orderCount();

	public List<Integer> orderSales();

	public List<Integer> orderCateSales();

	public List<String> orderCateName();

}
