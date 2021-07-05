package admin.bean;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import category.bean.ProductListDTO;
import lombok.Data;

@Data
public class adminReviewDTO {
	
// id(seq) 이벤트 이름, 이벤트 기간(종료날짜), 대상 카테고리(리스트에 출력됨), 이미지(배너용), 이미지(view - 2개)
	private int id; // seq
	private String email;
	private int product_id;
	private String product_name;
	private int review_stars;
	private String review_content;
	private String review_image;
	@JsonFormat(shape=JsonFormat.Shape.STRING,pattern = "yyyy.MM.dd")
	private Date created_at; // 종료날짜

}
