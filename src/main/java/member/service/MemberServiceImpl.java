package member.service;

import member.bean.MemberDTO;
import member.dao.MemberDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Service
public class MemberServiceImpl implements MemberService {
    @Autowired
    private MemberDAO memberDAO;
    
	@Override
	public void join(MemberDTO memberDTO) {
		memberDAO.join(memberDTO);
		
	}

	@Override
	public String checkId(String email) {
		MemberDTO memberDTO = memberDAO.checkId(email);
		
		if(memberDTO == null) {
			return "non_exist"; //사용 가능
		}else {
			return "exist"; //아이디가 존재 - 사용 불가능
		}

	}

    @Override
    public String login(Map<String, String> map, HttpSession session) {
        MemberDTO memberDTO = memberDAO.login(map);
        if(memberDTO == null) {
            return "fail";
        } else {
        	session.setAttribute("memId", memberDTO.getId());
            session.setAttribute("memName", memberDTO.getName());
            session.setAttribute("memEmail", memberDTO.getEmail());
            session.setAttribute("verify", memberDTO.getVerify());
            return "success";
        }
    }

	@Override
	public void changePwd(Map<String, String> map) {
		memberDAO.changePwd(map);
	}

	@Override
	public String findEmail(Map<String, String> map) {
		return memberDAO.findEmail(map);
	}

	@Override
	public void kakaoWrite(Map<String, String> map, HttpSession session) {
		System.out.println(map);
		String bir_mm = (map.get("birth")).substring(0,2);
		String bir_dd = (map.get("birth")).substring(2);
		
		map.put("bir_mm", bir_mm);
		map.put("bir_dd", bir_dd);
		
		memberDAO.kakaoWrite(map);
		
		session.setAttribute("memEmail", map.get("email"));

		MemberDTO memberDTO = memberDAO.getkakaoId(map);
		session.setAttribute("memId", memberDTO.getId());
	}

	@Override
	public boolean checkEmail(Map<String, String> map, HttpSession session) {
		String email = (map.get("email"));
		MemberDTO memberDTO = memberDAO.checkEmail(email);
		if(memberDTO!=null) {
			return true;
		} else {
			return false;
		}
		
	}

	@Override
	public void kakaoUpdate(Map<String, String> map, HttpSession session) {
		memberDAO.kakaoUpdate(map);
		session.setAttribute("memEmail", map.get("email"));

		MemberDTO memberDTO = memberDAO.getkakaoId(map);
		session.setAttribute("memId", memberDTO.getId());
		session.setAttribute("memName", memberDTO.getName());
	}

	@Override
	public void pointUpdate(Map<String, String> map) {
		memberDAO.pointUpdate(map);		
	}



}
