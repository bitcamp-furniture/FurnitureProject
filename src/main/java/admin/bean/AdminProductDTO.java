package admin.bean;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;
@Data
public class AdminProductDTO {
	private String id;
	private String order_number;
	 @JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy.MM.dd")
    private Date order_date;
    private String product_color;
    private String product_qty;
    private String product_name;
    private int total_amount;
    private String order_status;
    private String name;
    private String zipcode;
    private String addr1;
    private String addr2;
    private String phone;    
    private String product_img_thumb;
    private String delivery_number;
	
}
