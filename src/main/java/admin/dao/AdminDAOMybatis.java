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

}
