package member.bean;

import lombok.Data;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

@Data
public class MemberDTO {
    private int id;
    private String email;
    private String name;
    private String password;
    private String phone;
    private String zipcode;
    private String addr1;
    private String addr2;
    private String bir_yy;
    private String bir_mm;
    private String bir_dd;
    private String verify;
    private String point;
    private String amount;
    private String kakaoId;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy.MM.dd")
    private Date created_at;
}
