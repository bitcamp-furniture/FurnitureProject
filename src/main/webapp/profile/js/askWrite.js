 $(document).ready(function() {
    $('#subject').on('keyup', function() {
        //$('#subject_cnt').html("("+$(this).val().length+" / 25)");

        if($(this).val().length > 25) {
         	  $(this).val($(this).val().substring(0, 25));
          //  $('#content_cnt').html("(25 / 25)");
            swal("제목은 25글자를 초과할 수 없습니다");
        }
    });
});

$('#askWriteBtn').click(function(){
	$('#ask_categoryDiv').empty();
	$('#oreder_numberDiv').empty();
	$('#subjectDiv').empty();
	$('#contentDiv').empty();
		
	if($('#ask_category').val() == ''){
		$('#ask_categoryDiv').text('문의를 선택하세요');
		$('#ask_categoryDiv').css('color', 'red');
		$('#ask_categoryDiv').css('font-size', '8pt');
		$('#ask_categoryDiv').css('font-weight', 'bold');
		
	}else if($('#order_number').val() == ''){
		$('#order_numberDiv').text('주문번호를 입력하세요');
		$('#order_numberDiv').css('color', 'red');
		$('#order_numberDiv').css('font-size', '8pt');
		$('#order_numberDiv').css('font-weight', 'bold');
			
	}else if($('#subject').val()==''){
		$('#subjectDiv').text('제목을 입력하세요');
		$('#subjectDiv').css('color', 'red');
		$('#subjectDiv').css('font-size', '8pt');
		$('#subjectDiv').css('font-weight', 'bold');
	}else if($('#content').val()==''){
		$('#contentDiv').text('내용을 입력하세요')
		$('#contentDiv').css('color', 'red');
		$('#contentDiv').css('font-size', '8pt');
		$('#contentDiv').css('font-weight', 'bold');
	}else{
	//단순 submit
	//$('#imageboardWriteForm').submit();
	
	//ajax 통신
	var formData = new FormData($('#askWriteForm')[0]);//form 안에 form은 안되지만 여러개의 form 설정은 가능
	//FormData는 여러개의 forms 객체를 생성해준다
	$.ajax({
		type:'post',
		url: '/furniture/profile/askWrite',
		enctype: 'multipart/form-data',
		processData: false,
		contentType:false,
		data: formData,
		success: function(){
			swal("등록 완료", "문의가 등록되었습니다", "success");
			//self.close();
			window.opener.location.reload();
			self.close();
			
		},
		error: function(err){
			console.log(err);
		}
		
		
	});
	
	}
});


$(function(){

	
	
});