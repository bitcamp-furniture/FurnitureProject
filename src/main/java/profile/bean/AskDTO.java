package profile.bean;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class AskDTO {
	private int seq;
	private String ask_category;
	private String order_number;
	private String name;
	private String email;
	private String subject;
	private String content;
	private int reply;
	private String image1;
	private String answer;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy.MM.dd")
	private Date created_at;

}
