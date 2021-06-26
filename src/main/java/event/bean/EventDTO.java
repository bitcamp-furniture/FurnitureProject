package event.bean;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class EventDTO {
	// id(seq) 이벤트 이름, 이벤트 기간(종료날짜), 대상 카테고리(리스트에 출력됨), 이미지(배너용), 이미지(view - 2개)
	private int id; // seq
	private String event_subject;
	private String event_content;

	@JsonFormat(shape=JsonFormat.Shape.STRING,pattern = "yyyy.MM.dd")
	private Date event_startDate; // 종료날짜
	@JsonFormat(shape=JsonFormat.Shape.STRING,pattern = "yyyy.MM.dd")
	private Date event_endDate; // 종료날짜
	
	// 카테고리: select * from product where product_category_name='침대' or product_category2='침대';
	private String event_category; // 카테고리 이름으로 이벤트에 등록 >> 대상 아이템 리스트를 아래에 출력
	
	private String event_img_banner; // 광고 배너용 이미지
	// 배너 및 디테일 이미지 사이즈 고정 필수
	private String event_img_detail; // eventView용 이미지(2개 고정)
	
}


