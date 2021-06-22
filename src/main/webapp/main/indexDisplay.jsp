<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <link rel="stylesheet" href="/furniture/css/main.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/index.css" type="text/css">
    
    
    
<!-- Hero Section Begin 큰 배너사진-->
    <section class="hero">
        <div class="hero__slider owl-carousel">
            <div class="hero__item set-bg" data-setbg="/furniture/image/123.jpg">
                <div class="container">
                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-8">
                            <div class="hero__text">
                                <h2>주방가구 기획전 </h2>
                                <a href="#" class="primary-btn">보러가기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="hero__item set-bg" data-setbg="/furniture/image/1234.jpg">
                <div class="container">
                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-8">
                            <div class="hero__text">
                                <h2>침실가구 기획전</h2>
                                <a href="#" class="primary-btn">보러가기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- About Section Begin -->
    <section class="about spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="about__text">
                        <div class="section-title">
                            <span>IKEZKE</span>
                            <h2> 고객들이 알아보는 IKEZKE! </h2>
                        </div>
                        <p> 집의 공간마다 가구를 어떻게 배치하고 어떤 소품을 놓느냐에 따라서도 집에 좋은 기운이 잘 들어올 수 있다고 합니다.
                        IKEZKE에서 그 답을 알려드립니다 !  </p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="about__bar">
                        <div class="about__bar__item">
                            <p>상품 만족도</p>
                            <div id="bar1" class="barfiller">
                                <div class="tipWrap"><span class="tip"></span></div>
                                <span class="fill" data-percentage="90"></span>
                            </div>
                        </div>
                        <div class="about__bar__item">
                            <p>서비스 만족도</p>
                            <div id="bar2" class="barfiller">
                                <div class="tipWrap"><span class="tip"></span></div>
                                <span class="fill" data-percentage="95"></span>
                            </div>
                        </div>
                        <div class="about__bar__item">
                            <p>재구매율</p>
                            <div id="bar3" class="barfiller">
                                <div class="tipWrap"><span class="tip"></span></div>
                                <span class="fill" data-percentage="87"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Section End -->



    <!-- /////////////////////////////////////////////////////////////// 상품 DB에서 판매량 순으로 긁어와 노출 -->
    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
               <h2>Weekly Best Seller</h2>
               <br>
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/침대.png">
                            <div class="product__label">
                                <span>카테고리</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="/furniture/main/productView">잠이솔솔 침대</a></h6>
                            <div class="product__item__price">₩ 5,000,000</div>
                            <div class="cart_add">
                                <a href="#">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/소파.png">
                            <div class="product__label">
                                <span>카테고리</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">푹신한 소파</a></h6>
                            <div class="product__item__price">₩ 8,000,000</div>
                            <div class="cart_add">
                                <a href="#">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/책장.png">
                            <div class="product__label">
                                <span>카테고리</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">튼튼 책장</a></h6>
                            <div class="product__item__price">₩ 4,000,000</div>
                            <div class="cart_add">
                                <a href="#">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/밥상.png">
                            <div class="product__label">
                                <span>카테고리</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">밥잘먹는식탁</a></h6>
                            <div class="product__item__price">₩ 3,000,000</div>
                            <div class="cart_add">
                                <a href="#">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/수납장.png">
                            <div class="product__label">
                                <span>카테고리</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">책책책 수납장</a></h6>
                            <div class="product__item__price">₩ 1,000,000</div>
                            <div class="cart_add">
                                <a href="#">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/옷장.png">
                            <div class="product__label">
                                <span>카테고리</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">더사더사 옷장</a></h6>
                            <div class="product__item__price">₩ 2,000,000</div>
                            <div class="cart_add">
                                <a href="#">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/의자.png">
                            <div class="product__label">
                                <span>카테고리</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">너도나도 앉아의자</a></h6>
                            <div class="product__item__price">₩ 4,000,000</div>
                            <div class="cart_add">
                                <a href="#">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/침대.png">
                            <div class="product__label">
                                <span>카테고리</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">희희</a></h6>
                            <div class="product__item__price">₩ 2,000,000</div>
                            <div class="cart_add">
                                <a href="#">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->

    

    
<!-- ///////////////////////////////////////////////////////////////////상품평 DB에서 긁어오기 ... 
   append사용? 혹은 하나하나  class명으로 긁어오기 -->
<!-- REVIEW -->
    <!-- Testimonial Section Begin -->
    <div>
    ${reviewListTop5}
    </div>
    <section class="testimonial spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <span>BEST REVIEWS</span>
                        <h2>상품평</h2>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="testimonial__slider owl-carousel" id="reviewTop5">
                
            <c:if test="${reviewListTop5!=null}">
               <c:forEach var="reviewDTO" items="${reviewListTop5}"> 
               
               
                               <!-- 5개씩 -->
                  <div class="col-lg-6">
                        <div class="testimonial__item">
                            <div class="testimonial__author">
                                <div class="testimonial__author__pic">
                                    ${reviewDTO.review_image}
                                </div>
                                <div class="testimonial__author__text">
                                    <h5>${reviewDTO.email}</h5>
                                    <span>${reviewDTO.product_id}</span>
                                </div>
                            </div>
                            <div class="rating">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <p>${reviewDTO.review_content}</p>
                        </div>
                    </div>

               </c:forEach>  
            </c:if>

                </div> <!-- testimonial__slider owl-carousel -->
            </div> <!-- row -->
            
        </div>
    </section>
    
    <!-- Testimonial Section End -->

     <!-- Instagram Section Begin -->
    <section class="instagram spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 p-0">
                    <div class="instagram__text">
                        <div class="section-title">
                            <span>Follow us on instagram</span>
                            <h2>#IKEZKE 공식 계정 개설</h2>
                        </div>
                        <h5><i class="fa fa-instagram"></i> @ikezke.official</h5>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                            <div class="instagram__pic">
                                <img src="img/3.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                            <div class="instagram__pic middle__pic">
                                <img src="img/4.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                            <div class="instagram__pic">
                                <img src="img/5.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                            <div class="instagram__pic">
                                <img src="img/6.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                            <div class="instagram__pic middle__pic">
                                <img src="img/7.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                            <div class="instagram__pic">
                                <img src="img/8.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Instagram Section End -->

        <!-- Map Begin -->
    <div class="map">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-7">
                    <div class="map__inner">
                        <h6>IKEZKE Offline Store</h6>
                        <ul>
                            <li>서울특별시 서초구 강남대로 459 백암빌딩</li>
                            <li>하나은행 뒷건물 비트캠프 201호</li>
                            <li>1577-1588</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="map__iframe">
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.207136148256!2d127.02213775088205!3d37.50303247971076!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca158ae940859%3A0xe06b7199c296fc2e!2z7ISc7Jq47Yq567OE7IucIOyEnOy0iOq1rCDshJzstIg064-ZIOqwleuCqOuMgOuhnCA0NTk!5e0!3m2!1sko!2skr!4v1623303859695!5m2!1sko!2skr" 
            height="300" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0" ></iframe>
            <!-- <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d10784.188505644011!2d19.053119335158936!3d47.48899529453826!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1543907528304" height="300" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe> -->
        </div>
    </div>
    <!-- Map End -->
    
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>   
    <script src="/furniture/js/indexDisplay.js"></script>
    
    
    