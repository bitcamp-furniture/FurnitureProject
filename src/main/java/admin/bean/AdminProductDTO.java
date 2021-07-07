package admin.bean;

import java.util.Date;


import lombok.Data;
@Data
public class AdminProductDTO {
	private String id;
	private String order_number;
    private Date order_date;
    private String product_color;
    private String product_qty;
    private String product_name;
    private int total_amount;
    private String order_status;
	
}
