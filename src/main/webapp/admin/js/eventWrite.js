//이벤트 WriteFrom 유효성 검사

$('#eventWriteBtn').click(function() {
	// 현재 날짜
	var toDay = $('#event_startDate').val();
	// 이벤트 끝나는 날짜
	var endDay = $('#event_endDate').val();

	// 이미지 제한할 가로 사이즈
	var imgeWidth = 100;
	// 이미지 제한할 세로 사이즈
	var imageHeigth = 200;

	if ($('#event_subject').val() == '') {
		$('#event_subjectDiv').text('이벤트 제목을 입력하세요');
		$('#event_subjectDiv').css('color', '#0040FF');
		$('#event_subjectDiv').css('font-size', '8pts');
		$('#event_subjectDiv').css('font-weights', 'normal');
	}
	// 이벤트 날짜가 입력이 안되어있을 경우
	else if ($('#event_endDate').val() == '') {

		$('#event_endDateDiv').text('이벤트 날짜를 입력해주세요');
		$('#event_endDateDiv').css('color', '#0040FF');
		$('#event_endDateDiv').css('font-size', '8pts');
		$('#event_endDateDiv').css('font-weights', 'normal');

	}
	// 이벤트 마지막 날짜가 현재 날짜보다 낮으면
	else if (toDay > endDay) {
		alert("종료날짜가 시작날짜보다 빠를 수 없습니다.")
	}

	// 배너이미지가 없을경우
	else if ($('#event_img_banner').val() == '') {

		$('#event_img_bannerDiv').css('text-align', 'center');
		$('#event_img_bannerDiv').text('배너 이미지를 넣어주세요');
		$('#event_img_bannerDiv').css('color', '#0040FF');
		$('#event_img_bannerDiv').css('font-size', '8pts');
		$('#event_img_bannerDiv').css('font-weights', 'normal');
	}
	// 상세 이미지가 없을 경우
	else if ($('#event_img_detail').val() == '') {
		$('#event_img_detailDiv').css('text-align', 'center');
		$('#event_img_detailDiv').text('상세 이미지를 넣어주세요');
		$('#event_img_detailDiv').css('color', '#0040FF');
		$('#event_img_detailDiv').css('font-size', '8pts');
		$('#event_img_detailDiv').css('font-weights', 'normal');
	}
	// 내용이 없을 경우 내용 입력하세요
	else if ($('#imageContent').val() == '') {
		$('#imageContentDiv').text('내용 입력하세요');
		$('#imageContentDiv').css('color', '#0040FF');
		$('#imageContentDiv').css('font-size', '8pts');
		$('#imageContentDiv').css('font-weights', 'normal');
	}
	// form안에 있는 모든것들을 다 객체로 보내겠다
	else {

		var eventWriteData = new FormData($('.eventWriteForm')[0]);
		// var silhum = document.$('#event_content').text();
		// alert(silhum);
		console.log(eventWriteData);
		$.ajax({
			type : 'post',
			url : '/furniture/admin/event/eventWrite',
			enctype : 'multipart/form-data',
			processData : false,
			contentType : false,
			data : eventWriteData,
			success : function(data) {
				alert('이벤트 등록 완료');
				location.href = '/furniture/admin/event/eventList';

			},
			error : function(err) {
				alert("에러떴다 ");
				console.log(err);
			}
		});
	}
});