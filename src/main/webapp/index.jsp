<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.header{
    background-color: white;
    position:fixed;
    width:100%;
    top:0;
    left:0;
    z-index :99999;
}
</style>
<title> IKEZKE </title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/furniture/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/index.css" type="text/css">

</head>
<body>


    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">  
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="header__top__inner">
                            <div class="header__top__left">
                                <ul>
                                    <input type="hidden" id="memEmail" value="${memEmail}">
                                    <input type="hidden" id="memId" value="${memId}">
                                <ul>
                                <input type="hidden" id="memEmail" value="${memEmail}">
                                    <c:if test="${sessionScope.memEmail == null }">
                                        <li><a href="/furniture/member/joinPage">회원가입</a></li>
                                        <li><a href="/furniture/member/loginForm">로그인</a></li>
                                        <li><a href="#" onclick="myPage()">마이페이지</a>
                                    </c:if>
                                    <c:if test="${sessionScope.memEmail != null && sessionScope.verify == null}">
                                        <li><a href="/furniture/member/logout">로그아웃</a></li>
                                        <li><a href="/furniture/profile/profile">마이페이지</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.verify != null }">
                                        <li><a href="/furniture/member/logout">로그아웃</a></li>
                                        <li><a href="/furniture/admin/adminIndex">관리자페이지</a></li>
                                    </c:if>
                                </ul>
                            </div>
                            <div class="header__logo">
                                <a href="/furniture/index.jsp"><img src="/furniture/img/logo.png" alt="" width="120px" height="52px"></a>
                            </div>
                            <div class="header__top__right">
                            
                                <div class="header__top__right__links">
                               <input type="text" class="search-input" placeholder="검색어를 입력하세요" onkeyup="enterkey();" size="30" />&emsp;
                                    <a class="search-icon" ><img src="/furniture/img/icon/search.png" alt=""  style="cursor: pointer;"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="canvas__open"><i class="fa fa-bars"></i></div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="header__menu mobile-menu">
                        <ul  style="margin-bottom: 0px;">
                        <li><a href="/furniture/category/view/category">전체상품보기</a>
                                
                            </li>
                             <li><a href="/furniture/category/view/selectList?category=침대">침대</a>
                                <ul class="dropdown">
                                    <li><a href="/furniture/category/view/selectList?category=소파베드">소파베드</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=수납형침대">수납형 침대</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=간이침대">간이침대</a></li>
                                </ul>
                            </li>
                        
                             <li><a href="/furniture/category/view/selectList?category=소파">소파</a>
                                <ul class="dropdown">
                                    <li><a href="/furniture/category/view/selectList?category=패브릭소파">패브릭소파</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=모듈식소파">모듈식소파</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=천연/인조가죽소파">천연/인조가죽 소파</a></li>
                                </ul>
                            </li>
                        
                             <li><a href="/furniture/category/view/selectList?category=책장/선반유닛">책장/선반</a>
                                <ul class="dropdown">
                                    <li><a href="/furniture/category/view/selectList?category=큐브형수납">큐브형수납</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=선반유닛">선반유닛</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=책장">책장</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=수납선반/유닛">수납선반/유닛</a></li>
                                </ul>
                            </li>

                             <li><a href="/furniture/category/view/selectList?category=식탁/책상">식탁/책상</a>
                                <ul class="dropdown">
                                    <li><a href="/furniture/category/view/selectList?category=책상/컴퓨터책상">책상/컴퓨터 책상</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=침대협탁">침대 협탁</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=식탁세트">식탁 세트</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=화장대">화장대</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=카페테이블">카페 테이블</a></li>
                                </ul>
                            </li>
                        
                             <li><a href="/furniture/category/view/selectList?category=수납장/장식장">수납장/장식장</a>
                                <ul class="dropdown">
                                    <li><a href="/furniture/category/view/selectList?category=거실장/찬장">거실장/찬장</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=장식장">장식장</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=수납장">수납장</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=서랍장">서랍장</a></li>
                                </ul>
                            </li>
                        
                      		<li><a href="/furniture/category/view/selectList?category=옷장">옷장</a>
                                <ul class="dropdown">
                                    <li><a href="/furniture/category/view/selectList?category=여닫이옷장">여닫이 옷장</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=미닫이옷장">미닫이 옷장</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=거울옷장">거울 옷장</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=드레스룸옷장">드레스룸 옷장</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=선반형옷장">선반형 옷장</a></li>
                                </ul>
                            </li>
                        
                             <li><a href="/furniture/category/view/selectList?category=의자">의자</a>
                                <ul class="dropdown">
                                    <li><a href="/furniture/category/view/selectList?category=사무용의자">사무용 의자</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=식탁의자">식탁의자</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=스툴/벤치">스툴/벤치</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=바의자">바 의자</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=카페의자">카페 의자</a></li>
                                </ul>
                            </li>
                            
                            <li><a href="#">고객지원</a>
                            <ul class="dropdown">
                                    <li><a href="/furniture/main/notice">공지</a></li>
                                    <li><a href="/furniture/main/FaQ">FAQ</a></li>
                                    <li><a href="/furniture/main/event">이벤트</a></li>
                                </ul>
                             </li>
                        </ul>
                        </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

   <div id="section" style="padding-top:160px;">
      <c:if test="${empty display }">
         <jsp:include page="/main/indexDisplay.jsp" />
      </c:if>
      <c:if test="${not empty display }">
         <jsp:include page="${display }" />
      </c:if>
   </div>
   







    <!-- Footer Section Begin -->
    <footer class="footer set-bg"  style="background-color: #1F1F2F;">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__widget">
                        <h6>WORKING HOURS
                        <p class="text-white">
                     <br>
                     IKEZKE 
                     <br>
                     주소 : 서울특별시 강남구 역삼동 
                     <br>
                     &emsp;강남대로94길 20 삼오빌딩 6층 
                     <br>
                     사업자 등록번호 : 106-86-12345
                     <br>
                     대표자 : 비트 캠프
                     <br>
                     통신판매업 신고 : 2014-비트-0204
                     <br>
                     TEL : 1577-1577
                     </p>
                  </h6>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="/furniture/img/logo.png" alt=""  width="120px" height="52px"></a>
                        </div>
<!--                         <p>Lorem ipsum dolor amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore dolore magna aliqua.</p>
 -->                        <div class="footer__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
                <%-- FOOTER에 고객센터 ... 게시판이랑 연결된다 --%>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__newslatter">
                        <h6>CUSTOMER SERVICE CENTER</h6>
                          <h2 class="text-white">1577-1577</h2>
                        <p>고객센터 영업시간 10:00 ~ 18:00 </p>
                        <%--subscribe 하는  form 삭제 --%>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <p class="copyright__text text-white"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                          Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                      </p>
                  </div>
                  <div class="col-lg-5">
                    <div class="copyright__widget">
                        <ul>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                            <li><a href="#">Site Map</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->


<input type="hidden" name="login" id="login" value="${login12}">
<!-- Js Plugins -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="/furniture/js/jquery-3.3.1.min.js"></script>
<script src="/furniture/js/bootstrap.min.js"></script>
<script src="/furniture/js/jquery.nice-select.min.js"></script>
<script src="/furniture/js/jquery.barfiller.js"></script>
<script src="/furniture/js/jquery.magnific-popup.min.js"></script>
<script src="/furniture/js/jquery.slicknav.js"></script>
<script src="/furniture/js/owl.carousel.min.js"></script>
<script src="/furniture/js/jquery.nicescroll.min.js"></script>
<script src="/furniture/js/main.js"></script>
<script src="/furniture/js/constant.js"></script>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>   
<script src="/furniture/js/search.js"></script>
<script type="text/javascript">
function enterkey() {
    if (window.event.keyCode == 13) {
       location.href="/furniture/category/view/search?keyword=" + $('.search-input').val() +'&pg=1'
    }
}

function myPage() {
	$('input[name=login]').val(1);
	var login = $('input[name=login]').val();
	location.href = '/furniture/member/loginForm?login12='+login
	//alert($('#login').val());
}
</script>

<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
</body>
</html>