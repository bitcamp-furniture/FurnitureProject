package profile.controller;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class test {

    public static void main(String[] args) {
        test test = new test();
        test.getUserInfo("");
    }

    @RequestMapping(value = "/pay/getUserInfo")
    @org.springframework.web.bind.annotation.ResponseBody
    public ModelAndView getUserInfo(String key) {
        System.out.println("1");

        try {
            String url = "https://api.testpayup.co.kr/nsni/json/jisumelong" + key;

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
                if (body != null) {
                    System.out.println("Response:" + body.string());

                    mv.addObject("bodybody", body);
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
