<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
@font-face {
  font-family: 'Glyphicons Halflings';

  src: url('../fonts/glyphicons-halflings-regular.eot');
  src: url('../fonts/glyphicons-halflings-regular.eot?#iefix') format('embedded-opentype'), url('../fonts/glyphicons-halflings-regular.woff2') format('woff2'), url('../fonts/glyphicons-halflings-regular.woff') format('woff'), url('../fonts/glyphicons-halflings-regular.ttf') format('truetype'), url('../fonts/glyphicons-halflings-regular.svg#glyphicons_halflingsregular') format('svg');
}
body{
	margin:0;
	padding:0;
	height:100%;
}
.side-menu {
    width: 45px;
    z-index: 10;
    background: #ff5858;
    border-right: 1px solid rgba(0, 0, 0, 0.07);
    bottom: 50px;
    height: 100%;
    margin-top: 0px;
    position: fixed;
    box-shadow: 0 0px 24px 0 rgb(0 0 0 / 6%), 0 1px 0px 0 rgb(0 0 0 / 2%);
}

.sidebar-inner {
    height: 100%;
    padding-top: 30px;
}

#sidebar-menu,
#sidebar-menu ul,
#sidebar-menu li,
#sidebar-menu a {
    border: 0;
    font-weight: normal;
    line-height: 1;
    list-style: none;
    margin: 0;
    padding: 0;
    height: 39px;
    position: relative;
    text-decoration: none;
}

#sidebar-menu>ul>li a {
    color: #fff;
    font-size: 20px;
    display: block;
    padding: 14px 0px;
    margin: 0px 0px 0px 8px;
    border-top: 1px solid rgba(0, 0, 0, 0.1);
    border-bottom: 1px solid rgba(255, 255, 255, 0.05);
    width: 28px;
    cursor: pointer;
}

#sidebar-menu .fas {
    padding-left: 6px;
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
    margin-top: 50px;
}

.left_sub_menu>.sub_menu li:hover {
    color: ff5858;
    background-color: #292929;
}

.left_sub_menu>.sub_menu li {
    color: white;
    position: relative;
    display: block;
    text-decoration: none;
    padding: 6px 17px 6px 55px;
    font-size: 14px;
    line-height: normal;
    border-radius: 0;
    white-space: nowrap;
    overflow: hidden;
}

.sub_menu>span {
/*     padding-bottom: 4px;
    border-bottom: 3px solid #797979;
    margin-top: 30px;
    font-size: 21px;
    font-weight: 600;
    color: white;
    margin-left: 10px;
    margin-right: 10px;
    font-family: 'NotoKrB';
    line-height: 35px; */
    padding: 0px 0 13px 24px;
    color: #fff;
    position: relative;
    display: block;
    text-decoration: none;
    font-size: 13px;
    line-height: normal;
    border-radius: 0;
    padding-left: 55px;
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

.sub_menu>.big_menu>.small_menu li {
    color: #333;
    font-size: 14px;
    font-weight: 600;
    border-bottom: 0px solid #e1e1e1;
    padding-top: 8px;
}

.big_menu {
    cursor: pointer;
}

ul {
    padding-inline-start: 0px;
}
a.active:hover {
    background-color: #1A6DFF;
}
a {
    color: #ccc;
    text-decoration: none;
    background-color: transparent;
}

ul {
    list-style: none;
}

ol,
ul {
    margin-top: 0;
    margin-bottom: 10px;
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
/*     padding-top: 50px; */
    position: relative;
    width: 100%;
}
</style>
<body>
    <div id="wrapper">
        <div class="topbar" style="position: absolute; top:0;">
            <!-- 왼쪽 서브 메뉴 -->
            <div class="left_sub_menu">
                <div class="sub_menu">
					<span>사이트 관리</span>
                    <ul class="big_menu">
                        <li>사용자 관리<i class="arrow fas fa-angle-right"></i></li>
                        <ul class="small_menu">
                            <li><a href="#">소메뉴1-1</a></li>
                            <li><a href="#">소메뉴1-2</a></li>
                            <li><a href="">소메뉴1-3</a></li>
                            <li><a href="#">소메뉴1-4</a></li>
                        </ul>
                    </ul>
                    <ul class="big_menu">
                        <li>MENU 2 <i class="arrow fas fa-angle-right"></i></li>
                        <ul class="small_menu">
                            <li><a href="#">소메뉴2-1</a></li>
                            <li><a href="#"></a>소메뉴2-2</a></li>
                        </ul>
                    </ul>
                    <ul class="big_menu">
                        <li>MYPAGE</li>
                    </ul>
                </div>
            </div>
        </div>
        
    <!-- content start -->
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

    });
</script>
</body>
</html>


