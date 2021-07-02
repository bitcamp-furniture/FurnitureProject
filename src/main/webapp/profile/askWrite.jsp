<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/askWrite.css">

<meta charset="UTF-8">
<title>1:1문의</title>
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
    <input type="text" name="order_number" id="order_number" value=${param.id}>
    <div id="order_numberDiv"></div>
    </td>
  </tr>
  
  <tr>
    <td class="tg-0lax">성명</td>
    <td class="tg-0lax">
    <input type="text" name="name" id="name" value=${param.name} readonly>
    </td>
  </tr>
  
  <tr>
    <td class="tg-0lax">이메일</td>
    <td class="tg-0lax">
    <input type="text" name="email" id="email" value=${param.email} readonly>
    </td>
  </tr>
  
  <tr>
    <td class="tg-0lax">제목</td>
    <td class="tg-0lax">
    <input type="text" size="30" name="subject" id="subject" placeholder="제목 입력">
    <div id="subjectDiv"></div>
	<div id="subject_cnt"></div>
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
    <input type="file" name="img[]" multiple size="50" id="file">
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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src = "./js/askWrite.js"></script>
</body>
</html>