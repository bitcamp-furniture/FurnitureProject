package profile.bean;

import lombok.Data;

@Data
public class CartDTO {
    private int id;
    private int bno;
    private String member_id;
    private String product_id;//
    private String product_name;
    private String product_option_color;//
    private int product_count;//
    private int product_price;//
    private String product_img_thumb;
}