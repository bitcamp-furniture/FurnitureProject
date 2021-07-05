package admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import admin.bean.adminReviewDTO;

@Transactional
@Repository
public class adminReviewDAOMybatis implements adminReviewDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	//모든 리뷰리스트 뽑아오기
	@Override
	public List<adminReviewDTO> adminReviewList(Map<Object, Object> map) {
		return sqlSession.selectList("adminSQL.reviewList", map);
	}
	// 모든 리스트 개수
	@Override
	public int getTotalReviewList() {
		return sqlSession.selectOne("adminSQL.getTotalReviewList");
	}
	// 리스트 삭제
	@Override
	public void adminReviewListDelete(Map<String, String[]> map) {
		sqlSession.delete("adminSQL.adminReviewListDelete",map);
	}
	
	//리스트 정렬
	//오름차순
	@Override
	public List<adminReviewDTO> adminreviewASCList(Map<Object, Object> map) {
		return sqlSession.selectList("adminSQL.adminreviewASCList", map);
	}
	//내림차순
	@Override
	public List<adminReviewDTO> adminreviewDESCList(Map<Object, Object> map) {
		return sqlSession.selectList("adminSQL.adminreviewDESCList", map);
	}

}
