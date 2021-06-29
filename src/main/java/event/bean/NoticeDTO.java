package event.bean;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class NoticeDTO {
	private int id; // seq
	private String notice_subject;
	private String notice_content;

	@JsonFormat(shape=JsonFormat.Shape.STRING,pattern = "yyyy.MM.dd")
	private Date created_at; 
}


