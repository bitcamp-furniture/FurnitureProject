<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 모든 리스트 뿌리기 -->

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



    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                 <div class="filter__item">
                        <div class="row">
                            <div class="col-lg-4 col-md-5">
                                <div class="filter__sort">
                                    <span>Sort By</span>
                                    <select>
                                        <option value="0">Default</option>
                                        <option value="0">Default</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                    <h6><span>16</span> Products found</h6>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-3">
                                <div class="filter__option">
                                    <span class="icon_grid-2x2"></span>
                                    <span class="icon_ul"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" id="pg" value="${pg }" >
                    <div id="cover_product_list">
                    <div class="row" id="product_list"></div>

                    </div>        
                </div>
            </div>
    </section>
    <!-- Product Section End -->
    <!-- 페이징을 만들것이야 이곳에다가 띄우기 -->
    <div id="selectImageboardPagingDiv" align="center"></div>
    
