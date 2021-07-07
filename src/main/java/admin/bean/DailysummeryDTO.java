package admin.bean;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class DailysummeryDTO {
	// 일자 주문수 매출액 가입 문의 리뷰
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy.MM.dd")
	private Date Daily; // 일자
	private int product_count; // 주문수
	private int product_price; // 매출액
	private int join_count; // 가입수
	private int ask_count; // 문의 수
	private int review_count; // 리뷰수

}
