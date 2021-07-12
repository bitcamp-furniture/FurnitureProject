<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ikezke</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<style type="text/css">
/* 폰트 적용 */
@import url('https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400&display=swap&subset=korean');

@font-face { font-family: '국립박물관문화재단클래식M'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/국립박물관문화재단클래식M.woff') format('woff'); font-weight: normal; font-style: normal; }

@font-face { font-family: '국립박물관문화재단클래식L'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/국립박물관문화재단클래식L.woff') format('woff'); font-weight: normal; font-style: normal; }

html {
    font-family: "Noto Sans KR", sans-serif;
}

/* 노말라이즈 */
.signBody , .content, .content2, .content3, .loginContent, .passwordContent, .nameContent, .phoneAddrContent,
.emailContent, .birthContent, .endContent, .h2, .h3, .line, .yy {
/*     margin:0;
    padding:0; */
    list-style:none;
    font-family: "Noto Sans KR", sans-serif;
}

.phoneTitle {
	position:absolute;
	top:155px;
    font-family: "Noto Sans KR", sans-serif;
}

.addTitle {
	position:absolute;
	top:280px;
    font-family: "Noto Sans KR", sans-serif;
}

/* 라이브러리 */
.con {
    margin:0 auto;
}

.img-box > img {
    width:100%;
    display:block;
}

.row::after {
    content:"";
    display:block;
    clear:both;
}

.cell {
    float:left;
    box-sizing:border-box;
}

.cell-right {
    float:right;
    box-sizing:border-box;
}

.margin-0-auto {
    margin:0 auto;
}

.block {
    display:block;
}

.inline-block {
    display:inline-block;
}

.text-align-center {
    /* text-align:center; */
}

.line-height-0-ch-only {
    line-height:0;
}

.line-height-0-ch-only > * {
    line-height:normal;
}

.relative {
    position:relative;
}

.absolute-left {
    position:absolute;
    left:0;
}

.absolute-right {
    position:absolute;
    right:0;
}

.absolute-middle {
    position:absolute;
/*     top:50%;
    transform:translateY(-50%); */
}

/* input */
.email, .password, .repassword, .name, .phone, .postcode, .address, .detailAddress, .extraAddress, .mail_check_input {
/*     -webkit-border-radius: 0;
    border-radius: 0;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border:0;
    background-color:transparent; */
    font-size:14px;
    width: 400px;
    height: 40px;
    padding: 14px;
}

/* input */
.year, .dd, select {
    font-size:14px;
    width: 400px;
    height: 40px;
    padding-left: 14px;
}

input::placeholder {
	font-size:12px;

}

.blind {
    overflow: hidden;
    position: absolute;
    width: 1px;
    height: 1px;
    font-size: 12px;
    clip: rect(1px, 1px, 1px, 1px);
}

.font-museum-l {
    font-family:'국립박물관문화재단클래식L';
}

.font-museum-m {
    font-family:'국립박물관문화재단클래식M';
}

/* 커스텀 */
.signBody {
/*     background-color:#151515; */
    overflow-x:hidden;
}

.wrap {
/*     width:100%; */
}

/* 메인 배너 슬라이더 */
.main-bn {
    width:100%;
    height:85vh;
    position:relative;
}

.main-bn > .slider > .slides > .bn {
    background-repeat:no-repeat;
    background-position:center;
    background-size:cover;
    position:absolute;
    top:0;
    left:0;
    right:0;
    bottom:0;
    opacity:0;
    visibility:hidden;
    transition:opacity 1s, visibility 1s;
}

.main-bn > .slider > .slides > .bn.active {
    opacity:1;
    visibility:visible;
}

/* 메인 배너 내부 텍스트 */
.main-bn > .slider > .slides > .bn > .inner-txt {
/*     width:700px;
    height:350px; */
/*     position:absolute; */
/*     left:90px; */
    bottom:290px;
    box-sizing:border-box;
    padding:55px 0 0 50px;
    letter-spacing:0.05rem;
}

.main-bn > .slider > .slides > .bn > .inner-txt > .tt {
    font-size:60px;
}

.main-bn > .slider > .slides > .bn > .inner-txt > .st {
    font-size:24px;
    margin-left:28px;
}

.main-bn > .slider > .slides > .bn > .inner-txt > p {
    font-size:20px;
    margin:45px 0;
}

/* 라벨 폰트 사이즈 변경 */
.main-bn > .slider > .slides > .bn > .inner-txt > .checkbox_group > label {
    font-size:15px;
}

.main-bn > .slider > .slides > .bn > .inner-txt > span {
    position:absolute;
    top:-40px;
    left:0px;
    font-size:28px;
}


.main-bn > .slider > .slides > .bn > .inner-txt > .view {
    background-color:#292929;
    margin-right:27px;
}

/* 이용약관 동의 시 보기 버튼 마우스로 갖다댔을 때 */
.main-bn > .slider > .slides > .bn > .inner-txt > div > a:hover {
    color:black;
}

/* 슬라이더 페이지 버튼 */
.main-bn > .slider > .page-btns {
    position: absolute;
    left: 400px;
    width:400px;
    bottom: 305px;
}


/* 슬라이더 페이지 버튼2 */
.main-bn > .slider > .page-btns > .page-btn {
    cursor:pointer;
    font-size:15.3px;
    width:400px;
    height:50px;
    text-align:center;
    /* line-height:50px;  */
    
}

.main-bn > .slider > .page-btns > .next-btn {
    margin-left:60px;
}

.main-bn > .slider > .page-btns > .page-btn > i {
    display:block;
    font-size:20px;
}

/* 슬라이더 페이지 번호 */
.main-bn > .slider > .page-btns > .page-no {
    position:absolute;
    top:-3px;
    left:50%;
    transform:translateX(-50%);
}

.main-bn > .slider > .page-btns > .page-no > span {
    display:inline-block;
    font-size:18px;
}

/* 간편가입 하단 라인 */
/* .mainLine {
    position:absolute;
	margin-top:120px;
	left:50%;
	border:solid 0.5px gray;
	display:inline-block;
	ailgn:center;
	transform: translate(-50%, -50%);
} */

.main-bn > .slider > .slides > .bn > .inner-txt  > .page-btns {
	width:400px;
	height:48px;
}

/* 다음 버튼  */
.main-bn > .slider > .slides > .bn > .inner-txt  > .page-btns > .page-btn0,
.main-bn > .slider > .slides > .bn > .inner-txt  > .page-btns > .page-btn1,
.main-bn > .slider > .slides > .bn > .inner-txt  > .page-btns > .page-btn2,
.main-bn > .slider > .slides > .bn > .inner-txt  > .page-btns > .page-btn3,
.main-bn > .slider > .slides > .bn > .inner-txt  > .page-btns > .page-btn4,
.main-bn > .slider > .slides > .bn > .inner-txt  > .page-btns > .page-btn5,
.main-bn > .slider > .slides > .bn > .inner-txt  > .page-btns > .page-btn6 {
	width:400px;
	height:48px;
    font-size: 15.3px;
    cursor: pointer;
    outline: none;
    border:0;
    outline:0;
	text-align:center;
	line-height:48px;
	background:#c4c4c4;
	color:white;
}

/* 우편번호 찾기 버튼 */
.main-bn > .slider > .slides > .bn > .inner-txt  > .addSearchBtn {
	width:127px;
	height:40px;
    font-size: 15.3px;
    cursor: pointer;
    outline: none;
    border:0;
    outline:0;
	background:#c4c4c4;
	color:white;
/* 	left:330px;
	bottom:401px;
	position:absolute; */
}

#joinForm {
	float: none;
	margin: 0 auto;
}

</style>
</head>
<body class="signBody">
<form id="joinForm" style="width:550px; height:800px;">
<div class="container">
<div class="joinPage row">
<div class="wrap col-lg-12" style="height:58px;">
    <div class="main-bn" style="width:550px; height:800px;">
        <div class="slider">
            <div class="slides">
                <!-- 이용 약관 -->
                <div class="bn active" id="bn active" onclick="checkAgree()">
                    <div class="inner-txt">
						<h2 class="title" style="font-weight:bold; color:black;">간편가입</h2>
	                        	<p class="loginContent">서비스 이용악관에 동의해주세요.
	                       			<div class="checkbox_group">
									  <input type="checkbox" id="check_all" >
									  <label for="check_all" id="check_allAgr" style="font-weight:normal">모두 동의 (선택 정보 포함)</label><br><br>
									  <h1 style="display:block; width:400px; border-bottom: 1px solid #bcbcbc; border-color:#EAEAEA"></h1><br>
									  
									  <input type="checkbox" id="check_1" class="normal" name="check[0]">
									  <label for="check_1" id="check_age" style="font-weight:normal">[필수] 만 14세 이상  </label><br>
									  
									  <input type="checkbox" id="check_2" class="normal" name="check[1]">
									  <label for="check_2" id="check_agr" style="font-weight:normal">[필수] 이용약관 동의 보기  </label>
									  <span class="signView2" style="color:gray; cursor:pointer; text-decoration:none; font-size:13px; font-weight:normal" onclick="showPopup();">보기</span><br>
									  
									  <input type="checkbox" id="check_3" class="normal" name="check[2]">
									  <label for="check_3" id="check_ind" style="font-weight:normal">[필수] 개인정보 처리방침 동의 보기  </label>
									  <span class="signView3" style="color:gray; cursor:pointer; text-decoration:none; font-size:13px;" onclick="showPopup();">보기</span><br>
									  
									  <input type="checkbox" id="check_4" class="normal" name="check[3]">
									  <label for="check_4" id="check_mac" style="font-weight:normal">[선택] 마케팅 수신 동의  </label>
									  <span class="signView4" style="color:gray; cursor:pointer; text-decoration:none; font-size:13px;" onclick="showPopup();">보기</span><br><br>
									</div>
									<div id="checkboxDiv"></div><br>
			                        <div class="page-btns">
		                        		<input type="button" class="page-btn0" id="page-btn0" value="동의하고 가입하기">
			                        </div>
			                    </div>
			                </div>
			                <!-- 아이디 입력 페이지 -->
			                <div class="bn" id="bn">
			                    <div class="inner-txt">
			                      <h2 class="title" style="font-weight:bold; color:black;">간편가입</h2>
			                        <p class="loginContent">로그인에 사용할 <br>아이디를 입력하세요.</p>
			                        <input class="email" id="email" name="email" placeholder="아이디 (이메일) 입력" formcontrolname="email" autocorrect="off" autocapitalize="none" type="text"><br><br>
			                        <input type="hidden" name="check" value="">
			                        <div id="emailDiv"></div><br>
			                        <div class="page-btns" style="width:400px;">
			                        	<input type="button" class="page-btn1" id="page-btn1" value="다음">
			<!-- 	                        <button class="page-btn" style="width:432px; height:50px;" id="page-btn">다음</button> -->
			                        </div>
			                    </div>
			                </div>
			                <!-- 비밀번호 입력 페이지 -->
			                <div class="bn 2" id="bn2" onclick="checkPwd()">
			                    <div class="inner-txt">
			                      <h2 class="title" style="font-weight:bold; color:black;">간편가입</h2>
			                        <p class="passwordContent">비밀번호를 입력하세요.</p>
			                        <input class="password" id="password" name="password" placeholder="비밀번호 입력" formcontrolname="password" autocorrect="off" autocapitalize="none" type="password" maxlength="16"><br><br>
			                        <div id="passwordDiv"></div><br>
			                        <input class="repassword" id="repassword" name="repassword" placeholder="비밀번호  확인" formcontrolname="repassword" autocorrect="off" autocapitalize="none" type="password" maxlength="16"><br><br>
			                        <div id="repasswordDiv"></div><br>
			                        <div class="page-btns">
			                        	<input type="button" class="page-btn2" id="page-btn2" value="다음">
			                        </div>
			                    </div>
			                 </div>
			                <!-- 이름 입력 페이지 -->
			                <div class="bn">
			                    <div class="inner-txt" onclick="nameCheck()">
			                      <h3 class="title" style="font-weight:bold; color:black;">간편가입</h3>
			                        <p class="nameContent">이름을 입력하세요.</p>
			                        <input class="name" id="name" name="name" placeholder="이름 입력" formcontrolname="name" autocorrect="off" autocapitalize="none" type="text"><br><br>
			                        <div id="nameDiv"></div><br>
			                        <div class="page-btns">
			                        	<input type="button" class="page-btn3" id="page-btn3" value="다음">
			                        </div>
			                    </div>
			                </div>
			                <!-- 주소, 전화번호 입력 페이지 -->
			                <div class="bn" onclick="checkAddrPhone()">
			                    <div class="inner-txt">
			                  	  <h2 class="title" style="font-weight:bold; color:black;">간편가입</h2>
			                        <p class="phoneAddrContent">휴대폰번호와 주소를 입력하세요.</p><br>
			                        <p class="phoneTitle" style="font-size:13.5px">휴대폰번호</p>
			                        <input class="phone" id="phone" name="phone" placeholder="휴대폰번호 입력" formcontrolname="phone" autocorrect="off" autocapitalize="none" type="text"><br><br>
			                        <div id="phoneDiv"></div><br><br><br>
			                        <p class="addTitle" style="font-size:13.5px">주소</p>
			                        <input class="postcode" id="zipcode" name="zipcode" placeholder="" formcontrolname="zipcode" autocorrect="off" autocapitalize="none" type="text" style="width:270px" readonly>
			                       	<input type="button" class="addSearchBtn" value="우편번호 찾기" onclick="execDaumPostcode()" style="text-align:center;"><br><br>
			                        <input class="address" id="addr1" name="addr1" placeholder="" formcontrolname="addr1" autocorrect="off" autocapitalize="none" type="text" readonly><br><br>
			                        <input class="detailAddress" id="addr2" name="addr2" placeholder="상세주소 입력" formcontrolname="addr2" autocorrect="off" autocapitalize="none" type="text"><br><br>
			                        <input class="extraAddress" id="extraAddress" formcontrolname="addr2" autocorrect="off" autocapitalize="none" type="hidden">
			                        <div id="addressDiv"></div><br>
			                        <div class="page-btns">
			                        	<input type="button" class="page-btn4" id="page-btn4" value="다음">
			                        </div>
			                    </div>
			                </div>
			                <!-- 이메일 인증 페이지 -->
			                <div class="bn">
			                    <div class="inner-txt">
			                      <h2 class="title" style="font-weight:bold; color:black;">간편가입</h2>
			                        <p class="emailContent">본인 확인을 위해<br>이메일 인증번호를 입력해주세요.</p>
			                        <div class="mail_check">
			                        	<div class="mail_check_input_box" id="mail_check_input_box_false">
			                        		<input class="mail_check_input" id="mail_check_input" placeholder="인증번호 입력하세요" formcontrolname="confirm" autocorrect="off" autocapitalize="none" type="text"><br><br>
			                        		<div id="mailCheckDiv"></div><br>
			                        	</div>
			                        	<div class="clearfix"></div>
			                   			<span id="mail_check_input_box_warn"></span>
			                        </div>
			                        <div class="page-btns">
			                        	<input type="button" class="page-btn5" id="page-btn5" value="다음">
			                        </div>
			                    </div>
			                </div>
			                <!-- 생년월일 등록 페이지 -->
			                <div class="bn" onclick="checkBir()">
			                    <div class="inner-txt">
			                      <h2 class="title" style="font-weight:bold; color:black;">간편가입</h2>
			                        <p class="birthContent">생일쿠폰 발급을 위해<br>생일을 입력해주세요.</p>
			                        <!-- 생일 -->
			                <div>
			                    <p class="yy"><label for="yy">생년월일</label></p>
			                    <div id="bir_wrap" style="">
			                        <!-- 연도 -->
			                        <div id="yy" style="width:170px; float:left;">
			                            <span class="box">
			                                <input class="year" type="text" id="bir_yy" name="bir_yy" class="int" maxlength="4" placeholder="년(4자)" style="width:170px;">
			                            </span>
			                        </div>
			
			                        <!-- 월 -->
			                        <div id="mm" style="width:60px; float:left; font-size:13px;">
			                            <span class="box">
			                                <select id="bir_mm" name="bir_mm" style="width:60px;">
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
			                            </span>
			                        </div>
			
			                        <!-- 일 -->
			                        <div id="dd" style="width:170px; float:left;">
			                            <span class="box">
			                                <input class="dd" type="text" id="bir_dd" name="bir_dd" class="int" maxlength="2" placeholder="일" style="width:170px;">
			                            </span>
			                        </div><br><br><br>
			                        <div id="birthDiv"></div>
			                    </div>
			                    <span class="error_next_box"></span>    
			                </div><br>
			                        <div class="page-btns">
			                        	<input type="button" class="page-btn6" id="page-btn6" value="다음">
			                        </div>
			                    </div>
			                </div>
			                <!-- 회원가입 완료 페이지 -->
			                <div class="bn">
			                    <div class="inner-txt">
			                        <p class="endContent">회원님 첫 쇼핑을 위한<br>다양한 혜택을 누려보세요!</p>
			                        	<ul class="content">
											<li class="content2">발급된 쿠폰의 상세 내용은 마이 > 쿠폰에서 확인하세요.</li>
											<li class="content3">쿠폰, 멤버십 등 신규 회원을 위한 혜택은 여기에 모아 소개해드려요.</li>
										</ul><br>
										<img id="coupon" src="/furniture/img/coupon.png" alt="kakao" width="440" height="396" style="align:center;"><br><br><br>
			                        <div class="page-btn">
			                        	<div class="page-btn7" style="font-size:15.3px;width:216px; height:50px; text-align:center; line-height:50px; border:1px solid black; display: inline-block"><a style="text-decoration-line: none;" href="/furniture/category/view/category">추천상품 보러가기</a></div>
			                        	<div class="page-btn8" style="font-size:15.3px;width:216px; height:50px; text-align:center; line-height:50px; border:1px solid black; display: inline-block"><a style="text-decoration-line: none;" href="/furniture/member/loginForm">로그인하러 가기</a></div>
			                        </div>
			                    </div>
			                </div>
			             <br><br>
			                
			                <!-- end -->
			            </div>
			        </div>
			 	 </div>
			  </div>
			</div>
		</div>
			    
			           <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
			           <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			        <script type="text/javascript" src="../js/joinPage.js"></script>
			    </form>
			</body>
		</html>