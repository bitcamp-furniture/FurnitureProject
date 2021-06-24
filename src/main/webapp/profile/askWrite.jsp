<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<style type="text/css">
      td {
        border: 1px solid #333333; }
</style>



<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="askWriteForm" id="askWriteForm">
<table class="askWrite table" >

  <tr>
    <td class="tg-0lax">구매관련문의</td>
    <td class="tg-0lax">
	    <select name="ask_category" id="ask_category">
	    <option value="">문의선택</option>
	    <option value="배송">배송</option>
	    <option value="취소">취소</option>
	    <option value="반품교환">반품교환</option>
	    <option value="회원정보">회원정보</option>
	    <option value="기타">기타</option>
	    </select>
	    <div id="ask_categoryDiv"></div>
    </td>
  </tr>
  
  <tr>
    <td class="tg-0lax">주문번호</td>
    <td class="tg-0lax">
    <input type="text" name="order_number" id="order_number" placeholder="주문번호 입력">
    <div id="order_numberDiv"></div>
    </td>
  </tr>
  
  <tr>
    <td class="tg-0lax">성명</td>
    <td class="tg-0lax">
    <input type="text" name="name" id="name" value="오대근" readonly>
    </td>
  </tr>
  
  <tr>
    <td class="tg-0lax">이메일</td>
    <td class="tg-0lax">
    <input type="text" name="email" id="email" value="asd@asd.com" readonly>
    </td>
  </tr>
  
  <tr>
    <td class="tg-0lax">제목</td>
    <td class="tg-0lax">
    <input type="text" size="30" name="subject" id="subject" placeholder="제목 입력">
    <div id="subjectDiv"></div>
    </td>
  </tr>
  
  <tr>
    <td class="tg-0lax">내용</td>
    <td class="tg-0lax">
  <textarea cols="50" rows="15" name="content" id="content" placeholder="내용 입력"></textarea>
  <div id="contentDiv"></div>
    </td>
  </tr>
  
  <tr>
    <td class="tg-0lax">이미지</td>
    <td class="tg-0lax">
    <input type="file" name="img[]" multiple size="50">
    </td>
  </tr>
  
  <tr>
   <td class="tg-0lax" colspan="2">
   <button type="button" id="askWriteBtn">문의하기</button>
   </td>
  </tr>

</table>
</form>



<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- <script src="js/wishlist.js"></script> -->
<script type="text/javascript">
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
			alert('등록 완료');
			self.close();
			
		},
		error: function(err){
			console.log(err);
		}
		
		
	});
	
	}
});
</script>
</body>
</html>