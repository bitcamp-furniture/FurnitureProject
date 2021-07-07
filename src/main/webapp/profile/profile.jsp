<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <link rel="stylesheet" href="css/profile.css" type="text/css">
    <link rel="stylesheet" href="css/mypage.css" type="text/css">
    <link rel="stylesheet" href="css/cart.css" type="text/css">
    <link rel="stylesheet" href="css/wishlist.css" type="text/css">
    <link rel="stylesheet" href="css/order.css" type="text/css">
    <link rel="stylesheet" href="css/askList.css" type="text/css">


    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>


<div class="profile container">
    <div class="profile row">
        <div>
            <c:if test="${profileName == null }">
                <h1>안녕하세요! 카카오님</h1>
            </c:if>
            <c:if test="${profileName != null }">
                <h1>안녕하세요! ${profileName}님</h1>
            </c:if>
        </div>
        <div class="profile col-lg-12">
            <%--장바구니 --%>
            <%-- 			<div class="profile" style="text-align:left">
            <input id="profile-tap1" class="profile-tap1" type="button" name="tabs" onclick="location.href = '/furniture/profile/mypage'" >
            <label  id="profile-tap1-label" for="profile-tap1">자기정보</label>

            <input id="profile-tap2" type="radio" name="tabs" onclick="location.href = '/furniture/profile/cart'">
            <label  id="profile-tap2-label" for="profile-tap2">장바구니</label>

            <input id="profile-tap3" type="radio" name="tabs" onclick="location.href = '/furniture/profile/wishList'">
            <label id="profile-tap3-label" for="profile-tap3">위시리스트</label>

            <input id="profile-tap4" type="radio" name="tabs" onclick="location.href = '/furniture/profile/order'">
            <label id="profile-tap4-label" for="profile-tap4">구매내역</label>

            <input id="profile-tap5"  class="profile-tap5" type="button" name="tabs" onclick="location.href = '/furniture/profile/askList'">
            <label id="profile-tap5-label" for="profile-tap5">문의내역</label>
            <!-- <a href="/furniture/profile/mypage">자기정보</a> -->
        </div>

        <div>
            <jsp:include page="${askdisplay }" />
        </div> --%>


            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#mypage"
                                                          aria-controls="mypage" role="tab" data-toggle="tab">회원정보</a>
                </li>
                <li role="presentation" id="cart-tap"><a href="#cart" aria-controls="cart"
                                                         role="tab" data-toggle="tab">장바구니</a></li>
                <li role="presentation" id="wishlist-tap"><a href="#wishList"
                                                             aria-controls="wishList" role="tab"
                                                             data-toggle="tab">위시리스트</a></li>
                <li role="presentation" id="order-tap"><a href="#order" aria-controls="order"
                                                          role="tab" data-toggle="tab">구매내역</a></li>
                <li role="presentation"><a href="#askList"
                                           aria-controls="askList" role="tab" data-toggle="tab">문의내역</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">


                <div role="tabpanel" class="tab-pane fade in active" id="mypage">
                    <%--mypage tap --%>
                    <input type="hidden" id="id" value="${id}">


                    <!-- 이름,생일, 주소를 알려주는 제목 -->
                    <div id="mypageP" class="mypageP">
                        <h3>개인 정보</h3>

                        <!-- 수정버튼 -->
                        <div id="mypagePrivate">
                            <button class="mypagePrivateModifyOpenBtn"
                                    id="mypagePrivateModifyOpenBtn" type="button">수정
                            </button>

                            <div>
                                <div class="mypagePrivateName" id="mypagePrivateName">이름</div>
                                <div id="name"></div>
                            </div>

                            <div>
                                <div class="mypagePrivateBirth" id="mypagePrivateBirth">생년월일</div>
                                <div id="birth"></div>
                            </div>

                            <div>
                                <div class="mypagePrivateAddress" id="mypagePrivateAddress">주소</div>
                                <div id="address"></div>
                            </div>
                        </div>

                        <div id="mypagePrivateModify">
                            <button class="mypagePrivateModifyClosingBtn"
                                    id="mypagePrivateModifyClosingBtn" type="button">닫기
                            </button>
                            <div>
                                <div class="mypagePrivateName" id="mypagePrivateName">이름</div>
                                <input type="text" id="mypagePrivateModifyName">
                            </div>
                            <div id="mypageNameDiv"></div>

                            <div>
                                <div class="mypagePrivateBirth" id="mypagePrivateModifyBirth"
                                     style="float: left;">생년월일
                                </div>
                                <input type="text" id="mypagePrivateModifyBir_yy"
                                       placeholder="년(4자)" style="float: left;">

                                <div id="mypagePrivateModifyBir_mm"
                                     style="float: left; display: block;">
                                    <select class="mypagePrivateModifyBir_mm"
                                            style="float: left; display: block;">
                                        <option>월</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>
                                </div>
                                <input type="text" id="mypagePrivateModifyBir_dd"
                                       placeholder="일(2자)">
                            </div>
                            <div id="mypageBirthDiv"></div>

                            <div style="margin-top: 15px">
                                <div class="mypagePrivateAddress" id="mypagePrivateAddress">주소</div>
                                <input type="text" id="mypagePrivateModifyZipcode" disabled>
                                <input type="button" id="addSearchBtn" value="우편번호 찾기"
                                       onclick="execDaumPostcode()"> <input type="text"
                                                                            id="mypagePrivateModifyAddr1" disabled>
                                <input
                                        type="text" id="mypagePrivateModifyAddr2"> <input
                                    id="extraAddress" autocapitalize="none" type="hidden">
                            </div>
                            <div id="mypageAddressDiv"></div>
                            <input type="button" value="저장" id="mypagePrivateModifyBtn">
                        </div>
                    </div>
                    <br>
                    <br>
                    <!-- 구분선 -->
                    <hr class="profile__divider">

                    <!-- 핸드폰, 이메일 구분제목-->
                    <div id="mypageC" class="mypageC">
                        <h4>연락처</h4>

                        <div id="mypageContact">
                            <!-- 수정버튼 -->
                            <button class="mypageContactModifyOpenBtn"
                                    id="mypageContactModifyOpenBtn" type="button">수정
                            </button>
                            <div>
                                <div class="mypageContactPhone" id="mypageContactPhone">휴대폰번호</div>
                                <div id="phone"></div>
                            </div>
                            <div>
                                <div class="mypageContactEmail" id="mypageContactEmail">이메일</div>
                                <div id="email"></div>
                            </div>
                        </div>

                        <div id="mypageContactModify">
                            <button class="mypageContactModifyClosingBtn"
                                    id="mypageContactModifyClosingBtn" type="button">닫기
                            </button>

                            <div>
                                <div class="mypageContactPhone" id="mypageContactPhone">휴대폰번호</div>
                                <input type="text" id="mypageContactModifyPhone">
                            </div>
                            <div id="mypagePhoneDiv"></div>

                            <!-- <div>
        <input type="text" name="mypageContactModifyEmail" id="mypageContactModifyEmail" style="border:0;"></div>
    <div id="mypageEmailDiv"></div> -->

                            <div>
                                <input type="button" value="저장" id="mypageContactModifyBtn">
                            </div>
                        </div>
                    </div>
                    <br>
                    <br>
                    <hr class="profile__divider">

                    <!-- 비밀번호 구분제목-->
                    <div id="mypagePw" class="mypagePw">
                        <h4>비밀번호</h4>
                        <!-- 수정버튼 -->
                        <div id="mypagePassword">
                            <button class="mypagePasswordOpenBtn" id="mypagePasswordOpenBtn"
                                    type="button">수정
                            </button>
                            <div>
                                <div class="mypagePasswordPassword" id="mypagePasswordPassword">비밀번호</div>
                                <input type="password" id="password" disabled>
                            </div>
                        </div>
                    </div>

                    <div id="mypagePasswordModify">
                        <button class="mypagePasswordClosingBtn"
                                id="mypagePasswordClosingBtn" type="button">닫기
                        </button>
                        <div>
                            <div class="mypagePasswordPassword" id="mypagePasswordPassword">현재
                                비밀번호
                            </div>
                            <input type="password" id="mypagePasswordModifyCurrentPassword">
                        </div>
                        <div>
                            <div class="mypagePasswordPassword" id="mypagePasswordPassword">새
                                비밀번호
                            </div>
                            <input type="password" id="mypagePasswordModifyNewPassword">
                        </div>
                        <div>
                            <div class="mypagePasswordPassword" id="mypagePasswordPassword">비밀번호
                                확인
                            </div>
                            <input type="password" id="mypagePasswordModifyCheckPassword">
                        </div>
                        <div id="mypagePasswordDiv"></div>
                        <input type="button" value="저장" id="mypagePasswordModifyBtn">
                    </div>
                    <br>
                    <br>


                </div>
                <%--mypage tap end--%>


                <div role="tabpanel" class="tab-pane fade" id="cart">
                    <%--cart tap--%>

                    <div class="container">
                        <h1>장바구니</h1>
                        <div class="cart table" style="float: left; width: 60%;">
                            <input type="hidden" id="cartPg" value="${cartPg}">
                            <table class="cartTable" border='0' border-color="white" width="100%">
                                <%--										<tr>--%>
                                <%--											<td class="tg-0pky" rowspan="3">--%>
                                <%--												<img alt="imgimg" src="/furniture/img/침대.png" width="150" height="150">--%>
                                <%--											</td>--%>
                                <%--											<td class="tg-0pky">의자</td>--%>
                                <%--											<td class="tg-0pky" rowspan="3" width="100" style="text-align: center; vertical-align:middle;">89000</td>--%>
                                <%--										</tr>--%>
                                <%--										<tr>--%>
                                <%--											<td class="tg-0pky" width="400">빨강</td>--%>
                                <%--										</tr>--%>
                                <%--										<tr>--%>
                                <%--											<td class="tg-0pky">--%>
                                <%--												<input type="text">--%>

                                <%--												</input>--%>
                                <%--												<button class="cartDeleteBtn">삭제</button>--%>
                                <%--												<button class="wishlistSaveBtn">위시리스트 저장</button>--%>
                                <%--											</td>--%>
                                <%--										</tr>--%>


                            </table>
                            <br><br><br>
                            <button type="button" class="totalCartDeleteBtn">장바구니 비우기</button>
                            <div id="cartlistPagingDiv" style="float: left; width: 1000px; text-align: center"></div>
                        </div>


                        <div class="cart-checkout col-lg-6" style="float: right; width: 40%;">
                            <input type="hidden" id="orderPg" value="${orderPg}">
                            <%--주문 내역 --%>
                            <div class="cart-checkout-title">
                                <h2>주문내역</h2>
                                <div class="cart-orderList" style="height: 300px; width:400px"></div>
                            </div>
                            <br>
                            <div class="cart-checkout-totalsum">
                                <div class="cart-line"></div>
                                <span class="cart-checkout-title">총 주문금액</span>
                                <span class="cart-checkout-sum" style="float: right">원</span>
                                <span class="cart-total-price" style="float: right"></span>
                            </div>
                            <br>
                            <div class="cartPayBtn-wrap">
                                <button type="button" class="orderPaymentBtn" id="orderPaymentBtn">주문하기</button>
                            </div>
                            <br>
                            <div class="kakaoPayBtn-wrap">
                                <button type="button" class="kakaoPayBtn"><img src="/furniture/img/kakaoPayBtn.png"
                                                                               alt="kakaoPay"></button>
                            </div>
                        </div>

                        <%--cart__checkout end --%>

                    </div>
                    <%--cart end --%>
                </div>
                <%--cart tap end--%>

                <div role="tabpanel" class="tab-pane fade" id="wishList">
                    <%--wishList tap--%>
                    <div class="container">
                        <div class="wishlist row">
                            <div class="wishlist-title col-lg-12">
                                <input type="hidden" id="wishlistPg" value="${wishlistPg }">
                                <div class="wishlist-title-h1">
                                    <h3>위시리스트</h3>
                                    <button class="wishlistTotalDeletebutton">전체삭제</button>
                                </div>
                            </div>
                            <div class="wishlist-list col-lg-12">
                                <div class="wishlist-list-container" id="wishlist-list-container">
                                    <ul id="wishlist-list-container-ul">

                                    </ul>
                                </div>
                            </div>
                            <div id="wishlistPagingDiv" style="float: left; width: 1000px; text-align: center"></div>

                        </div>
                        <%--row end --%>


                    </div>
                    <%--container end --%>

                </div>
                <%--wishList tap end--%>

                <div role="tabpanel" class="tab-pane fade" id="order">
                    <%--order tap--%>
                    <form id="orderDeleteForm" method="post" action="imageboardDelete">
                        <input type="hidden" id="orderPg" value="${orderPg }">
                        <input type="hidden" id="profileName" value="${profileName}">
                        <input type="hidden" id="profileEmail" value="${profileEmail}">
                        <table class="order table" id="orderListTable">
                            <tr>
                                <th style="text-align: center; vertical-align:middle;">주문번호<br>[주문일자]</th>
                                <th style="text-align: center; vertical-align:middle;">이미지</th>
                                <th style="text-align: center; vertical-align:middle;">상품정보</th>
                                <th style="text-align: center; vertical-align:middle;">수량</th>
                                <th style="text-align: center; vertical-align:middle;">구매금액</th>
                                <th style="text-align: center; vertical-align:middle;">주문처리상태</th>
                                <th style="text-align: center; vertical-align:middle;">문의하기</th>
                            </tr>
                            <%--								<tr>--%>
                            <%--									<td>1<br>2021.06.28</td>--%>
                            <%--									<td><img alt="imgimg" src="img/tiger.png" width="75" height="75"></td>--%>
                            <%--									<td>구ggi 체얼<br>컬</td>--%>
                            <%--									<td>1</td>--%>
                            <%--									<td>1000</td>--%>
                            <%--									<td>배송중</td>--%>
                            <%--									<td>후에 버튼 추가</td>--%>
                            <%--								</tr>--%>
                        </table>


                        <div style="width: 1100px; text-align: center;"
                             id="orderPagingDiv"></div>
                    </form>
                    <br><br><br><br>
                </div>
                <%--order tap end--%>

                <div role="tabpanel" class="tab-pane fade" id="askList">
                    <%--askList tap--%>
                    <h3>1:1 문의내역</h3>
                    <h5>상담시간</h5>
                    <h5>평일(월 ~ 금) 10:00 ~ 17:00</h5>
                    <h5>(Off-time 12:00 ~ 14:00, 토/일/공휴일 휴무)</h5>
                    <h6>한번 등록한 상담내용은 수정이 불가능합니다.</h6>
                    <button class="askBtn" id="askBtn" type="button">1:1문의 쓰기</button>
                    <br> <br>
                    <input type="hidden" id="askPg" value="${askPg }">
                    <table class="ask table" id="askListTable" border="1" bordercolor="#2F3894" cellpadding="5"
                           cellspacing="0" frame="hsides" rules="rows">
                        <tr>
                            <th style="text-align: center;">글 번호</th>
                            <th style="text-align: center;">상담구분</th>
                            <th style="text-align: center;">상담제목</th>
                            <th style="text-align: center;">작성일</th>
                            <th style="text-align: center;">답변유무</th>
                        </tr>

                    </table>
                    <div id="askPagingDiv" style="float: left; width: 750px; text-align: center;"></div>

                </div>
                <%--askList tap end--%>
            </div>
            <%--tap content --%>

        </div>


    </div>
</div>


<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="js/profile.js"></script>
<script type="text/javascript" src="js/mypage.js"></script>
<script type="text/javascript" src="js/cart.js"></script>
<script type="text/javascript" src="js/wishlist.js"></script>
<script type="text/javascript" src="js/order.js"></script>
<script type="text/javascript" src="js/askList.js"></script>
<script type="text/javascript" src="js/orderPayment.js"></script>
<script type="text/javascript">

</script>
</body>

</html>
