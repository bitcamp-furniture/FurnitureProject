<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);

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
                                        <li><a href="/furniture/member/joinPage">????????????</a></li>
                                        <li><a href="/furniture/member/loginForm">?????????</a></li>
                                        <li><a href="#" onclick="myPage()">???????????????</a>
                                    </c:if>
                                    <c:if test="${sessionScope.memEmail != null && sessionScope.verify == null}">
                                        <li><a href="/furniture/member/logout">????????????</a></li>
                                        <li><a href="/furniture/profile/profile">???????????????</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.verify != null }">
                                        <li><a href="/furniture/member/logout">????????????</a></li>
                                        <li><a href="/furniture/admin/adminIndex">??????????????????</a></li>
                                    </c:if>
                                </ul>
                            </div>
                            <div class="header__logo">
                                <a href="/furniture/index.jsp"><img src="/furniture/img/logo.png" alt="" width="120px" height="52px"></a>
                            </div>
                            <div class="header__top__right">
                            
                                <div class="header__top__right__links">
                               <input type="text" class="search-input" placeholder="???????????? ???????????????" onkeyup="enterkey();" size="30" />&emsp;
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
                        <li><a href="/furniture/category/view/category">FURNITURE</a>
                                
                            </li>
                             <li><a href="/furniture/category/view/selectList?category=??????">BED</a>
                                <ul class="dropdown">
                                    <li><a href="/furniture/category/view/selectList?category=????????????">????????????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=???????????????">????????? ??????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=????????????">????????????</a></li>
                                </ul>
                            </li>
                        
                             <li><a href="/furniture/category/view/selectList?category=??????">SOFA</a>
                                <ul class="dropdown">
                                    <li><a href="/furniture/category/view/selectList?category=???????????????">???????????????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=???????????????">???????????????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=??????/??????????????????">??????/???????????? ??????</a></li>
                                </ul>
                            </li>
                        
                             <li><a href="/furniture/category/view/selectList?category=??????/????????????">UNIT</a>
                                <ul class="dropdown">
                                    <li><a href="/furniture/category/view/selectList?category=???????????????">???????????????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=????????????">????????????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=??????">??????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=????????????/??????">????????????/??????</a></li>
                                </ul>
                            </li>

                             <li><a href="/furniture/category/view/selectList?category=??????/??????">TABLE</a>
                                <ul class="dropdown">
                                    <li><a href="/furniture/category/view/selectList?category=??????/???????????????">??????/????????? ??????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=????????????">?????? ??????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=????????????">?????? ??????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=?????????">?????????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=???????????????">?????? ?????????</a></li>
                                </ul>
                            </li>
                        
                             <li><a href="/furniture/category/view/selectList?category=?????????/?????????">STORAGE</a>
                                <ul class="dropdown">
                                    <li><a href="/furniture/category/view/selectList?category=?????????/??????">?????????/??????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=?????????">?????????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=?????????">?????????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=?????????">?????????</a></li>
                                </ul>
                            </li>
                        
                      		<li><a href="/furniture/category/view/selectList?category=??????">WARDROBE</a>
                                <ul class="dropdown">
                                    <li><a href="/furniture/category/view/selectList?category=???????????????">????????? ??????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=???????????????">????????? ??????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=????????????">?????? ??????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=??????????????????">???????????? ??????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=???????????????">????????? ??????</a></li>
                                </ul>
                            </li>
                        
                             <li><a href="/furniture/category/view/selectList?category=??????">CHAIR</a>
                                <ul class="dropdown">
                                    <li><a href="/furniture/category/view/selectList?category=???????????????">????????? ??????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=????????????">????????????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=??????/??????">??????/??????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=?????????">??? ??????</a></li>
                                    <li><a href="/furniture/category/view/selectList?category=????????????">?????? ??????</a></li>
                                </ul>
                            </li>
                            
                            <li><a href="#">CUSTOMER</a>
                            <ul class="dropdown">
                                    <li><a href="/furniture/main/notice">??????</a></li>
                                    <li><a href="/furniture/main/FaQ">FAQ</a></li>
                                    <li><a href="/furniture/main/event">?????????</a></li>
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
                     ?????? : ??????????????? ????????? ????????? 
                     <br>
                     &emsp;????????????94??? 20 ???????????? 6??? 
                     <br>
                     ????????? ???????????? : 106-86-12345
                     <br>
                     ????????? : ?????? ??????
                     <br>
                     ??????????????? ?????? : 2014-??????-0204
                     <br>
                     TEL : 1577-1577
                     </p>
                  </h6>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="/furniture/img/logo-(3).png" alt=""  width="120px" height="52px"></a>
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
                <%-- FOOTER??? ???????????? ... ??????????????? ???????????? --%>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__newslatter">
                        <h6>CUSTOMER SERVICE CENTER</h6>
                          <h2 class="text-white">1577-1577</h2>
                        <p>???????????? ???????????? 10:00 ~ 18:00 </p>
                        <%--subscribe ??????  form ?????? --%>
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