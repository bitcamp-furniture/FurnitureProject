package member.controller;

import member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import java.util.Map;
import java.util.Random;

@Controller
@RequestMapping("member")
public class MemberController {
	@Autowired
    private JavaMailSender mailSender;
    @Autowired
    private MemberService memberService;
    
//로그인창
  	@RequestMapping(value="loginForm", method=RequestMethod.GET)
  	public String loginForm(Model model) {
  		model.addAttribute("display", "/member/loginForm.jsp");
  		return "/index";
  	}
//-------------------------------------------------------------------
//계정찾기창
	@RequestMapping(value="findForm", method=RequestMethod.GET)
	public String findForm(Model model) {
		model.addAttribute("display", "/member/findForm.jsp");
		return "/index";
	}

//-------------------------------------------------------------------
//로그인
    @RequestMapping(value="login", method=RequestMethod.POST)
    @ResponseBody
    public String login(@RequestParam Map<String, String> map, HttpSession session) {
        return memberService.login(map, session);
    }
    
//-------------------------------------------------------------------
//로그아웃
	@RequestMapping(value="logout", method=RequestMethod.GET)
		public String logout(HttpSession session) {
			session.invalidate();
			return "/index";
	}

//-------------------------------------------------------------------
//이메일 찾기
@RequestMapping(value="findEmail", method=RequestMethod.POST)
@ResponseBody
public String findEmail(@RequestParam Map<String, String> map) {
	return memberService.findEmail(map);
}

//-------------------------------------------------------------------
//이메일 인증
@RequestMapping(value="mailCheck", method=RequestMethod.GET)
@ResponseBody
public String mailCheck(String email) throws Exception{
	/* 뷰(View)로부터 넘어온 데이터 확인 */
	System.out.println("이메일 데이터 전송 확인");
	System.out.println("이메일 : " + email);
	
	//인증번호(난수) 생성
	Random random = new Random();
	int checkNum = random.nextInt(888888) + 111111;
	System.out.println("인증번호 : " + checkNum);
	
	//이메일 보내기
	String setFrom = "jhw02040@naver.com";
	String toMail = email;
	String title = "회원가입 인증 이메일 입니다.";
	String content = 
			"홈페이지를 방문해주셔서 감사합니다." +
					"<br><br>" + 
					"인증 번호는 " + checkNum + "입니다." + 
					"<br>" + 
					"해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
	
	
	try {
		
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
		helper.setFrom(setFrom);
		helper.setTo(toMail);
		helper.setSubject(title);
		helper.setText(content,true);
		mailSender.send(message);
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	
	String num = Integer.toString(checkNum);
	
	return num;
	
}
  	
//-------------------------------------------------------------------
//비밀번호 변경
	@RequestMapping(value="changePwd", method=RequestMethod.POST)
	@ResponseBody
	public void changePwd(@RequestParam Map<String, String> map) {
		memberService.changePwd(map);
	}
	
//-------------------------------------------------------------------
//카카오로그인 회원정보 저장
	@RequestMapping(value="kakaoWrite", method=RequestMethod.POST)
	@ResponseBody
	public void kakaoWrite(@RequestParam Map<String, String> map, HttpSession session) {
		//member table에 이메일이 없으면 table에 정보 저장
		if(memberService.checkEmail(map, session)==false) {
			memberService.kakaoWrite(map, session);
		} else { //member table에 이메일이 없으면 table에 정보 저장
			memberService.kakaoUpdate(map, session);
		}
	}
	
//-------------------------------------------------------------------
	
}
