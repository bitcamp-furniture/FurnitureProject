<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
 




<h3>상품 등록</h3>
<%-- 1. 단순 submit ~~ action --%>
<form name="productRegistration" id="productRegistration" method="post" enctype="multipart/form-data" action="/furniture/productRegistration">
   <table border="1" cellpadding="5" cellspacing="0"  width="900px">   
   
   
   
   
      <tr>
          <td align="center" width="100">제품코드</td>
          <td>
              <input type="text" name=product_code id="product_code" size="50" placeholder="제품코드 입력">
              <div id="product_codeDiv"></div>
          </td>
      </tr>
      <tr>
          <td align="center">제품명</td>
          <td>
              <input type="text" name="product_name" id="product_name" size="50" placeholder="제품명 입력">
              <div id="product_nameDiv"></div>
              
          </td>
      </tr>
       <tr>   
          <td align="center">가격</td>
          <td>
              <input type="text" name="product_price" id="product_price" size="50" placeholder="가격 입력">
              <div id="product_priceDiv"></div>
              
          </td>
      </tr>
       <tr>
      
       
          <td align="center">카테고리</td>
          <td>
		<input type="hidden" name="product_category_name" id="product_category_name" value="">
		
		
        <span id="category1"></span>
        <span id="category2"></span>
		<div id="product_categoryDiv"></div>
              
          </td>
      </tr>
      
      <tr>
          <td align="center">색상</td>
          <td>
                    <label><input type="checkbox" name="product_colors" value="B" > BLACK</label>
                    <label><input type="checkbox" name="product_colors" value="W" > WHITE</label>
                    <label><input type="checkbox" name="product_colors" value="R" > RED</label>
                    <label><input type="checkbox" name="product_colors" value="S" > SILVER</label>
                    <label><input type="checkbox" name="product_colors" value="N" > NAVY</label>
                    <label><input type="checkbox" name="product_colors" value="P" > PUPPLE</label>
       				<div id="checkboxDiv"></div>
       				
              
          </td>
         </tr>
         
         
         <!-- <tr>   
          <td align="center">재고</td>
          <td>
              <input type="text" name="stock" id="stock" size="50" placeholder="재고입력">
              <div id="stockDiv"></div>
              
          </td>
         </tr> -->
      
      
      
      <tr>
         <td colspan="2"><!-- 상품 썸네일  -->
         <input type="file" name="img" id="product_img_thumb"size="50">
         <div id="product_img_thumbDiv"></div>
         
      </tr>
      
   
      <tr>
         <td colspan="2"><!-- 상품 디테일  -->
         <input type="file" name="detailImg[]" id="product_img_detail" multiple size="50">
         <div id="product_img_detailDiv"></div>
         
      </tr>

      <tr>
         <td colspan="2" align="center">
            <input type="submit" value="제품 등록" id="productRegistrationBtn">
            <input type="reset"  value="다시작성">
         </td>
      </tr>
   </table>
</form>



<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script> 
<script src="/furniture/js/dashBoard.js"></script>



