<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<meta charset="UTF-8">
<title>IKEZKE</title>
</head>
<style>
@font-face {
  font-family: 'Glyphicons Halflings';

  src: url('../fonts/glyphicons-halflings-regular.eot');
  src: url('../fonts/glyphicons-halflings-regular.eot?#iefix') format('embedded-opentype'), url('../fonts/glyphicons-halflings-regular.woff2') format('woff2'), url('../fonts/glyphicons-halflings-regular.woff') format('woff'), url('../fonts/glyphicons-halflings-regular.ttf') format('truetype'), url('../fonts/glyphicons-halflings-regular.svg#glyphicons_halflingsregular') format('svg');
}

body {
	margin:0;
	padding:0;
	height:100%;
	font-family: "Helvetica Neue", Helvetica, "Apple SD Gothic Neo", Arial, "Malgun Gothic", "Noto Sans", sans-serif;
	font-size:13px;
	background: #eee;
	-ms-overflow-style: scrollbar;
	-webkit-font-smoothing: antialiased;
}

/* 사이드 메뉴 */
.left_sub_menu {
    position: fixed;
    width: 230px;
    z-index: 10;
    background: #353535;
    border-right: 1px solid rgba(0, 0, 0, 0.07);
    bottom: 50px;
    height: 100%;
    margin-bottom: -50px;
    margin-top: 0px;
    padding-bottom: 0px;
    box-shadow: 0 0px 24px 0 rgb(0 0 0 / 6%), 0 1px 0px 0 rgb(0 0 0 / 2%);
    color: black;
    overflow: auto;
}

.sub_menu {
    margin-top: 6.5px;
}

/* 메뉴바 글씨 */
.left_sub_menu>.sub_menu li:hover {
    color: ff5858;
    background-color: #292929;
}

.left_sub_menu>.sub_menu li {
    color: white;
    position: relative;
    display: block;
    text-decoration: none;
    padding: 9px 17px 9px 25px;
    font-size: 14px;
    line-height: normal;
    border-radius: 0;
    white-space: nowrap;
    overflow: hidden;
    transition: .3s;
}

/* 사이트 관리 글씨 */
.sub_menu>span {
    color: #888;
    position: relative;
    display: block;
    text-decoration: none;
    font-size: 13px;
    line-height: normal;
    border-radius: 0;
    padding-left: 20px;
    min-height: 30px;
    min-width: 64px;
    white-space: nowrap;
    overflow: hidden;
}

.sub_menu .fas {
    color: #ff5858;
    font-size: 20px;
    line-height: 20px;
    float: right;
    margin-right: 20px;
}

/* 메뉴바 서브제목 */
.sub_menu>.big_menu>.small_menu li {
    color: #333;
    font-size: 14px;
    border-bottom: 0px solid #e1e1e1;
    padding-top: 8px;
/*     margin-left: 43px; */
}

.big_menu {
    cursor: pointer;
}

.big_menu li a{
    cursor: pointer;
    color: #fff;
    text-decoration: none;
    background-color: transparent;
}

.small_menu li a.active:hover {
    background-color: #1A6DFF;
}

.small_menu li a {
    color: #ccc;
    text-decoration: none;
    background-color: transparent;
    margin-left: 43px;
}

.wrapper >.topbar >.left_sub_menu >.sub_menu >.big_menu,
.wrapper >.topbar >.left_sub_menu >.sub_menu >.big_menu >.small_menu {
    padding-inline-start: 0px;
    list-style: none;
    margin: 0px;
    padding: 0px;
}

.has_sub {
    width: 100%;
}

.overlay {
    position: fixed;
    width: 100%;
    height: 100%;
}

.hide_sidemenu {
    display: none;
}

/* content */
#content {
    position: relative;
}

.header__logo {
    color: white;
    position: relative;
    display: block;
    text-decoration: none;
    padding: 9px 17px 9px 55px;
    font-size: 20px;
    line-height: normal;
    border-radius: 0;
    white-space: nowrap;
    overflow: hidden;
    margin-left:22px;
    transition: .3s;
}
.big_menu a{
	color: white;
	text-decoration: none;
}
</style>
<head>
<meta charset="UTF-8">
<title>IKEZKE</title>
</head>

<body>
    <div id="wrapper" class="wrapper">
        <div class="topbar" style="position: absolute; top:0;">
	       <div class="header__top__inner">

	        </div>
            <!-- 왼쪽 서브 메뉴 -->
            <div class="left_sub_menu">
                <div class="sub_menu">
                    <div class="header__logo">IKEZKE</div>
                	<hr class="line" style="margin:0;">
                    <ul class="big_menu">
						<li><ion-icon name="bed" style="color:#8f8f8f; font-size:16px;"></ion-icon>&emsp;&emsp;<a href="/furniture/">사이트 바로가기</a></li>
						<li id="dashBoardShow"><ion-icon name="grid" style="color:#8f8f8f; font-size:16px;"></ion-icon>&emsp;&emsp;<a href="/furniture/admin/adminIndex">대시보드</a></li>
                    </ul><hr class="line" style="margin:0;">

                    <ul class="big_menu">
						<li><ion-icon name="person-sharp" style="color:#8f8f8f; font-size:16px;"></ion-icon>&emsp;&emsp;사용자 관리 &emsp;&emsp;&emsp;<ion-icon name="caret-down" style="color:#8f8f8f;"></ion-icon></li>
                        <ul class="small_menu admin">
                            <li id="memberListShow"><a href="/furniture/admin/memberList">회원목록</a></li><!-- id="memberListShow" -->
                            <li><a href="#">메일 발송 설정</a></li>
                        </ul>
                    </ul>
                    <ul class="big_menu">
                        <li><ion-icon name="bag" style="color:#8f8f8f; font-size:16px;"></ion-icon>&emsp;&emsp;쇼핑 &nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<ion-icon name="caret-down" style="color:#8f8f8f;"></ion-icon></li>
                        <ul class="small_menu"> 
                            <li><a href="/furniture/admin/product/orderControl">주문관리</a></li>
                            <li><a href="#">주문내역</a></li>
                            <li><a href="/furniture/admin/product/productManaging">상품관리</a></li>
                            <li><a href="#">상품등록</a></li>
                        </ul>
                    </ul>
                    <ul class="big_menu">
                        <li><ion-icon name="analytics" style="color:#8f8f8f; font-size:16px;"></ion-icon>&emsp;&emsp;통계 &nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<ion-icon name="caret-down" style="color:#8f8f8f;"></ion-icon></li>
                        <ul class="small_menu">
                            <li><a href="#">매출</a></li>
                            <li><a href="#">정산</a></li>
                        </ul>
                    </ul>
                    <ul class="big_menu">
                        <li><ion-icon name="create" style="color:#8f8f8f; font-size:16px;"></ion-icon>&emsp;&emsp;컨텐츠 관리 &emsp;&emsp;&emsp;<ion-icon name="caret-down" style="color:#8f8f8f;"></ion-icon></li>
                        <ul class="small_menu">
                            <li><a href="#">QNA관리</a></li>
                            <li><a href="/furniture/admin/review">리뷰관리</a></li>
                        </ul>
                    </ul>
                    <ul class="big_menu">
                        <li><ion-icon name="megaphone" style="color:#8f8f8f; font-size:16px;"></ion-icon>&emsp;&emsp;마케팅 관리 &emsp;&emsp;&emsp;<ion-icon name="caret-down" style="color:#8f8f8f;"></ion-icon></li>
                        <ul class="small_menu">
                            <li id="eventWriteShow"><a href="/furniture/admin/event/eventWriteForm">이벤트 등록</a></li>
                            <li><a href="/furniture/admin/event/eventList">이벤트 목록</a></li>
                        </ul>
                    </ul>
<!-- 서브메뉴 end -->
                </div>
            </div>
        </div>
        
        
<!-- contents start -->
   <div id="content" class="dashboard_main" style="margin-left:230px">
      <section>
         <div class="clearfix area_wrap">
            <div class="section-body float_l">
               <div id="section">
                     <c:if test="${empty display }">
                        <jsp:include page="/admin/dashBoard.jsp" />
                     </c:if>
                     <c:if test="${not empty display }">
                        <jsp:include page="${display }" />
                     </c:if>
                  </div>
            </div>
         </div>
      </section>
   </div>
</div>
 <!-- 왼쪽 사이드 메뉴 스크립트 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function () {
    //왼쪽메뉴 드롭다운
    $(".sub_menu ul.small_menu").hide();
    $(".sub_menu ul.big_menu").click(function () {
        $("ul", this).slideToggle(300);
    });
    
/*     $('.menuDiv').hide();
    $('.dashBoardDiv').show(); */
});

/* $('#dashBoardShow').click(function(){
    $('.menuDiv').hide();
	$('.dashBoardDiv').show();	
});

$('#memberListShow').click(function(){
    $('.menuDiv').hide();
	$('.memberDiv').show();	
});

$('#eventWriteShow').click(function(){
    $('.menuDiv').hide();
	$('.eventWriteDiv').show();
}); */
</script>

<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
</body>
</html>