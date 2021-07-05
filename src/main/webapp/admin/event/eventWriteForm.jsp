<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
.line {
	font-weight: normal;
	font-family: sans-serif;
	font-size: 30px;
	height:3px;
}

#imgSize {
	text-align: center;
	color: #848484;
	font-size: 14px;
}
</style>

<%-- 1. 단순 submit ~action --%>
<%-- <form id="imageboardWriteForm" enctype="multipart/form-data" action="imageboardWrite"> --%>
<br>
<h2 align="center">이벤트 등록</h2>
<hr class="line" size="5" color="#0101DF" noshade></hr>
<br>
<form class="eventWriteForm" id="eventWriteForm">
	<table border="0" cellspacing="0" cellpadding="3" align="center">
		<tr>
			<td width="100" align="center">이벤트 제목</td>
			<td><input type="text" size="30" name="event_subject"
				id="event_subject" placeholder="이벤트 제목 입력">
				<div id=event_subjectDiv></div></td>
		</tr>
		<tr>
			<td width="100" align="center">이벤트 카테고리</td>
			<td><select onchange="event_categoryChange(this)">
					<option value="">카테고리 선택1</option>
					<option value="침대">침대</option>
					<option value="소파">소파</option>
					<option value="책장/선반">책장/선반</option>
					<option value="식탁/책상">식탁/책상</option>
					<option value="수납장/장식장">수납장/장식장</option>
					<option value="옷장">옷장</option>
					<option value="의자">의자</option>
			</select> <select id="event_category" name="event_category">
					<option value="">카테고리 선택2</option>
			</select></td>
		</tr>
		<tr>
			<td width="100" align="center">이벤트 기간</td>
			<td><input type="date" size="30" name="event_startDate"
				id="event_startDate"> ~ <input type="date" size="30"
				name="event_endDate" id="event_endDate">
				<div id="event_endDateDiv"></div></td>
		</tr>
		<%-- 배너 이미지 --%>
		<%-- accept =".gif,.jpg,.png" 파일 확장자를 판매자에서 제한해야할지 말아야할지 --%>
		<tr>
			<td colspan="2">
				<div id="imgSize">-권장 이미지 가로는 400 세로는 200</div> <label
				for="bannerLabel">&nbsp;배너 이미지&nbsp;&nbsp;</label> <input
				type="file" size="50" name="event_banner">
				<div id="event_img_bannerDiv"></div>
			</td>
		</tr>
		<%-- 상세 이미지는 2개로 제한해야한다 --%>
		<%-- accept =".gif,.jpg,.png" 파일 확장자를 판매자에서 제한해야할지 말아야할지 --%>
		<tr>
			<td colspan="2">
				<div id="imgSize">&emsp;&emsp;&emsp;&emsp;-권장 이미지 가로는 1080 세로는
					1480입니다</div> <label for="detailLabel">&nbsp;상세 이미지&nbsp;&nbsp;</label> <input
				type="file" multiple size="50" name="event_detail[]"
				id="event_img_detail">
				<div id="event_img_detailDiv"></div>
			</td>

		</tr>
		<tr>
			<td align="center">이벤트 내용</td>
			<td><textarea cols="50" rows="15" name="event_content"
					id="event_content" placeholder="내용입력"></textarea>
				<div id="imageContentDiv"></div></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><input type="button" value="등록"
				id="eventWriteBtn"> <input type="reset" value="다시작성">
			</td>
		</tr>
	</table>
</form>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/furniture/admin/js/eventWrite.js"></script>
<script>
	//시작 날짜를 현재날짜로 잡았다 
	//유효성 검사에서 현재날짜보다 이전이면 현재 날짜 이후부터 시작해야합니다 라는 alert을 띄우기
	document.getElementById('event_startDate').valueAsDate = new Date();

	//카테고리 ~~
	function event_categoryChange(e) {
		var bed = [ "침대", "소파베드", "수납형침대", "간이침대" ];
		var sofa = [ "소파", "패브릭소파", "모듈식소파", "천연/인조가죽 소파" ];
		var bookshelf = [ "책장/선반", "큐브형수납", "선반유닛", "책장", "수납선반/유닛" ];
		var desk = [ "식탁/책상", "책상/컴퓨터책상", "침대협탁", "식탁세트", "화장대", "카페테이블" ]
		var closet = [ "수납장/장식장", "거실장/찬장", "장식장", "수납장", "서랍장" ];
		var clothes = [ "옷장", "여닫이옷장", "미닫이옷장", "거울옷장", "드레스룸옷장", "선반형옷장" ];
		var chair = [ "의자", "사무용의자", "식탁의자", "스툴/벤치", "바의자", "카페의자" ];

		var target = document.getElementById("event_category");

		if (e.value == "침대")
			var d = bed;
		else if (e.value == "소파")
			var d = sofa;
		else if (e.value == "책장/선반")
			var d = bookshelf;
		else if (e.value == "식탁/책상")
			var d = desk;
		else if (e.value == "수납장/장식장")
			var d = closet;
		else if (e.value == "옷장")
			var d = clothes;
		else if (e.value == "의자")
			var d = chair;

		target.options.length = 0;

		for (x in d) {
			var opt = document.createElement("option");
			opt.value = d[x];
			opt.innerHTML = d[x];
			target.appendChild(opt);
		}
	}
</script>