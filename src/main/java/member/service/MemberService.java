package member.service;

import javax.servlet.http.HttpSession;
import java.util.Map;

public interface MemberService {

    public String login(Map<String, String> map, HttpSession session);

	public void changePwd(Map<String, String> map);

	public String findEmail(Map<String, String> map);

	public void kakaoWrite(Map<String, String> map, HttpSession session);

	public boolean checkEmail(Map<String, String> map, HttpSession session);

	public void kakaoUpdate(Map<String, String> map, HttpSession session);

}