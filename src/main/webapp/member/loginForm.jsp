<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>

	<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


	<style type="text/css">
		.loginDiv{
			margin-left: 45px;
		}
		<%--.kakaoDiv{
			margin-left: 80px;
		}--%>
		.form-control {
			height:45px;
			font-size:20px;
		}
		.snsLable{
			font-size:15px;
			margin: 5% 0 0 19%;
		}
		#kakaoImg{
			font-size:15px;
			margin: 2% 0 0 16%;
		}
		#loginBtn {
			/*background: linear-gradient(125deg,#81ecec,#6c5ce7,#81ecec); */
			background: #223894;
			color: white;
			border: 0;
			outline: 0;
		}
		<%--.kakao {
			margin: 10%
		}--%>
		.btn-round {
			border-radius: 3rem;
		}
		#writeBtn{
			background: white;
			color: black;
			border-color: black;
			height: 50px;
			width: 165%;
			outline: 0;
		}
		.writeDiv{
			margin-left: 15%;
		}
		.kakaoDiv {
			margin: 0 0 20px 70px;
		}
		.searchDiv {
			margin-top: 25%;
			margin-bottom: 43%;
			margin-left: 12%;
		}
		div#emailDiv, div#pwdDiv{
			color: red;
			font-size: 13pt;
			margin: -12px 0 0 10px;
		}
		#kakaoImg {
			cursor: pointer;
		}
	</style>

</head>
<body>
<div style="max-width: 100%" style=" height: auto">
<!-- header -->
<header style="margin: 3% 13% 3% 13%;">
	<!-- 로고 이미지 -->
	<div class="row">
		<div class="col-md-5"></div>

		<div class="col-md-2">
			<div class="loginDiv">
				<h1>로그인</h1>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4" ><hr style="border: solid 2px;"></div>
		<div class="col-md-4"></div>
	</div>
</header>



<div class="row">
	<div class="col-md-6 col-md-offset-3">

		<form id="loginForm">
			<!-- 로그인 input -->
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<div class="form-group">
						<input type="text" class="form-control" id="email" name="email" placeholder="아이디(이메일)" >
					</div>
					<div id="emailDiv"></div>

					<div class="form-group">
						<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호">
					</div>
					<div id="pwdDiv"></div>
				</div>
				<div class="col-md-2"></div>
			</div>

			<!-- 로그인 버튼 -->
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<button id="loginBtn" class="btn btn-primary btn-lg btn-block" type="button">로그인 하기</button>
					<br>
					<input type="checkbox" id="idSaveCheck" style="margin-left: 38%;">   아이디 저장하기
				</div>
				<div class="col-md-2"></div>
			</div>
			
			<!-- 카카오 이미지 -->
			<div class="kakaoDiv">
				<div class="col-md-3"></div>
				<div class="col-md-5">
					<div class="kakao">
						<label class="snsLable">카카오톡으로 로그인하기</label>
					</div>

					<div class="kakaoDiv">
						<a id="kakao-login-btn">
							<img id="kakaoImg" src="/furniture/img/kakao.png" alt="kakao" width="50" height="50">
						</a>
					</div>
				</div>
				<div class="col-md-4"></div>
			</div>

			<!-- writeBtn -->
			<div class="writeDiv">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<button type="button" id="writeBtn" class="btn btn-info btn-block btn-round">계정이 없으신가요? 회원가입하기</button>
				</div>
				<div class="col-md-2"></div>
			</div>

			<!-- 아이디찾기 -->
			<div class="searchDiv" >
			<div class="col-md-2"></div>
			<div class="col-md-7">
				<div id="searchIdDiv" class="col-lg-6"><a href="/furniture/member/findForm?type=email">아이디(이메일) 찾기</a></div>
				<div id="searchPwdDiv" class="col-lg-5"><a href="/furniture/member/findForm?type=password">비밀번호 찾기</a></div>
			</div>
			<div class="col-md-3"></div>
			</div>
		</form>
	</div>
</div>

</div>

<!-- 카카오 api -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>


<script type="text/javascript">
	//유효성 검사
	$('#loginBtn').click(function(){
		$('#emailDiv').empty();
		$('#pwdDiv').empty();

		if($('#email').val() === ''){
			$('#emailDiv').html('아이디(이메일)를 입력해주세요');
			$("#email").focus();
		} else if($('#password').val() === '') {
			$('#pwdDiv').text('비밀번호를 입력해주세요');
		} else {
			$.ajax({
				url: '/furniture/member/login',
				type: 'post',
				data: {'email': $('#email').val(),
					   'password': $('#password').val()
				},
				dataType: 'text',
				success: function(data){
					alert(data);
					if(data == 'success') {
						location.href='/furniture/index.jsp';
					} else {
						//alert('로그인 실패하였습니다');
						$('#pwdDiv').text('가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.');
					}
				},
				error: function(err){
					console.log(err);
					alert('로그인 실패');
				}
			}); //ajax
		}

		return false;

	});
	//------------------------------------------------------
	//카카오톡 로그인
	$('#kakaoImg').click(function(){
		alert('click');
		window.Kakao = Kakao;
		window.KakaoToken;
		Kakao.init('aa489b79a048ba75f9ad6374ae0e55e5');
		//console.log(Kakao.isInitialized()); // sdk초기화여부판단
		Kakao.Auth.login({
			scope: 'account_email,birthday',
			success: function (response) {
				Kakao.API.request({
					url: '/v2/user/me',
					success: function (response) {
						//console.log(Kakao.Auth.getAccessToken());
						console.log(response);
						Kakao.Auth.setAccessToken(Kakao.Auth.getAccessToken());
						//console.log(Kakao.Auth.getAccessToken(response.access_token));
						$.ajax({
							url: '/furniture/member/kakaoWrite',
							type: 'post',
							data: {'email': response.kakao_account.email,
								   'kakaoId': response.id,
								   'birth': response.kakao_account.birthday
							},
							success: function(){
								alert('성공');
								location.href='/furniture/index.jsp';
							},
							error: function(err){
								console.log(err);
								alert('실패');
							}
						}); //ajax
						
					},
					fail: function (error) {
						console.log(error)
					},
				})
			},
			fail: function (error) {
				console.log(error)
			},
		});
	});
	
//---------------------------------------------------------------------------------
//자동 로그인
$(document).ready(function(){
    // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
    var userInputId = getCookie("userInputId");
    $("input[name='email']").val(userInputId); 
     
    if($("input[name='email']").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }
     
    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
            var userInputId = $("input[name='email']").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("userInputId");
        }
    });
     
    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("input[name='email']").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            var userInputId = $("input[name='email']").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }
    });
});
 
function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}
 
function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}
 
function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}

</script>

</body>
</html>