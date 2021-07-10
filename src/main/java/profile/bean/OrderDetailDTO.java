package profile.bean;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import profile.type.OrderStatusType;

import java.util.Date;

@Data
public class OrderDetailDTO {
	private int id; //order_detail_id seq
	private int product_price;// 상품가격
	private int product_qty;//수량
	private int product_amounts; //상품가격*수량
	private int order_number;//주문번호
    private String product_id;//상품id
    private OrderStatusType order_status; //주문상태 기본 "PAYMENTCOMPLETED"
    private String product_color; //상품색상
    private String product_img_thumb;//썸네일

}
