package profile.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;

import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import profile.bean.CartDTO;
import profile.service.ProfileService;

import javax.servlet.http.HttpSession;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class PayController {
    @Autowired
    ProfileService profileService;

    @RequestMapping(value = "/pay/order")
    @org.springframework.web.bind.annotation.ResponseBody
    public ModelAndView order(@RequestParam Map<String, String> map, HttpSession session) {
        System.out.println(map);
        int cartList_count = Integer.parseInt(map.get("cartList_count"));

        String product_name;
        if(cartList_count > 0) {
            product_name = map.get("product_name") + " 외 " + cartList_count +"개";
        } else {
            product_name = map.get("product_name");
        }

        String memId = String.valueOf(session.getAttribute("memId"));

        ModelAndView mav = new ModelAndView();

        try {
            String url = "https://api.testpayup.co.kr/ep/api/kakao/test_kakao/order";
            
            Gson gsonObj = new Gson();
            
            Map<String, Object> inputMap = new HashMap<String, Object>();
            inputMap.put("orderNumber", "100100100");
            //inputMap.put("amount", map.get("total"));
            inputMap.put("amount", String.valueOf(100));
            inputMap.put("itemName", product_name);
            inputMap.put("userName", memId);
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
            ResponseBody body = null;
            if (response.isSuccessful()) {
                // 응답 Body
                body = response.body();
//                if (body != null) {
//                    System.out.println("Response:" + body.string());
//                }
            } else
                System.err.println("Error Occurred");

            // MAP -> JSON 예제
            Map outputMap = gsonObj.fromJson(body.string(), Map.class);

            mav.addObject("Response", outputMap);
            mav.setViewName("jsonView");
            return mav;
        } catch (Exception e) {
            e.printStackTrace();
        }

        mav.addObject("Response", "");
        mav.setViewName("jsonView");
        return mav;
    }

    @RequestMapping(value = "/pay/payment")
    @org.springframework.web.bind.annotation.ResponseBody
    public void payment(@RequestParam Map<String, String> map, HttpSession session) {

        try {
            String url = "https://api.testpayup.co.kr/ep/api/kakao/test_kakao/pay";

            Gson gsonObj = new Gson();

            Map<String, Object> inputMap = new HashMap<String, Object>();
            inputMap.put("res_cd", map.get("res_cd"));
            inputMap.put("enc_info", map.get("enc_info"));
            inputMap.put("enc_data", map.get("enc_data"));
            inputMap.put("card_pay_method", map.get("card_pay_method"));
            inputMap.put("ordr_idxx", map.get("ordr_idxx"));

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
            ResponseBody body = null;
            if (response.isSuccessful()) {
                // 응답 Body
                body = response.body();
//                if (body != null) {
//                    System.out.println("Response:" + body.string());
//                }
            } else
                System.err.println("Error Occurred");

            // MAP -> JSON 예제
            Map outputMap = gsonObj.fromJson(body.string(), Map.class);

            int memId = (Integer) session.getAttribute("memId");
            List<CartDTO> cartList = profileService.getAllCartList(memId);

            Map<String, Object> orderMap = new HashMap<String, Object>();


            orderMap.put("memId", memId);
            orderMap.put("total", map.get("total"));
            orderMap.put("cartList", cartList);


            int order_number = profileService.paymentWrite(orderMap);

            outputMap.put("order_number", order_number);


            System.out.println("outputMap = " + outputMap);
            profileService.payment(outputMap);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    @RequestMapping(value = "/pay/cancel")
    @org.springframework.web.bind.annotation.ResponseBody
    public ModelAndView cancel(@RequestParam Map<String, String> map) {

        ModelAndView mav = new ModelAndView();


        try {
            String url = "https://api.testpayup.co.kr/ep/api/kakao/test_kakao/cancel";

            Gson gsonObj = new Gson();

            Map<String, Object> cancelMap = new HashMap<String, Object>();
            cancelMap.put("transactionId", map.get("transactionId"));
            String signature = Sha256("test_kakao|"+map.get("transactionId")+"|5a594647c79a45deb579ff5c96cfb4cf");
            cancelMap.put("signature", signature);


            String jsonStr = gsonObj.toJson(cancelMap);
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
            ResponseBody body = null;
            if (response.isSuccessful()) {
                // 응답 Body
                body = response.body();
//                if (body != null) {
//                    System.out.println("Response:" + body.string());
//                }
            } else
                System.err.println("Error Occurred");

            // MAP -> JSON 예제
            Map cancelOutputMap = gsonObj.fromJson(body.string(), Map.class);

            mav.addObject("Response", cancelOutputMap);
            mav.setViewName("jsonView");
            return mav;
        } catch (Exception e) {
            e.printStackTrace();
        }

        mav.addObject("Response", "");
        mav.setViewName("jsonView");
        return mav;
    }

    public static String Sha256(String data) throws Exception {
        String retVal = "";
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(data.getBytes());

            byte byteData[] = md.digest();
            StringBuffer sb = new StringBuffer();

            for(int i=0; i<byteData.length; i++) {
                sb.append(Integer.toString((byteData[i]&0xff) + 0x100, 16).substring(1));
            }

            StringBuffer hexString = new StringBuffer();
            for(int i=0; i<byteData.length;i++) {
                String hex = Integer.toHexString(0xff & byteData[i]);
                if(hex.length() == 1) {
                    hexString.append('0');
                }
                hexString.append(hex);
            }

            retVal = hexString.toString();
        } catch(NoSuchAlgorithmException e){
            System.out.println("EncBySHA256 Error:" + e.toString());
        }
        System.out.println(retVal);
        return retVal;
    }
}