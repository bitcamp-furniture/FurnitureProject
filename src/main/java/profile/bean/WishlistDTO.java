package profile.bean;

import lombok.Data;

@Data
public class WishlistDTO {
	private int id;
	private String member_id;
	private String product_code;
	private String product_img_thumbl;
}
