package event.bean;

import lombok.Data;

@Data
public class ProductManagingDTO {
	private int id; // 상품번호
	private String product_code; // 제품코드
	private String product_name; // 상품명
	private int product_price; //가격
	private String product_category_name; //카테고리 이름
	private String product_category1; //카테고리1
	private double review; // 리뷰 평균
}
