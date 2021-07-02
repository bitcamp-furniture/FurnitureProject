package profile.bean;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import profile.type.OrderStatusType;

import java.util.Date;

@Data
public class OrderDTO {
    private int order_number;
    private int id; //order_detail_id
    private String product_color;
    private int product_qty;
    private int product_amounts;
    private OrderStatusType order_status;
    //private OrderStatusType order_status;
    @JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy.MM.dd")
    private Date order_date;
    private String product_img_thumb;
    private String product_name;
}
