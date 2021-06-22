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
        #titleDiv {
            text-align: center;
        }
        #header {
            margin: 30px 0 25px 0;
        }

        <%-- 탭 메뉴 --%>
        ul{list-style:none;}

        #tabmenu{
            width: 600px;
            height: 60px;
            margin: 0 auto;
            position: relative;
            padding: 0;
            font-size: 22px;
        }
        <%-- 탭 메뉴 --%>
        #tabmenu ul li{
            display: inline-block;
            width: 225px;
            float: left;
            text-align: center;
            background : #ccc;
            line-height: 40px;
        }

        #tabmenu label{
            display:block;
            width:100%;
            height:50px;
            line-height:50px;

        }
        #tabmenu #tabmenu1,#tabmenu2{display:none;}
        .tabCon{
            display:none;
            text-align:left;
            padding: 20px;
            position:absolute;
            left:0;
            top: 50px;
            box-sizing: content-box;
            width: 400px;
            border : 5px solid #f9f9f9;
            cursor: pointer;
        }

        #tabmenu input:checked ~ label{
            background:#f9f9f9;
        }
        #tabmenu input:checked ~ .tabCon{
            display:block;
        }

        <%-- 이메일 찾기 버튼 --%>
        #findEmailBtn {
            margin-top: 40px;
            background: #223894;
            color: white;
            border: 0;
            outline: 0;
        }
        #findPwdBtn {
            margin-top: 50px;
            background: #223894;
            color: white;
            border: 0;
            outline: 0;
        }

        #email, #newPassword {
            width: 70%;
            float: left;
            margin-right: 5px;
        }
        #confirmBtn, #changeBtn {
            width: 28%;
            background: #eeeeee;
            float: right;
            border: 0;
            outline: 0;
        }
        #titleDiv {
            margin-left: -15px;
        }
        #nameDiv, #emailDiv, #confirmDiv {
            color: red;
            font-size: 11pt;
            margin-left: 5px;
        }
        #phoneDiv{
            color: red;
            font-size: 11pt;
            margin: -5px 0 0 5px;
        }
        #mail_check_input_box_true{
            background-color:white;
        }
        .correct{
            color : blue;
        }
        .incorrect{
            color : red;
        }
        #mail_check_input_box_warn{
            font-size: 16px;
        }
        .form-group{
            width: 100%;
        }
        #phone{
            float: left;
            margin-right : 15px;
        }
        #findEmailDiv{
        	font-size: 17px;
        }
        .col-md-4 .center {
        	align-items: center; /* 수직 정렬 */
  			flex-direction: row; /* default: row */
  			justify-content: center; /* flex direction에 대해서 정렬방식 선택 */
        }
    </style>

</head>
<body>

<!-- header -->
<header id="header">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <h1>계정찾기</h1>
        </div>
        <div class="col-md-4"></div>
    </div>
</header>


<div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4 center" id="tabmenu">
        <ul id="myTab">
            <li id="tab1" class="btnCon"> <input type="radio" checked name="tabmenu" id="tabmenu1">
                <label for="tabmenu1">이메일</label>
                <div class="tabCon" >
                    <div>
                        <div class="form-group">
                            <label id="nameLabel">이름</label>
                            <input type="text" class="form-control" id="name" placeholder="이름 입력" >
                            <div id="nameDiv"></div>
                        </div>
                    </div>

                    <div>
                        <div class="form-group">
                            <label id="phoneLabel">휴대폰번호</label>
                            <input type="text" class="form-control" id="phone" placeholder="휴대폰 번호 입력" >
                            <div id="phoneDiv"></div>
                        </div>
                    </div>

                    <br>
                    <div>
                        <form>
                                <div id="findEmailDiv"></div>
                        </form>
                    </div>

                    <!-- 이메일 찾기 버튼 -->
                    <div>
                        <form>
                            <div>
                                <button id="findEmailBtn" class="btn btn-primary btn-lg btn-block" type="button">이메일 찾기</button>
                            </div>
                        </form>
                    </div>
                </div>

            </li>
            <li id="tab2" class="btnCon"><input type="radio" name="tabmenu" id="tabmenu2">
                <label for="tabmenu2">비밀번호</label>
                <div class="tabCon" >
                    <div>
                        <form class="form-inline">
                            <div class="form-group">
                                <label for="email" id="emailLabel">이메일</label>
                                <input type="email" class="form-control" id="email" placeholder="이메일 입력">
                                <button type="button" class="btn btn-default" id="confirmBtn" disabled>인증번호 보내기</button>
                            </div>

                            <div id="emailDiv"></div>
                        </form>
                    </div>

                    <div>
                        <form class="form-inline">
                            <div class="form-group">
                                <label id="confirmLabel">인증번호</label>
                                <div class="mail_check_input_box" id="mail_check_input_box_false">
                                    <input type="email" class="form-control" style="width: 100%" id="confirm" disabled="disabled" placeholder="인증번호 입력">
                                </div>
                            
                    			<span id="mail_check_input_box_warn"></span>
                			</div>
                        </form>
                    </div>

                    <div>
                        <form class="form-inline">
                            <div class="form-group" id="newPasswordDiv">
                                <label id="newPasswordLabel">새로운 비밀번호</label>
                                <input type="password" class="form-control" id="newPassword" placeholder="새로운 비밀번호 입력">
                                <button type="button" class="btn btn-default" id="changeBtn">비밀번호 변경</button>
                            </div>
                        </form>
                    </div>
                    <!-- 비밀번호 찾기 버튼 -->
                    <div>
                        <form class="form-inline">
                            <button id="findPwdBtn" class="btn btn-primary btn-lg btn-block" type="button" disabled>비밀번호 찾기</button>
                        </form>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <div class="col-md-4"></div>
</div>

<div style="margin-bottom: 500px;"></div>

<script>
    var code = "";

//-------------------------------------------------------------
//이메일찾기
    $('#findEmailBtn').click(function(){
        $('#nameDiv').empty();
        $('#phoneDiv').empty();

        var getName = /^[가-힣]{2,6}$/;
        var phone = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;

        //이름 유효성 검사
        if($('#name').val() === '') {
            document.getElementById('nameDiv').innerText = '이름을 입력해주세요.';
            $('#name').focus();
        }else if(!getName.test($('#name').val())) {
            document.getElementById('nameDiv').innerText = '잘못된 이름을 입력하셨습니다.';
            $('#name').focus();
        }else if($('#phone').val() === '') {
            document.getElementById('phoneDiv').innerText = '휴대폰 번호를 입력해주세요.';
            $('#phone').focus();
        }else if(!phone.test($("#phone").val())) {
            document.getElementById("phoneDiv").innerText = "잘못된 휴대폰번호를 입력하셨습니다.";
            $("#phoneDiv").val("");
            $("#phoneDiv").focus();
        }else {
        	
        	$.ajax({
				url: '/furniture/member/findEmail',
				type: 'post',
				data: {'name': $('#name').val(),
					   'phone': $('#phone').val()
				},
				dataType: 'text',
				success: function(data){
					if(data == '') {
						confirm('사용자 정보가 없습니다. 회원가입하시겠습니까?');
						if(confirm==null){
							alert("1111");
					        location.href = "/furniture/member/signPage";
					    }else{
					         return false;
					    }
					} else {
						document.getElementById('findEmailDiv').innerText = $('#name').val()+'님의 이메일은 '+data+ '입니다.';
					}
				},
				error: function(err){
					console.log(err);
					alert('실패');
				}
			});
        }

        return false;
    });

//-------------------------------------------------------------
//비밀번호 찾기 - 인증번호 버튼
    $('#confirmBtn').click(function(){
    	//debugger;
        $('#emailDiv').empty();
        $('#confirmDiv').empty();

        const email = $('#email').val(); //입력한 이메일
        const checkBox = $("#confirm");	//인증번호 입력란
        const boxWrap = $(".mail_check_input_box");	//인증번호 입력란 박스
        const confirmBtn = $("#confirmBtn");
		
        //메일보내기
        if($("#email").val() !== ''){
        	$.ajax({
                type:"GET",
                url:"mailCheck?email=" + email,
                success:function(data){
                    console.log("data : " + data);
                    checkBox.attr("disabled",false);
                    boxWrap.attr("id", "mail_check_input_box_true");
                    code = data;
                    confirmBtn.attr("disabled",true);
                }

            });
        }

        //인증번호 입력시 findPwdBtn 활성화
        $("#confirm").on("keyup", function() {
            let flag = true;
            flag = $(this).val().length > 0 ? false : true;
            $("#findPwdBtn").attr("disabled", flag);
        });

    });

//-------------------------------------------------------------
//인증번호 비교
    $("#findPwdBtn").click(function(){
        $('#emailDiv').empty();
        $('#confirmDiv').empty();

        //debugger;
        const inputCode = $("#confirm").val();	//입력코드
        const checkResult = $("#mail_check_input_box_warn");	//비교 결과


        //일치할 경우
        //debugger;
        if(inputCode === code){
            checkResult.html("인증번호가 일치합니다. 비밀번호를 변경해주세요.");
            checkResult.attr("class", "correct");
            $('#newPasswordDiv').show();
        
            //새로운비밀번호 등록
            
         } else {	//일치하지 않을 경우
	         checkResult.html("인증번호를 다시 확인해주세요.");
	         checkResult.attr("class", "incorrect");
         }
        
    });


//-------------------------------------------------------------
//비밀번호 변경
    $("#changeBtn").click(function() {
   		if($("#newPassword").val() != '') {
   			
            $.ajax({
				url: '/furniture/member/changePwd',
				type: 'post',
				data: {'email': $('#email').val(),
					   'password': $('#newPassword').val()
				},
				dataType: 'text',
				success: function(){
					alert('비밀번호가 변경되었습니다.');
					location.href='/furniture/member/loginForm';
				},
				error: function(err){
					console.log(err);
					alert('실패');
				}
			});
   		}
       
   	});
//-------------------------------------------------------------
//라디오버튼 속성부여
    $(document).ready(function(){
        const url = new URL(window.location.href);
        const paramValue = url.searchParams.get("type");
        if(paramValue === 'email'){
            $('#tabmenu1').attr('checked', true);
        } else if(paramValue === 'password'){
            $('#tabmenu2').attr('checked', true);
        }

        $('#newPasswordDiv').hide();
        //debugger;

        $("#email").on("keyup", function() {
            let flag = true;
            flag = $(this).val().length > 0 ? false : true;
            $("#confirmBtn").attr("disabled", flag);
        });

    });

//-------------------------------------------------------------



</script>

</body>
</html>