<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
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



<input type="hidden" id="pg" value="${pg }"> 

<table class="faqTypeTbl">
<tr>
   <td onclick="location.href='/furniture/main/FaQList?div=상품?pg='+${pg}">
      <a href="/furniture/main/FaQ?div=상품">상품</a>
   </td>
   <td onclick="location.href='/furniture/main/FaQList?div=주문/결제/취소?pg='+${pg}">
      <a href="/furniture/main/FaQ?div=주문/결제/취소">주문/결제/취소</a>
   </td>
   <td onclick="location.href='/furniture/main/FaQList?div=배송?pg='+${pg}">
      <a href="/furniture/main/FaQ?div=배송">배송</a>
   </td>
   <td onclick="location.href='/furniture/main/FaQList?div=교환/반품?pg='+${pg}">
      <a href="location.href='/furniture/main/FaQ?div=교환/반품">교환/반품</a>
   </td>
   <td onclick="location.href='/furniture/main/FaQList?div=A/S?pg='+${pg}">
      <a href="location.href='/furniture/main/FaQ?div=A/S">A/S</a>
   </td>
   <td onclick="location.href='/furniture/main/FaQList?div=회원정보?pg='+${pg}">
      <a href="location.href='/furniture/main/FaQ?div=회원정보">회원정보</a>
   </td>
</tr>

</table>

<table id="FaQListTable" border="1" bordercolor="yellow"  width="750" cellpadding="5" frame="hsides" rules="rows">
 <tr>
    <th width="100">구분</th>
    <th width="300">제목</th>
    <th width="100">등록일</th>
 </tr>
 
</table>
   
<div id="boardPagingDiv" style="float: left; width: 750px; text-align: center;"></div>   
<br><br>



	
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>   
<script type="text/javascript">
</script>	


