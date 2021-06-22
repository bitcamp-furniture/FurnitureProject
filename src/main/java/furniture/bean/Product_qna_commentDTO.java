package furniture.bean;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class Product_qna_commentDTO {

	private int id;//기본키, 문의seq
	private String product_qna_id;//문의글번호
	private String qna_answer;// 답변
	
	@JsonFormat(shape=JsonFormat.Shape.STRING,pattern = "yyyy.MM.dd")
	private Date created_at;//등록일
	
}
