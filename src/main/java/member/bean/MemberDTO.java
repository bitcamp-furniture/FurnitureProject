package member.bean;

import lombok.Data;

import java.sql.Date;

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
    private String point;
    private String kakaoId;
    private Date created_at;
}
