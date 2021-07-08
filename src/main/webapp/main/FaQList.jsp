<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
#FaQTypeTbl td{
	width: 120;
	align: center;
	padding: 10px;
}
#FaQTypeTbl td:hover{
	cursor: pointer;
}
#FaQTypeTbl td a:hover{
	background-color: darkblue;
	text-decoration: none;
	padding: 5px;
	
}
#subjectA:link {  text-decoration: none; }
#subjectA:visited {  text-decoration: none; }
#subjectA:hover { color:darkblue; text-decoration: underline; cursor: pointer; }
#subjectA:active {  text-decoration: none; }
#list a:hover{  text-decoration: underline; }

#paging {
	margin: 5px;
	padding: 5px 11px;
	color: darkblue;
	cursor: pointer;
}

#paging:hover {
	background-color: darkblue;
	color: white;
	border-radius: 5px;
}

#currentPaging {
	margin: 5px;
	padding: 5px 11px;
	background-color: darkblue;
	color: white;
	border-radius: 5px;
	cursor: pointer;
}

</style>

<br>
<br>
<table id="FaQTypeTbl" class="FaQTypeTbl" align="center">
<%--div라는 변수 값을 보내서 거기에 sql문을 맞춰서해야한다 --%>
<tr>
	<td onclick="clickDiv('전체');">
      	전체
   </td>
   <td onclick="clickDiv('상품');">
      	상품
   </td>
   <td onclick="clickDiv('배송');">
      	배송
   </td>
    <td onclick="clickDiv('주문/결제/취소');">
      	주문/결제/취소
   </td>
    <td onclick="clickDiv('교환/반품');">
      	교환/반품
   </td>
    <td onclick="clickDiv('회원정보');">
      	회원정보
   </td>
</tr>

</table>
<br>
<br>
<input type="hidden" value="${pg }" id="pg" >
<table id="FaAllQListTable" border="1" width="750" cellpadding="5" frame="hsides" rules="rows" align="center">
	 <tr align="center">
	    <th width="100">구분</th>
	    <th width="300">제목</th>
	    <th width="100">등록일</th>
	 </tr>
</table>
<table id="FaQListTable" border="1" width="750" cellpadding="5" frame="hsides" rules="rows" align="center">
</table>

<br><div align="center" id="FaQPagingDiv"></div><br>
<br><br>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>   
<script type="text/javascript">
//온로드로 페이지 뜨자마자 뜨는 데이터 
$(function() {
	faQAllListPaging(1);

});
// 클릭했을 시 그 값을 div에 넣고 보내 
function clickDiv(div){
	
	if(div == '전체')
	{
		faQAllListPaging(1);
	}
	//클릭시 div/1 보낸다
	else
	{
		faQListPaging(div,1)
	}
	
}
//모든 FaQ리스트 
function faQAllListPaging(pg)
{
	$.ajax({
		type: 'post',
		url: '/furniture/main/FaQAllList', 
		data: {'pg':pg},// pg
		dataType: 'json',
		success: function(data) {
			$('#FaAllQListTable tr:gt(0)').remove();
			$('#FaQListTable tr:gt(0)').remove();
			$('#FaQListTable tr:eq(0)').remove();
			//$('#FaAllQListTable tr:eq(0)').remove();
			
			$.each(data.faQAllList, function(index, items) {
				$('<tr/>').append($('<td/>', {
					align: 'center',
					text: items.div
				})).append($('<td/>', {
					}).append($('<a/>', {
						//href: '#',
						text: items.subject,
						id: 'subjectA',
						href: '/furniture/main/FaQView?id='+items.id,
						class: 'subject_'+items.id  
				}))).append($('<td/>', {
					//align: 'center',
					text: items.created_faq
				})).appendTo($('#FaAllQListTable'));
	
			}); // each
			
			// 페이징 처리 boardPagingDiv
			$('#FaQPagingDiv').html(data.faQAllListPaging.pagingHTML);
			
		},
		error: function(err) {
			console.log(err);
		}
	}); 
}
function faQListPaging(div,pg)
{
	//pg div는  잘 나옴
	$.ajax({
		type: 'post',
		url: '/furniture/main/FaQList', 
		data: {'div':div,
			   'pg':pg},// pg
		dataType: 'json',
		success: function(data) {
			
			//지우기
			$('#FaAllQListTable tr:gt(0)').remove();
			$('#FaQListTable tr:gt(0)').remove();
			$('#FaQListTable tr:eq(0)').remove();
			
			$.each(data.faQList, function(index, items) {
				$('<tr/>').append($('<td/>', {
					align: 'center',
					text: items.div
				})).append($('<td/>', {
					align: 'center'
					}).append($('<a/>', {
						href: '#',
						text: items.subject,
						id: 'subjectA',
						href: '/furniture/main/FaQView?id='+items.id,
						class: 'subject_'+items.id  
				}))).append($('<td/>', {
					//align: 'center',
					text: items.created_faq
				})).appendTo($('#FaQListTable'));
	
			}); // each
			
			// 페이징 처리 boardPagingDiv
			$('#FaQPagingDiv').html(data.faQListPaging.pagingHTML);
			
		},
		error: function(err) {
			alert("FaQ 실패")
			console.log(err);
		}
	});
} 
</script>
