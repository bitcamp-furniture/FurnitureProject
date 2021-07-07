package admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import furniture.bean.ReviewDTO;
import member.bean.MemberDTO;
import profile.bean.AskDTO;
import profile.bean.OrderDTO;

@Repository
@Transactional
public class AdminDAOMybatis implements AdminDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MemberDTO> getAdminList(Map<String, Integer> map) {
		return sqlSession.selectList("adminSQL.getMemberList", map);
	}

	@Override
	public int getTotalA() {
		return sqlSession.selectOne("adminSQL.getTotalA");
	}

	@Override
	public List<MemberDTO> getSearchMemberList(Map<String, String> map) {
		return sqlSession.selectList("adminSQL.getSearchMemberList", map);
	}

	@Override
	public int getSearchTotal(Map<String, String> map) {
		return sqlSession.selectOne("adminSQL.getSearchTotal", map);
	}

	@Override
	public void memberListDelete(Map<String, String[]> map) {
		sqlSession.delete("adminSQL.memberListDelete", map);
		
	}

	@Override // 최신 리뷰순으로 5개 가져오기
	public List<ReviewDTO> getRecentReviewList() {
		return sqlSession.selectList("adminSQL.getRecentReviewList");
	}

	@Override
	public List<AskDTO> getRecentQnAList() {
		return sqlSession.selectList("adminSQL.getRecentQnAList");
	}

	//주문 날짜만 가져오는 메소드
	@Override
	public List<String> orderDay() {
		return sqlSession.selectList("adminSQL.orderDay");
	}
	
	//주문 건수만 가져오는 메소드
	@Override
	public List<Integer> orderCount() {
		return sqlSession.selectList("adminSQL.orderCount");
	}
	
	//일별 매출만 가져오는 메소드
	@Override
	public List<Integer> orderSales() {
		return sqlSession.selectList("adminSQL.orderSales");
	}
	
	//카테고리별 매출
	@Override
	public List<Integer> orderCateSales() {
		return sqlSession.selectList("adminSQL.orderCateSales");
	}

	@Override
	public List<String> orderCateName() {
		return sqlSession.selectList("adminSQL.orderCateName");
	}	
}
