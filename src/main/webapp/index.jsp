<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
                                    <c:if test="${sessionScope.memEmail == null }">
                                        <li><a href="/furniture/member/joinPage">회원가입</a></li>
                                        <li><a href="/furniture/member/loginForm">로그인</a></li>
                                        <li><a href="/furniture/profile/profile">마이페이지</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.memEmail != null }">
                                        <li><a href="/furniture/member/logout">로그아웃</a></li>
                                        <li><a href="/furniture/profile/profile">마이페이지</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.memEmail != null }">
                                        <c:if test="${member.verify == 9 }">
                                        <li><a href="/furniture/member/logout">로그아웃</a> </li>
                                        <li><a href="/furniture/member/adminPage">관리자페이지</a></li>
                                        </c:if>
                                    </c:if>
                                </ul>
                            </div>
                            <div class="header__logo">
                                <a href="/furniture/index.jsp"><img src="/furniture/img/logo.png" alt="" width="120px" height="52px"></a>
                            </div>
                            <div class="header__top__right">
                            
                                <div class="header__top__right__links">
                               <input type="text" class="search-input" placeholder="검색어를 입력하세요" size="20" />&emsp;
                                    <a href="#" ><img src="/furniture/img/icon/search.png" alt=""></a>
                                    <a href="#"><img src="/furniture/img/icon/heart.png" alt=""></a>
                                </div>
                                <div class="header__top__right__cart">
                                    <a href="#"><img src="/furniture/img/icon/cart.png" alt=""> <span>0</span></a>
                                    <div class="cart__price">Cart: <span id="장바구니_총금액"></span></div>
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
                <div class="col-lg-12" style="height:58.8px;">
                    <nav class="header__menu mobile-menu">
                        <ul>
                        <li><a href="/furniture/category/view/category">전체상품보기</a>
                                
                            </li>
                             <li><a href="#">침대</a>
                                <ul class="dropdown">
                                    <li><a href="./shop-details.html">침대</a></li>
                                    <li><a href="./shoping-cart.html">소파베드</a></li>
                                    <li><a href="./checkout.html">수납형 침대</a></li>
                                    <li><a href="./wisslist.html">간이침대</a></li>
                                </ul>
                            </li>
                        
                             <li><a href="#">소파</a>
                                <ul class="dropdown">
                                    <li><a href="./shop-details.html">패브릭 소파</a></li>
                                    <li><a href="./shoping-cart.html">모듈식 소파</a></li>
                                    <li><a href="./checkout.html">가죽 소파</a></li>
                                </ul>
                            </li>
                        
                             <li><a href="#">책장/선반</a>
                                <ul class="dropdown">
                                    <li><a href="./shop-details.html">큐브형 수납</a></li>
                                    <li><a href="./shoping-cart.html">선반유닛</a></li>
                                    <li><a href="./checkout.html">책장</a></li>
                                    <li><a href="./wisslist.html">수납선반</a></li>
                                </ul>
                            </li>

                             <li><a href="#">식탁/책상</a>
                                <ul class="dropdown">
                                    <li><a href="./shop-details.html">책상/컴퓨터 책상</a></li>
                                    <li><a href="./shoping-cart.html">침대 협탁</a></li>
                                    <li><a href="./checkout.html">식탁 세트</a></li>
                                    <li><a href="./wisslist.html">화장대</a></li>
                                    <li><a href="./wisslist.html">카페 테이블</a></li>
                                </ul>
                            </li>
                        
                             <li><a href="#">수납장/장식장</a>
                                <ul class="dropdown">
                                    <li><a href="./shop-details.html">거실장/찬장</a></li>
                                    <li><a href="./shoping-cart.html">장식장</a></li>
                                    <li><a href="./checkout.html">수납장</a></li>
                                    <li><a href="./wisslist.html">서랍장</a></li>
                                </ul>
                            </li>
                        
                             <li><a href="#">옷장</a>
                                <ul class="dropdown">
                                    <li><a href="./shop-details.html">여닫이 옷장</a></li>
                                    <li><a href="./shoping-cart.html">미닫이 옷장</a></li>
                                    <li><a href="./checkout.html">거울 옷장</a></li>
                                    <li><a href="./wisslist.html">드레스룸 옷장</a></li>
                                    <li><a href="./wisslist.html">선반형 옷장</a></li>
                                </ul>
                            </li>
                        
                             <li><a href="#">의자</a>
                                <ul class="dropdown">
                                    <li><a href="./shop-details.html">사무용 의자</a></li>
                                    <li><a href="./shoping-cart.html">식탁의자</a></li>
                                    <li><a href="./checkout.html">스툴/벤치</a></li>
                                    <li><a href="./wisslist.html">바 의자</a></li>
                                    <li><a href="./wisslist.html">카페 의자</a></li>
                                </ul>
                            </li>
                            <li><a href="#">고객지원</a>
                            <ul class="dropdown">
                                    <li><a href="./shop-details.html">공지</a></li>
                                    <li><a href="./shoping-cart.html">FAQ</a></li>
                                    <li><a href="./checkout.html">이벤트</a></li>
                                    <li><a href="./wisslist.html">문의사항</a></li>
                                    <li><a href="./wisslist.html">고객센터</a></li>
                                </ul>
                             </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Section End -->



	<div id="section">
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
							IKEA 코리아 
							<br>
							주소 : (우) 14352 경기도 광명시 일직로 17 IKEA광명점
							<br>
							사업자 등록번호 : 106-86-82871 사업자정보확인
							<br>
							대표자 : 프레드릭 요한손
							<br>
							통신판매업 신고 : 2018-경기광명-0209
							<br>
							TEL : 1670-4532
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

<!-- Js Plugins -->
<script src="/furniture/js/jquery-3.3.1.min.js"></script>
<script src="/furniture/js/bootstrap.min.js"></script>
<script src="/furniture/js/jquery.nice-select.min.js"></script>
<script src="/furniture/js/jquery.barfiller.js"></script>
<script src="/furniture/js/jquery.magnific-popup.min.js"></script>
<script src="/furniture/js/jquery.slicknav.js"></script>
<script src="/furniture/js/owl.carousel.min.js"></script>
<script src="/furniture/js/jquery.nicescroll.min.js"></script>
<script src="/furniture/js/main.js"></script>

</body>
</html>