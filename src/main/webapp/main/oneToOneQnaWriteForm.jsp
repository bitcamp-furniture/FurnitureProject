<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<title>1:1 상품 QnA</title>
<style type="text/css">
div#subjectDiv, div#contentDiv {
	color:red;
	font-size: 8pt;
	font-weight: blod;
}
</style>

<h3>1:1 상품 문의 </h3>
<form name="oneToOneQnaWriteForm" id="oneToOneQnaWriteForm">
<table border="3" cellpadding="5" cellspacing="0">
<tr>
 <td align="center" width="100">제목</td>
 <td>
  <input type="text" name="subject" id="subject" size="50" placeholder="제목입력">
  <div id="subjectDiv"></div>
 </td>
</tr>
 
<tr>
 <td align="center">내용</td>
 <td>
  <textarea cols="50" rows="15" name="content" id="content" placeholder="내용입력"></textarea>
  <div id="contentDiv"></div>
 </td>
</tr>

<tr>
 <td colspan="2" align="center">
  <input type="button" value="1:1 상품문의  글 작성" id="oneToOneQnaWriteBtn">
  <input type="reset"  value="다시작성">
 </td>
</tr>

</table>
</form>






