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
.askBtn {
   box-shadow:inset 0px 1px 0px 0px #ffffff;
   background-color:#2F3894;
   border-radius:6px;
   border:1px solid #dcdcdc;
   display:inline-block;
   cursor:pointer;
   color:#ffff;
   font-family:Arial;
   font-size:13px;
   font-weight:bold;
   padding:6px 24px;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>1:1 문의내역</h3>
<h5>상담시간</h5>
<h5>평일(월 ~ 금) 10:00 ~ 17:00</h5>
<h5>(Off-time 12:00 ~ 14:00, 토/일/공휴일 휴무)</h5>
<h6>한번 등록한 상담내용은 수정이 불가능합니다.</h6>
<button class="askBtn" id="askBtn" type="button">1:1문의 쓰기</button>
<br>
<br>
<input type="hidden" id="pg" value="${pg }">
<table class="ask table" id="askListTable" border="1" bordercolor="#2F3894" width="800" cellpadding="5" cellspacing="0" frame="hsides" rules="rows">
   <tr > 
      <th style="text-align: center;">글 번호</th>
      <th style="text-align: center;">상담구분</th>
      <th style="text-align: center;">상담제목</th>
      <th style="text-align: center;">작성일</th>
      <th style="text-align: center;">답변유무</th>
   </tr>   
   
</table>
<div id="boardPagingDiv" style="float: left; width: 750px; text-align: center;"></div>


<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">


$('#askBtn').click(function(){
	window.open("askWrite.jsp", "문의", "width=700, height=800, left=200, top=70");
});


$(function(){
	$.ajax({
		type: 'post',
		url: '/furniture/profile/getAskList',
		data: 'pg='+$('#pg').val(),
		dataType: 'json',
		success: function(data){
			$.each(data.list, function(index, items){
				$('<tr/>').append($('<td/>',{
					align:'center',
					text: items.seq
				})).append($('<td/>',{
					align:'center',
					text: items.ask_category
				})).append($('<td/>',{
					align:'center',
					text: items.subject
				})).append($('<td/>',{
					align:'center',
					text: items.created_at
				})).append($('<td/>',{
					align:'center',
					text: items.reply
				})).appendTo($('#askListTable'));
				
		});//each
		
		$('#boardPagingDiv').html(data.askPaging.pagingHTML);
	
		},
		error: function(err){
			console.log(err);
		}
			
			
			
		});
});

function askPaging(pg){

		location.href = 'askList?pg='+pg;


	
}

</script>

</body>
</html>