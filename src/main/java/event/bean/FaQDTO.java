package event.bean;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class FaQDTO {
      //div -구분(AS,환불,주문/결제/취소,배송,교환/반품,회원정보), subject-제목,content-내용 , created-faq -등록일자
      private int id; // seq
      private String div;
      private String subject;
      private String content;

      @JsonFormat(shape=JsonFormat.Shape.STRING,pattern = "yyyy.MM.dd")
      private Date created_faq; 
}

