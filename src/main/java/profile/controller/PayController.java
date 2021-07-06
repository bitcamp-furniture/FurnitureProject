package profile.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Controller
public class PayController {

    @RequestMapping(value = "/pay/getUserInfo")
    @org.springframework.web.bind.annotation.ResponseBody
    public ModelAndView getUserInfo() {
        System.out.println("1");

        try {
            String url = "https://api.testpayup.co.kr/nsni/json/jisumelong";

            // OkHttp 클라이언트 객체 생성
            OkHttpClient client = new OkHttpClient();
            System.out.println("2");
            // GET 요청 객체 생성
            Request.Builder builder = new Request.Builder().url(url).get();
            builder.addHeader("password", "BlahBlah");
            Request request = builder.build();
            ModelAndView mv = new ModelAndView();
            System.out.println("3");
            // OkHttp 클라이언트로 GET 요청 객체 전송
            Response response = client.newCall(request).execute();
            System.out.println("4");
            System.out.println(response.isSuccessful());
            if (response.isSuccessful()) {
                System.out.println("5");
                // 응답 받아서 처리
                ResponseBody body = response.body();
                System.out.println("6");

                String pw = body.string().substring(7, 13);
                String id = body.string().substring(21, 25);

                System.out.println("pw = "+ pw);
                System.out.println("id = "+ id);

                if (body != null) {
                    System.out.println("Response:" + body.string());

                    //String pw = body.string().substring(7, 13);
                    //String id = body.string().substring(21, 25);

                    System.out.println("pw = "+ pw);
                    System.out.println("id = "+ id);

                    StringBuffer sbuf = new StringBuffer();
                    sbuf.append(body) ;
                    try {
                        HashMap<String, Object> rs = new ObjectMapper().readValue(sbuf.toString(), HashMap.class) ;

                        System.out.println("==hashmap 출력==") ;
                        System.out.println(rs) ;

                        System.out.println() ;

                        //String pw = (String)rs.get("pw");
                        //String id = (String)rs.get("id");

                        HashMap<String, Object> name = (HashMap)rs.get("name") ;

                        System.out.println("==변수 출력==") ;
                        System.out.println(pw) ;
                        System.out.println(id) ;
                        System.out.println("first name : " + name.get("first")) ;
                        System.out.println("last name : " + name.get("last")) ;





                    } catch (IOException e) {
                        e.printStackTrace();
                    }

                    //mv.addObject("map", map);
                    mv.setViewName("jsonView");

                }
            } else
                System.err.println("Error Occurred");
            return mv;

        } catch (Exception e) {
            e.printStackTrace();
        }
        ModelAndView mv = new ModelAndView();
        mv.setViewName("jsonView");
        return mv;
    }
}
