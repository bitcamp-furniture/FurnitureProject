<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    
    <link rel="stylesheet" href="/furniture/category/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/furniture/category/css/style.css" type="text/css">
    
<body>
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__bed">                
                            <div class="hero__categories__bed1"><a>침대</a></div>
                            <ul>
                               <li id="bed1">소파베드</li>
                               <li id="bed2">수납형침대</li>
                               <li id="bed3">간이침대</li>
                            </ul>
                        </div>
                        <div class="hero__categories__sofa">                    
                            <div class="hero__categories__sofa1"><a>소파</a></div>
                            <ul>
                               <li id="sofa1">패브릭소파</li>
                               <li id="sofa2">모듈식소파</li>
                               <li id="sofa3">천연/인조가죽 소파</li>
                           </ul>
                        </div>
                        <div class="hero__categories__bookshelf">
                        <div class="hero__categories__bookshelf1"><a>책장/선반유닛</a></div>               
                         
                            <ul>
                               <li id="bookshelf1">큐브형수납</li>
                               <li id="bookshelf2">선반유닛</li>
                               <li id="bookshelf3">책장</li>
                               <li id="bookshelf4">수납선반/유닛</li>
                           </ul>
                        </div>
                        <div class="hero__categories__desk">      
                           <div class="hero__categories__desk1"><a>식탁/책상</a></div>                                             
                            <ul>
                               <li id="desk1">책상/컴퓨터책상</li>
                               <li id="desk2">침대협탁</li>
                               <li id="desk3">식탁세트</li>
                               <li id="desk4">화장대</li>
                               <li id="desk5">카페테이블</li>
                           </ul>
                        </div>
                        <div class="hero__categories__closet">
                           <div class="hero__categories__closet1"><a>수납장 / 장식장</a></div>                                               
                            <ul>
                               <li id="closet1">거실장/찬장</li>
                               <li id="closet2">장식장</li>
                               <li id="closet3">수납장</li>
                               <li id="closet4">서랍장</li>
                           </ul>
                        </div>
                        <div class="hero__categories__clothes">
                        	<div class="hero__categories__clothes1"><a>옷장</a></div>                    
                            <ul>
                               <li id="clothes1">여닫이옷장</li>
                               <li id="clothes2">미닫이옷장</li>
                               <li id="clothes3">거울옷장</li>
                               <li id="clothes4">드레스룸옷장</li>
                               <li id="clothes5">선반형옷장</li>
                           </ul>
                        </div>
                        <div class="hero__categories__chair">
                        	<div class="hero__categories__chair1"><a>의자</a></div>                              
                            <ul>
                               <li id="chair1">사무용의자</li>
                               <li id="chair2">식탁의자</li>
                               <li id="chair3">스툴/벤치</li>
                               <li id="chair4">바의자</li>
                               <li id="chair5">카페의자</li>
                           </ul>
                        </div>                        
                    </div>
                </div>   
<!--               </div>
            </div>
    </section> -->
     <input type="hidden" id="pg" name="pg" value="${pg }" >
   <!--  <div id="section"> -->
   <div class="col-lg-9">
         <jsp:include page="${categorydisplay }" />
      
   </div>
   </div>
   </div>
   </section>
</body>
  <!--  </div> -->
    <!-- Hero Section End -->

    <!-- Js Plugins -->
    <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="/furniture/category/js/jquery-3.3.1.min.js"></script>
    <script src="/furniture/category/js/bootstrap.min.js"></script>
    <script src="/furniture/category/js/jquery.nice-select.min.js"></script>
    <script src="/furniture/category/js/jquery-ui.min.js"></script>
    <script src="/furniture/category/js/jquery.slicknav.js"></script>
    <script src="/furniture/category/js/mixitup.min.js"></script>
    <script src="/furniture/category/js/owl.carousel.min.js"></script>
    <script src="/furniture/category/js/click.js"></script>
    <script src="/furniture/category/js/selectList.js"></script>
    
