package profile.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;

import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
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
    @RequestMapping(value = "/pay/order")
    @org.springframework.web.bind.annotation.ResponseBody
    public boolean order() {
        try {
            String url = "https://api.testpayup.co.kr/ep/api/kakao/test_kakao/order";
            
            Gson gsonObj = new Gson();
            
            Map<String, String> inputMap = new HashMap<String, String>();
            inputMap.put("orderNumber", "100100100");
            inputMap.put("amount", "1004");
            inputMap.put("itemName", "파멸의옷장");
            inputMap.put("userName", "김지수");
            inputMap.put("returnUrl", "1");
            inputMap.put("serviceType", "0002");
            inputMap.put("signature", "1");
            inputMap.put("timestamp", "2021070700002400");
            inputMap.put("userAgent", "WP");
            
            String jsonStr = gsonObj.toJson(inputMap);
            System.out.println("MAP -> JSON 예제 : " + jsonStr);
            
            // OkHttp 객체 생성
            OkHttpClient client = new OkHttpClient();
            
            // RequestBody 생성
            RequestBody requestBody = RequestBody.create(
                     MediaType.parse("application/json; charset=utf-8"), jsonStr);
            
            //RequestBody requestBody = RequestBody.create(null, new byte[0]);
            
            // Post 객체 생성
            Request.Builder builder = new Request.Builder().url(url)
                //.addHeader("Password", "BlahBlah")
                .post(requestBody);
            	
            Request request = builder.build();
     
            // 요청 전송
            Response response = client.newCall(request).execute();
            if (response.isSuccessful()) {
                // 응답 Body
                ResponseBody body = response.body();
                if (body != null) {
                    System.out.println("Response:" + body.string());
                }
            } else
                System.err.println("Error Occurred");
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}