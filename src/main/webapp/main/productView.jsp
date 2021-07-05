<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
    
    <style type="text/css">
     #paging, #currentPaging{
        cursor: pointer;
     }
     #currentPaging{
        color: #8089BF;
        font-weight: bold;
     }
     .no_padding{
        margin: 0px;
        padding: 0px;
        height: 30px;
        font-size: x-large;
     }
     #qna_content, #qna_answer{
        padding: 10px;
        height: 80px;
     }
     .primary-btn:hover, .primary-btn:focus{
        color: white;
     }
    </style>
    
    
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__text">
                      <!--  <h2>Product detail</h2> -->
                    </div>
                </div> 
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="/furniture/index.jsp">Home</a>
                        <a href="/furniture/category/view/category">전체상품보기</a>
                        <a href="/furniture/category/view/category">${productDTO.product_category_name}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <input type="hidden" id="memId" value="${memId}">
                   <!-- 상품 상세샷 넣을 자리 -->
                   
                   
                   <!-- 썸네일 이미지는 그냥 5개중에 제일 먼저 뜰게뭐일지 정하는거고 그다음에 클릭한게 크게 뜬다. 이미지가 1개밖에 없으면 반복안되는것 처럼 보이지 착각말고-->
                    <div class="product__details__img">
                        <div class="product__details__big__img">
                            <!-- <img class="big_img" src="/furniture/img/shop/details/product-big-1.jpg" alt=""> -->
                            <img class="big_img" src="/furniture/storage/${ImageList[0].product_img_thumb}" alt="1">
                        </div>
                       
                        <div class="product__details__thumb">
                            <c:forEach var="n" items="${ImageList}">
                            <div class="pt__item active">
                                <img data-imgbigurl="/furniture/storage/${n.product_img_detail}"
                                src="/furniture/storage/${n.product_img_detail}" alt="2">
                            </div>
                           </c:forEach>
                            
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-6">
                    <div class="product__details__text">
                        <div class="product__label">${productDTO.product_category_name}</div>
                        <h4>${productDTO.product_name}</h4>
                        <h5>가격 ₩ <fmt:formatNumber value="${productDTO.product_price}" pattern="#,###,###"/></h5>
                        <p>하루를 최상의 컨디션으로 시작하려면 숙면을 취해야 하죠. 다양한 스타일의 튼튼한 IKEA 침대는 최고의 편안함과 품질을 약속해드려요. 
                          빌트인 수납처럼 스마트한 기능이 있거나 밑에 수납함을 밀어넣을 수 있는 크기의 침대도 많답니다. IKEA의 침대로 오랫동안 달콤한 꿈을 꾸는 숙면을 즐겨보세요.</p>
		
            <select name="option_color" id="option_color">
             <c:forEach var="optionlist" items="${optionlist}">
            
                 <!--<option value="">--색상을 선택해주세요 --</option> --> 
                <option value="${optionlist.color}">${optionlist.color_name}</option>
               
              </c:forEach>
            </select>
         <br>
         <div>&emsp;</div>
                        <ul>
                            <li>규격: <span>150x200cm</span></li>
                            <li>Tags: <span>Gadgets, minimalisstic</span></li>
                        </ul>
                        <div class="product__details__option">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" id="product_qty" value="1">
                                </div>
                            </div>

                            <a id="addCartBtn" class="primary-btn">Add to cart</a>

                            <a href="#" class="heart__btn"><span class="icon_heart_alt"></span></a>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="product__details__tab">
                <div class="col-lg-12">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">상품 정보</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">상품 리뷰</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" id="qna" href="#tabs-3" role="tab">상품 문의</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab">배송 안내</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                     <!-- 상품 정보 from DB -->
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="row d-flex justify-content-center">
                                <div class="col-lg-8">
                                     <p class="title1">제품 사진 관련 안내</p>
                           <hr class="hr1">
                           
                           위의 사진들은 모니터에 따라 약간의 색상 차이가 발생될 수 있습니다. 해당 제품은 지속적인 개선을 위하여 예고 없이 사양이 변경될 수 있습니다.<br>
                                  <br>  
                                  
                                  <c:forEach var="n" items="${ImageList}">
                            <div class="pt__item active">
                                <img width="720" height="720" data-imgbigurl="/furniture/storage/${n.product_img_detail}"
                                src="/furniture/storage/${n.product_img_detail}" alt="2">
                            </div>
                           </c:forEach>
                           
                                  <!-- 상품 상세샷 로드할 자리! 예시:
                                <img data-imgbigurl="img/shop/details/product-big-5.jpg"
                                src="/furniture/img/shop/details/product-big-5.jpg" alt=""> -->
                                  
                                </div>
                            </div>
                        </div>
                        
                     <!-- 상품 리뷰 from DB -->
                        <div class="tab-pane" id="tabs-2" role="tabpanel">
                            <div class="row d-flex justify-content-center">
                                <div class="col-lg-8">
                                    <p>리뷰 게시판</p>
                                    <hr class="hr1">
                                    
                                    <table id="review_list_table" cellpadding="3" ></table>
                                    <br>
                                    <div id="review_listPagingDiv"  style="float: left; width: 100%; text-align: center;"></div>
                               </div>
                            </div>
                        </div>
                        
                     <!-- 상품 문의 from DB -->
                        <div class="tab-pane" id="tabs-3" role="tabpanel">
                            <div class="row d-flex justify-content-center">
                                <div class="col-lg-8">
                                     <p>상품 문의 게시판  </p>
                                     <hr class="hr1">
                                     <br>
                            <!-- 문의 등록  -->         
                            <table style="width:100%;" cellpadding="5">                        
                               <tr>
                                  <td align="center">
                                     <input type="hidden" id="product_id" class="product_id" value="${productDTO.id}">
                                   <input type="hidden" class="product_name" value="${productDTO.product_name}">
                                     <input type="text" class="qna_write_subject" placeholder="제목입력" style="width:90%;"> 
                                  </td>
                              </tr>
                               <tr>
                                  <td align="center">
                                  <textarea class="qna_write_content" placeholder="내용입력" style="width:90%;"></textarea>
                                  </td>
                              </tr>
                               <tr>
                                  <td align="center">
                                  <input type="button" class="qna_write_btn" value="문의등록" >
                                  </td>
                              </tr>
                           </table>       
                                      
                           <br>                                            
                                      
                                    <!-- 문의 리스트 -->
                           <div style="width:100%;  overflow:auto">
                              <input type="hidden" id="pg" value="${pg }"> <%--Controller부터 오는 pg --%>
                                      
                              <table class="qna_list_table" width="100%" border="1" cellpadding="5" frame="hsides" rules="rows">
                                 <tr>
                                    <th style="background-color: #e5e9f5; text-align: center;" >글번호</th>
                                    <th width="300" style="background-color: #e5e9f5; text-align: left;">제목</th>
                                    <th style="background-color: #e5e9f5; text-align: center;" >작성자</th>
                                    <th style="background-color: #e5e9f5; text-align: center;" >작성일</th>
                                    <th style="background-color: #e5e9f5; text-align: center;" >상태</th>
                                    <!-- 상태 reply 0이면 답변 대기중 -->
                                 </tr>
                                    
                              </table>
                              <br>
                              <div id="qna_listPagingDiv" style="float: left; width: 100%; text-align: center;" ></div>   
                           </div>
                                 
                                </div>
                            </div>
                        </div>
                        
                     <!-- 배송/반품/교환 from DB ..................... 4번을 만들 수 있는지?! -->
                        <div class="tab-pane" id="tabs-4" role="tabpanel">
                            <div class="row d-flex justify-content-center">
                                <div class="col-lg-8">
                                          
                           <div class="sectionBox w1200 refund" id="section_delivery">
                        
                              <div class="h150"></div>
                        
                              <div class="h130"></div>
                              <div id="delivery_reservation">
                                 <p class="title1">배송 안내</p>
                                 <hr class="hr1">
                                 <section class="discription">
                                    <div class="dlivry_info_bx">
                                       <span class="bold">배송비</span>
                                       <span class="info_dot">
                                             전국 무료배송 및 설치를 진행하고 있습니다.<br />단, 제주도, 울릉도 등의 도서/산간지역의 경우 택배상품만 온라인 주문이 가능합니다. 설치배송 상품은 가까운 매장에 문의 부탁 드립니다.
                                       </span>
                                       <span class="bold">설치배송 상품 배송안내</span>
                                       <span class="mgB10px">일룸은 전문시공기사가 배송과 동시에 설치까지 해드립니다. 완제품 배송이 아닌 설치 제품으로 아래 내용을 꼭 숙지해주세요.</span>
                                    </div>
                        
                                    <ol class="delivery_process">
                                       <li class="dlivry_prcss_bx">
                                          <dl>
                                             <dt class="bx_ttl">
                                                   주문 익일 18시 이후
                                                <span class="bx_sntnc2">(영업일 기준)</span>
                                             </dt>
                        
                                             <dd class="bx_sntnc3">
                                                <span class="stc3_emphss">배송예정일</span>
                                                   확정
                                             </dd>
                                             <dd class="bx_sntnc3">
                                                <span class="stc3_emphss">알림톡</span>
                                                   발송
                                             </dd>
                                          </dl>
                                       </li>
                                       <li class="dlivry_prcss_bx">
                                          <dl>
                                             <dt class="bx_ttl">
                                                <span class="bx_sntnc1">배송 전 3일까지</span>
                                             </dt>
                                             <dd class="bx_sntnc3">배송 준비중</dd>
                                             <dd class="bx_sntnc3">배송일 변경 가능</dd>
                                          </dl>
                                       </li>
                                       <li class="dlivry_prcss_bx">
                                          <dl>
                                             <dt class="bx_ttl">
                                                <span class="bx_sntnc1">배송 하루 전일, 오후</span>
                                             </dt>
                                             <dd class="bx_sntnc3">
                                                <span class="stc3_emphss">배송예정시간 알림톡</span>
                                                  발송
                                             </dd>
                                             <dd class="bx_sntnc2">(택배품목 제외)</dd>
                                          </dl>
                                       </li>
                                       <li class="dlivry_prcss_bx">
                                          <dl>
                                             <dt class="bx_ttl">
                                                <span class="bx_sntnc1">배송 당일</span>
                                             </dt>
                                             <dd class="bx_sntnc3">배송 설치완료 후 수령확인 서명진행</dd>
                                             <dd class="bx_sntnc2">(택배품목 제외)</dd>
                                          </dl>
                                       </li>
                                    </ol>
                                    <div class="dlivry_info_bx">
                                       <span class="info_dot">배송은 주문 확인 후 영업일 기준 7~10일(주말, 공휴일 제외) 정도 소요됩니다. 일요일 및 공휴일에는 배송(시공)을 하지 않습니다.</span>
                                       <span class="info_dot">배송일 지정이 필요한 경우 배송시 요청사항에 기입해주시기 바랍니다. (지역특성 또는 시공팀 일정에 따라 요청사항이 일부 변경될 수 있습니다. )</span>
                                       <span class="info_dot">배송 전일 오후에 담당 시공팀이 방문시간을 안내 드립니다. 배송시간 지정은 어렵습니다. </span>
                                       <span class="bold">택배배송 상품 배송안내</span>
                                       <span class="info_dot">택배 상품은 일반택배로 배송되며 주문 익일 18시 이후 배송예정일 알림톡이 발송 됩니다.</span>
                                       <span class="info_dot">수령지역 및 택배사의 사정에 따라 실제 배송일은 달라질 수 있습니다.</span>
                                       <span class="bold">배송일 변경</span>
                                       <span class="info_dot">
                                             배송예정일로부터 영업일 기준 3일전에 변경 요청바랍니다.<br />이후에 요청하실 경우 별도의 물류비용이 청구될 수 있습니다.
                                       </span>
                                       <span class="bold">추가 비용 발생 안내</span>
                                       <span>아래의 경우와 같이 설치배송 당일 현장의 특수성으로 인해 추가적으로 발생하는 비용은 고객님 부담입니다.</span>
                                       <span class="info_dot">엘리베이터가 없는 3층 이상 주소지 또는 3층 미만이지만 배송하는 상품이 계단으로 반입이 불가능한 경우</span>
                                       <span class="info_dot">8인 이상 탑승 가능한 엘리베이터가 없거나, 계단이 좁아 가구 반입이 불가능하여 사다리차나 지게차를 사용할 경우</span>
                                       <span class="info_dot">벽고정 필수 안내 제품이었으나 설치가 불가하거나 소비자가 설치를 거부하는 경우</span>
                                    </div>
                                 </section>
                              </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>
    </section>
    <!-- Shop Details Section End -->

    <!-- Related Products Section Begin -->
    <section class="related-products spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <h2>추천 상품</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="related__products__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="/furniture/img/3.jpg">
                                <div class="product__label">
                                    <span>${productDTO.product_category_name}</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">${productDTO.product_name}</a></h6>
                                <div class="product__item__price">${productDTO.product_price}</div>
                                <div class="cart_add">
                                    <a href="#">Wish List</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="/furniture/img/4.jpg">
                                <div class="product__label">
                                    <span>${productDTO.product_category_name}</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">${productDTO.product_name}</a></h6>
                                <div class="product__item__price">${productDTO.product_price}</div>
                                <div class="cart_add">
                                    <a href="#">Wish List</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="/furniture/img/5.jpg">
                                <div class="product__label">
                                    <span>${productDTO.product_category_name}</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">${productDTO.product_name}</a></h6>
                                <div class="product__item__price">${productDTO.product_price}</div>
                                <div class="cart_add">
                                    <a href="#">Wish List</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="/furniture/img/6.jpg">
                                <div class="product__label">
                                    <span>${productDTO.product_category_name}</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">${productDTO.product_name}</a></h6>
                                <div class="product__item__price">${productDTO.product_price}</div>
                                <div class="cart_add">
                                    <a href="#">Wish List</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="/furniture/img/7.jpg">
                                <div class="product__label">
                                    <span>${productDTO.product_category_name}</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">${productDTO.product_name}</a></h6>
                                <div class="product__item__price">${productDTO.product_price}</div>
                                <div class="cart_add">
                                    <a href="#">Wish List</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="/furniture/img/8.jpg">
                                <div class="product__label">
                                    <span>${productDTO.product_category_name}</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">${productDTO.product_name}</a></h6>
                                <div class="product__item__price">${productDTO.product_price}/div>
                                <div class="cart_add">
                                    <a href="#">Wish List</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Related Products Section End   -->
    
     <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
  

        <script src="/furniture/js/productQnA.js"></script>
    