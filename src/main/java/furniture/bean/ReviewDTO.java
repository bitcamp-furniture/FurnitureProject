package furniture.bean;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class ReviewDTO {
	private int id; //  seq
	private String email;
	private String product_id;
	private String product_name; // 작성자, 상품명, 상품코드
	private int review_stars; // 별점 1~5
	private String review_content;
	private String review_image; 
	
	@JsonFormat(shape=JsonFormat.Shape.STRING,pattern = "yyyy.MM.dd")
	private Date created_at;//등록일
}
