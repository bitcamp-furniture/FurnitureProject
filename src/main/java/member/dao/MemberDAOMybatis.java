package member.dao;

import member.bean.MemberDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Map;

@Transactional //클래스전체에 트랜잭셔널이 걸려있는것임
@Repository
public class MemberDAOMybatis implements MemberDAO{
    @Autowired
    private SqlSession sqlSession;

	@Override
	public void join(MemberDTO memberDTO) {
		sqlSession.insert("memberSQL.join", memberDTO);
	}

	@Override
	public MemberDTO checkId(String email) {
		return sqlSession.selectOne("memberSQL.checkId", email);
	}

    @Override
    public MemberDTO login(Map<String, String> map) {
        return sqlSession.selectOne("memberSQL.login", map);
    }

    @Override
    public String findEmail(Map<String, String> map) {
    	return sqlSession.selectOne("memberSQL.findEmail", map);
    }
    
	@Override
	public void changePwd(Map<String, String> map) {
		sqlSession.update("memberSQL.changePwd", map);
	}

	@Override
	public void kakaoWrite(Map<String, String> map) {
		map.remove("birth");
		sqlSession.insert("memberSQL.kakaoWrite", map);
    }

	@Override
	public MemberDTO checkEmail(String email) {
		return sqlSession.selectOne("memberSQL.checkEmail", email);
	}

	@Override
	public void kakaoUpdate(Map<String, String> map) {
		sqlSession.update("memberSQL.kakaoUpdate", map);
	}

	@Override
	public MemberDTO getkakaoId(Map<String, String> map) {
		return sqlSession.selectOne("memberSQL.getkakaoId", map);
	}

	@Override
	public void pointUpdate(Map<String, String> map) {
		sqlSession.update("memberSQL.pointUpdate", map);		
	}

}
