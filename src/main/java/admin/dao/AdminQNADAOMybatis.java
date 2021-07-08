package admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import profile.bean.AskDTO;

@Repository
@Transactional
public class AdminQNADAOMybatis implements AdminQNADAO {
	@Autowired
	private SqlSession sqlSession;


	@Override
	public List<AskDTO> getAskList(Map<String, String> map) {
		return sqlSession.selectList("adminSQL.getAskList", map);
	}

	@Override
	public int getAskTotalA(Map<String, String> map) {
		return sqlSession.selectOne("adminSQL.getAskTotalA", map);
	}

	@Override
	public AskDTO askAnswer(String seq) {
		return sqlSession.selectOne("adminSQL.askAnswer", seq);
	}

	@Override
	public void askAnswerDone(Map<String, String> map) {
		sqlSession.update("adminSQL.askAnswerDone", map);
	}
	
}
