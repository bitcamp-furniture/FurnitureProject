package furniture.bean;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class Product_qnaDTO {
   private int id;//기본키, 문의seq
   private String email;//이메일=아이디 ... 누가 문의를 남겼는지
   private String product_id;//제품코드 ... 검색용
   private String product_name;//제품명 ... 어떤 상품에 대한 문의인지
   private String qna_subject;//문의의 제목
   private String qna_content;//문의의 내용
   @JsonFormat(shape=JsonFormat.Shape.STRING,pattern = "yyyy.MM.dd")
   private Date created_atQ;//등록일
   private int reply;//댓글 수
   private String qna_answer; //답변
   @JsonFormat(shape=JsonFormat.Shape.STRING,pattern = "yyyy.MM.dd")
   private Date created_atA; //답변등록일
   
}
