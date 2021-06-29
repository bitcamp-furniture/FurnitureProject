package furniture.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class ProductImageDTO {
	private int id; //seq 
	private String product_code; //상품코드
	private String product_img_thumb; //이미지 썸네일
	private String product_img_detail; //이미지 디테일
}
