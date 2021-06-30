package category.bean;

import lombok.Data;

@Data
public class ProductListDTO {
	private int id; //seq 
	private String product_name; // 제품명
	private String product_code; //제품코드
	private int product_price; //가격
	private String product_category_name; //카테고리 이름

	private String product_category1; //카테고리1
	private String product_category2; //카테고리2

	private String product_img_thumb; // 썸네일 이미지
}