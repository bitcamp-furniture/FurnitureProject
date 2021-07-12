package member.dao;

import member.bean.MemberDTO;

import java.util.Map;

public interface MemberDAO {
	
	public void join(MemberDTO memberDTO);

	public MemberDTO checkId(String email);
	
    public MemberDTO login(Map<String, String> map);

	public void changePwd(Map<String, String> map);

	public String findEmail(Map<String, String> map);

	public void kakaoWrite(Map<String, String> map);

	public MemberDTO checkEmail(String email);

	public void kakaoUpdate(Map<String, String> map);

	public MemberDTO getkakaoId(Map<String, String> map);

	public void pointUpdate(Map<String, Object> map);
}
