//$('#page-btn').click(function(){
//	var color = $(this).css("background-color");
//	if(color == 'rgb(35,13,70)');
//	$(this).css("background-color", "rgb(35,13,70)");
//});


//첫 페이지
$(".checkbox_group").on("click", "#check_all", function () {
  var checked = $(this).is(":checked");
//체크박스 전체 선택
  if(checked){
  	$(this).parents(".checkbox_group").find('input').prop("checked", true);
  } else {
  	$(this).parents(".checkbox_group").find('input').prop("checked", false);
  }
});


$(".checkbox_group").on("click", ".normal", function() {
    var is_checked = true;
    //체크박스 개별 선택
    $(".checkbox_group .normal").each(function(){
        is_checked = is_checked && $(this).is(":checked");
        
    });
    
    $("#check_all").prop("checked", is_checked);
});


//팝업 (보기버튼 클릭 시 - 싱글 모니터)
//function showPopup() {
//	var popupWidth = 560;
//	var popupHeight = 800;
//
//	var popupX = (window.screen.width / 2) - (popupWidth / 2);
//	//만들 팝업창 width 크기의 1/2 만큼 보정값으로 빼주었음
//
//	var popupY= (window.screen.height / 2) - (popupHeight / 2);
//	//만들 팝업창 height 크기의 1/2 만큼 보정값으로 빼주었음
//	
//	window.open('popup.jsp', 'a', 'status=no, resizable=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
//	//window.open('popup1.jsp', 'a', 'status=no, width=600, height=1200, resizable=no');
//}

//팝업 (보기버튼 클릭 시 - 듀얼 모니터)
//듀얼 모니터 고려한 윈도우 띄우기
function showPopup(){
	var nWidth = "560";
	var nHeight = "720";			  

	var xPos = (document.body.clientWidth / 2) - (nWidth / 2); 
	xPos += window.screenLeft;	 //듀얼 모니터
	var yPos = (screen.availHeight / 2) - (nHeight / 2);

	window.open("popup.jsp","popOpen","width="+nWidth+",height="+nHeight+", left="+xPos+", top="+yPos+", toolbars=no, resizable=no, scrollbars=no");
	
	//새로고침 방지 ( Ctrl+R, Ctrl+N, F5 )
    if ( event.ctrlKey == true && ( event.keyCode == 78 || event.keyCode == 82 ) || event.keyCode == 116) {
         event.keyCode = 0;
         event.cancelBubble = true;
         event.returnValue = false;
    }

}


//슬라이드
$('.main-bn > .slider > .slides > .bn > .inner-txt > .page-btns').click(function(){
	//약관동의 체크박스 유효성, 체크박스가 체크되었는지 판별
	if($("#check_1").is(":checked") && $("#check_2").is(":checked") && $("#check_3").is(":checked")){
			true;
		} else {
			if(!$("#check_1").is(":checked")){
				document.getElementById("checkboxDiv").innerText = "만 14세 미만이면 가입이 불가능합니다.";
				$('#check_age').focus();  //해당 체크박스로 포커스 이동.
				
				$('#checkboxDiv').css('color', 'red');
				$('#checkboxDiv').css('font-size', '12.5px');
				
				return false;
			}
			if(!$("#check_2").is(":checked")){
				document.getElementById("checkboxDiv").innerText = "이용약관에 동의해주세요.";
				$('#check_2').focus();
				
				$('#checkboxDiv').css('color', 'red');
				$('#checkboxDiv').css('font-size', '12.5px');
				
				return false;
			}
			if(!$("#check_3").is(":checked")){
				document.getElementById("checkboxDiv").innerText = "개인정보 처리방침에 동의해주세요.";
				$('#check_3').focus();
				
				$('#checkboxDiv').css('color', 'red');
				$('#checkboxDiv').css('font-size', '12.5px');
				
				return false;
			}
		}
	
	//슬라이드
	var $clicked = $(this);
    var $slider = $(this).closest('.slider >.slides');
    var index = $(this).index();
    var isLeft = index == 0;

    var $current = $slider.find('> .bn.active');
    var $post;

    if ( isLeft ){
        $post = $current.prev();
    }
    else {
        $post = $current.next();
    }
    
    if ( $post.length == 0 ){
        if ( isLeft ){
            $post = $slider.find(' > .bn:last-child');
        }
        else {
            $post = $slider.find(' > .bn:first-child');
        }
    }

    $current.removeClass('active');
    $post.addClass('active');
	
});

//서비스 약관 동의 시 버튼 색 
function checkAgree(){
	//체크 시 폰트 두께 변경
	//체크
/*	if($("#check_all").is(":checked")){
			$('#check_allAgr').css('font-weight','bold');
		}
	
	if($("#check_1").is(":checked")){
			$('#check_age').css('font-weight','bold');
		}
			
	if($("#check_2").is(":checked")){
			$('#check_agr').css('font-weight','bold');
		}
			
	if($("#check_3").is(":checked")){
			$('#check_ind').css('font-weight','bold');
		}
	
	if($("#check_4").is(":checked")){
			$('#check_mac').css('font-weight','bold');
		}*/
	
	//체크 해제
	if(!$("#check_all").is(":checked")){
		$('#check_allAgr').css('font-weight','normal');
		}
	
	if(!$("#check_1").is(":checked")){
			$('#check_age').css('font-weight','normal');
		}
		
	if(!$("#check_2").is(":checked")){
			$('#check_agr').css('font-weight','normal');
		}
			
	if(!$("#check_3").is(":checked")){
			$('#check_ind').css('font-weight','normal');
		}
	
	if(!$("#check_4").is(":checked")){
			$('#check_mac').css('font-weight','normal');
		}
	
	
	if($("#check_1").is(":checked") && $("#check_2").is(":checked") && $("#check_3").is(":checked")){
			$('#checkboxDiv').empty();
			$('.page-btn0').css('display', 'block');
			$('.page-btn0').css('border-radius', '5px');
			$('.page-btn0').css('border', 'none');
			$('.page-btn0').css('transition', 'all 0.5s');
			$('.page-btn0').css('background', '#223894');
			$('.page-btn0').css('color', 'white');
			return true; 
			
		} else if($("#check_1").is(":checked") && $("#check_2").is(":checked") && $("#check_3").is(":checked")){
			$('#checkboxDiv').empty();
			$('.page-btn0').css('display', 'block');
			$('.page-btn0').css('border-radius', '5px');
			$('.page-btn0').css('border', 'none');
			$('.page-btn0').css('transition', 'all 0.5s');
			$('.page-btn0').css('background', '#223894');
			$('.page-btn0').css('color', 'white');
			return true; 
			
		} else if(!$("#check_1").is(":checked") || !$("#check_2").is(":checked") || !$("#check_3").is(":checked")){
			$('.page-btn0').css('display', 'block');
			$('.page-btn0').css('border-radius', '5px');
			$('.page-btn0').css('border', 'none');
			$('.page-btn0').css('transition', 'all 0.5s');
			$('.page-btn0').css('background', '#c4c4c4');
			$('.page-btn0').css('color', 'white');
			return false;
			
		}
}


//이메일 중복검사
$("#email").focusout(function(){
	var idCheck = $('.email').val();// idCheck 변수
	var btnLogin = $('.page-btn1');
	  
	$.ajax({
		url: '/furniture/member/checkId',
		type: 'post',
		data: 'email='+$('#joinForm #email').val(),
		dataType: 'text', //로그인 했다 안했다 글만 들어오면 되기에 text로 받아야함.
		success: function(data){
			var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
			var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/);
			
			if(data == 'exist'){
				$('#joinForm #emailDiv').text('사용 불가능한 아이디입니다.');
				$('#emailDiv').css('color', 'red');
				$('#emailDiv').css('font-size', '12.5px');
				
				$('.page-btn1').attr('disabled', true);
				
			} else if(!getMail.test($("#email").val())|| $("#email").val() == ""){ //이메일 입력 시 공백을 넣으면 return false
		        document.getElementById("emailDiv").innerText = "형식에 맞게 아이디를 입력하세요.";
				$('#emailDiv').css('color', 'red');
				$('#emailDiv').css('font-size', '12.5px');
		        
				$('.page-btn1').css('display', 'block');
				$('.page-btn1').css('border-radius', '5px');
				$('.page-btn1').css('border', 'none');
				$('.page-btn1').css('transition', 'all 0.5s');
				$('.page-btn1').css('background', '#c4c4c4');
				$('.page-btn1').css('color', 'white');
				
		        $("#email").focus();
		        return false;
		        
			} else if(data == 'non_exist'){
				$('#joinForm #emailDiv').text('사용 가능한 아이디입니다.');
				$('#emailDiv').css('color', '#223894');
				$('#emailDiv').css('font-size', '12.5px');
				
				$('.page-btn1').css('display', 'block');
				$('.page-btn1').css('border-radius', '5px');
				$('.page-btn1').css('border', 'none');
				$('.page-btn1').css('transition', 'all 0.5s');
				$('.page-btn1').css('background', '#223894');
				$('.page-btn1').css('color', 'white');

				$('.page-btn1').attr('disabled', false);
				//btnLogin.addClass('on');
				
				$('input[name=check]').val($('#joinForm #email').val());
				
			} else if($("#email").val() == ""){
			    //if(document.getElementById("email").value==""){
				$('#joinForm #emailDiv').text('아이디를 입력하세요.');
				$('#emailDiv').css('color', 'red');
				$('#emailDiv').css('font-size', '12.5px');
				
				$('.page-btn1').css('display', 'block');
				$('.page-btn1').css('border-radius', '5px');
				$('.page-btn1').css('border', 'none');
				$('.page-btn1').css('transition', 'all 0.5s');
				$('.page-btn1').css('background', '#c4c4c4');
				$('.page-btn1').css('color', 'white');
				
				$('.page-btn1').attr('disabled', true);

		    } else if(!getMail.test($("#email").val())){ //이메일 입력 시 공백을 넣으면 return false
				$('#joinForm #emailDiv').text('사용 불가능한 아이디입니다.');
				$('#emailDiv').css('color', 'red');
				$('#emailDiv').css('font-size', '12.5px');
				
				$('.page-btn1').css('display', 'block');
				$('.page-btn1').css('border-radius', '5px');
				$('.page-btn1').css('border', 'none');
				$('.page-btn1').css('transition', 'all 0.5s');
				$('.page-btn1').css('background', '#c4c4c4');
				$('.page-btn1').css('color', 'white');
				
				$('.page-btn1').attr('disabled', true);
				
		    } else if($("#email").val().length < 14 || $("#email").val().length > 30){
				$('#joinForm #emailDiv').text('사용 불가능한 아이디입니다.');
				$('#emailDiv').css('color', 'red');
				$('#emailDiv').css('font-size', '12.5px');
				
				$('.page-btn1').css('display', 'block');
				$('.page-btn1').css('border-radius', '5px');
				$('.page-btn1').css('border', 'none');
				$('.page-btn1').css('transition', 'all 0.5s');
				$('.page-btn1').css('background', '#c4c4c4');
				$('.page-btn1').css('color', 'white');
				
				$('.page-btn1').attr('disabled', true);
				
			}
			
		},
		error: function(err){
			console.log(err);
		}
	});

  
});


//이메일
$('.main-bn > .slider > .slides > .bn > .inner-txt > .page-btns > .page-btn1').click(function(){
	var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
	var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/);
	
	//이메일 유효성 검사
    if($("#email").val() == ""){
    //if(document.getElementById("email").value==""){
    	document.getElementById("emailDiv").innerText = "아이디를 입력하세요.";
		$('#emailDiv').css('color', 'red');
		$('#emailDiv').css('font-size', '12.5px');
		
		$('.page-btn1').css('display', 'block');
		$('.page-btn1').css('border-radius', '5px');
		$('.page-btn1').css('border', 'none');
		$('.page-btn1').css('transition', 'all 0.5s');
		$('.page-btn1').css('background', '#c4c4c4');
		$('.page-btn1').css('color', 'white');
		
        $("#email").focus();
        return false;

    } else if(!getMail.test($("#email").val())){ //이메일 입력 시 공백을 넣으면 return false
        document.getElementById("emailDiv").innerText = "형식에 맞게 아이디를 입력하세요.";
		$('#emailDiv').css('color', 'red');
		$('#emailDiv').css('font-size', '12.5px');
		
		$('.page-btn1').css('display', 'block');
		$('.page-btn1').css('border-radius', '5px');
		$('.page-btn1').css('border', 'none');
		$('.page-btn1').css('transition', 'all 0.5s');
		$('.page-btn1').css('background', '#c4c4c4');
		$('.page-btn1').css('color', 'white');
		
        $("#email").val("");
        $("#email").focus();
        return false;
        
    } else if($("#email").val().length < 14 || $("#email").val().length > 30){
		document.getElementById("emailDiv").innerText = "잘못된 아이디입니다.";
		$('#emailDiv').css('color', 'red');
		$('#emailDiv').css('font-size', '12.5px');
		
		$('.page-btn1').css('display', 'block');
		$('.page-btn1').css('border-radius', '5px');
		$('.page-btn1').css('border', 'none');
		$('.page-btn1').css('transition', 'all 0.5s');
		$('.page-btn1').css('background', '#c4c4c4');
		$('.page-btn1').css('color', 'white');
		return false;
		
	}
    
});

//비밀번호
function checkPwd(){
//$('.main-bn > .slider > .slides > .bn > .inner-txt > .page-btns > .page-btn2').click(function(){
	var pw = $("#password").val();
	var num = pw.search(/[0-9]/g);
	var eng = pw.search(/[a-z]/ig);
	var eng2 = pw.search(/[A-Z]/ig);
	//var kor = pw.search(/^[가-힣]{2,6}$/);
	var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
	$('#passwordDiv').empty();
	$('#repasswordDiv').empty();
	
	//비밀번호 유효성 검사
	if($("#password").val() == "") {
		document.getElementById("passwordDiv").innerText = "비밀번호를 입력하세요.";
		$("#password").focus();
		$('#passwordDiv').css('color', 'red');
		$('#passwordDiv').css('font-size', '12.5px');
		
		$('.page-btn2').css('display', 'block');
		$('.page-btn2').css('border-radius', '5px');
		$('.page-btn2').css('border', 'none');
		$('.page-btn2').css('transition', 'all 0.5s');
		$('.page-btn2').css('background', '#c4c4c4');
		$('.page-btn2').css('color', 'white');
		$('.page-btn2').attr('disabled', true);
		
		return false;
	}
	 
    //비밀번호 유효성 검사
	 if(pw.length < 8 || pw.length > 12){
		document.getElementById("passwordDiv").innerText = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";	  
		return false;
		$('#passwordDiv').css('color', 'red');
		$('#passwordDiv').css('font-size', '12.5px');
		
		$('.page-btn2').css('display', 'block');
		$('.page-btn2').css('border-radius', '5px');
		$('.page-btn2').css('border', 'none');
		$('.page-btn2').css('transition', 'all 0.5s');
		$('.page-btn2').css('background', '#c4c4c4');
		$('.page-btn2').css('color', 'white');
		$('.page-btn2').attr('disabled', true);
		
		return false;
		  
		}else if(pw.search(/\s/) != -1){
			document.getElementById("passwordDiv").innerText = "비밀번호는 공백 없이 입력해주세요.";	  
			$('#passwordDiv').css('color', 'red');
			$('#passwordDiv').css('font-size', '12.5px');
			
			$('.page-btn2').css('display', 'block');
			$('.page-btn2').css('border-radius', '5px');
			$('.page-btn2').css('border', 'none');
			$('.page-btn2').css('transition', 'all 0.5s');
			$('.page-btn2').css('background', '#c4c4c4');
			$('.page-btn2').css('color', 'white');
			$('.page-btn2').attr('disabled', true);
			
			return false;
		  
		}else if(num < 0 || eng < 0 || eng2 < 0 || spe < 0){
			document.getElementById("passwordDiv").innerText = "영문 대 소문자, 숫자, 특수문자를 혼합하여 입력해주세요.";	    
			$('#passwordDiv').css('color', 'red');
			$('#passwordDiv').css('font-size', '12.5px');
			
			$('.page-btn2').css('display', 'block');
			$('.page-btn2').css('border-radius', '5px');
			$('.page-btn2').css('border', 'none');
			$('.page-btn2').css('transition', 'all 0.5s');
			$('.page-btn2').css('background', '#c4c4c4');
			$('.page-btn2').css('color', 'white');
			$('.page-btn2').attr('disabled', true);
			
			return false;
		  
		}else if($("#repassword").val() == "") {
			document.getElementById("repasswordDiv").innerText = "비밀번호 재확인을 위해 비밀번호를 다시 입력해주세요.";
			$("#repassword").focus();
			$('#repasswordDiv').css('color', 'red');
			$('#repasswordDiv').css('font-size', '12.5px');
			
			$('.page-btn2').css('display', 'block');
			$('.page-btn2').css('border-radius', '5px');
			$('.page-btn2').css('border', 'none');
			$('.page-btn2').css('transition', 'all 0.5s');
			$('.page-btn2').css('background', '#c4c4c4');
			$('.page-btn2').css('color', 'white');
			$('.page-btn2').attr('disabled', true);
			
			return false;
			
		}else if ($("#email").val()==($("#password").val())) { //아이디랑 비밀번호랑 같은지
		    document.getElementById("passwordDiv").innerText = "비밀번호가 아이디와 동일하면 안됩니다.";
		    $("#passwordDiv").val("");
		    $("#passwordDiv").focus();
			$('#passwordDiv').css('color', 'red');
			$('#passwordDiv').css('font-size', '12.5px');
			
			$('.page-btn2').css('display', 'block');
			$('.page-btn2').css('border-radius', '5px');
			$('.page-btn2').css('border', 'none');
			$('.page-btn2').css('transition', 'all 0.5s');
			$('.page-btn2').css('background', '#c4c4c4');
			$('.page-btn2').css('color', 'white');
			$('.page-btn2').attr('disabled', true);
			    
		    return false;
	    
	    }else if($("#password").val() != ($("#repassword").val())){ 
		    document.getElementById("repasswordDiv").innerText = "비밀번호가 동일하지 않습니다.";
		    $("#repasswordDiv").val("");
		    $("#repasswordDiv").focus();
			$('#repasswordDiv').css('color', 'red');
			$('#repasswordDiv').css('font-size', '12.5px');
			
			$('.page-btn2').css('display', 'block');
			$('.page-btn2').css('border-radius', '5px');
			$('.page-btn2').css('border', 'none');
			$('.page-btn2').css('transition', 'all 0.5s');
			$('.page-btn2').css('background', '#c4c4c4');
			$('.page-btn2').css('color', 'white');
			$('.page-btn2').attr('disabled', true);
			
		    return false;
	    
	    }else if($("#password").val() == ($("#repassword").val())){ 
		    document.getElementById("repasswordDiv").innerText = "비밀번호가 일치합니다.";
			$('#repasswordDiv').css('color', '#223894');
			$('#repasswordDiv').css('font-size', '12.5px');
			
			$('.page-btn2').css('display', 'block');
			$('.page-btn2').css('border-radius', '5px');
			$('.page-btn2').css('border', 'none');
			$('.page-btn2').css('transition', 'all 0.5s');
			$('.page-btn2').css('background', '#223894');
			$('.page-btn2').css('color', 'white');
			$('.page-btn2').attr('disabled', false);
			
			return true;
			
		} 
}


//이름
$('.main-bn > .slider > .slides > .bn > .inner-txt > .page-btns > .page-btn3').click(function(){
	var getName = /^[가-힣]{2,6}$/;
	$('#nameDiv').empty();

	//이름 유효성 검사
	if($("#name").val() == "") {
		document.getElementById("nameDiv").innerText = "이름을 입력해주세요.";
		$("#name").focus();
		$('#nameDiv').css('color', 'red');
		$('#nameDiv').css('font-size', '12.5px');
		
		$('.page-btn3').css('display', 'block');
		$('.page-btn3').css('border-radius', '5px');
		$('.page-btn3').css('border', 'none');
		$('.page-btn3').css('transition', 'all 0.5s');
		$('.page-btn3').css('background', '#c4c4c4');
		$('.page-btn3').css('color', 'white');
		
		return false;
	}
	
	//이름 유효성 검사
	if(!getName.test($("#name").val())) {
		document.getElementById("nameDiv").innerText = "잘못된 이름을 입력하셨습니다.";
		$("#name").focus();
		$('#nameDiv').css('color', 'red');
		$('#nameDiv').css('font-size', '12.5px');
		
		$('.page-btn3').css('display', 'block');
		$('.page-btn3').css('border-radius', '5px');
		$('.page-btn3').css('border', 'none');
		$('.page-btn3').css('transition', 'all 0.5s');
		$('.page-btn3').css('background', '#c4c4c4');
		$('.page-btn3').css('color', 'white');
		
	    return false;
	}
	
	if(getName.test($("#name").val())) {
		$('#nameDiv').css('color', '#223894');
		$('#nameDiv').css('font-size', '12.5px');
		
		$('.page-btn3').css('display', 'block');
		$('.page-btn3').css('border-radius', '5px');
		$('.page-btn3').css('border', 'none');
		$('.page-btn3').css('transition', 'all 0.5s');
		$('.page-btn3').css('background', '#223894');
		$('.page-btn3').css('color', 'white');
		
	    return true;
	}
	
});

function nameCheck(){
	var getName = /^[가-힣]{2,6}$/;
	$('#nameDiv').empty();
	
	if(getName.test($("#name").val())) {
		$('#nameDiv').css('color', '#223894');
		$('#nameDiv').css('font-size', '12.5px');
		
		$('.page-btn3').css('display', 'block');
		$('.page-btn3').css('border-radius', '5px');
		$('.page-btn3').css('border', 'none');
		$('.page-btn3').css('transition', 'all 0.5s');
		$('.page-btn3').css('background', '#223894');
		$('.page-btn3').css('color', 'white');
		
	    return true;
	}
	
}

//휴대폰번호,주소
$('.main-bn > .slider > .slides > .bn > .inner-txt > .page-btns > .page-btn4').click(function(){
	$('#phoneDiv').empty();
	$('#addressDiv').empty();
	//이메일전송 인증번호 저장위한 코드
    var code = "";
	
	var phone = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
	
	//휴대폰번호 유효성 검사
	if($("#phone").val() == "") {
		document.getElementById("phoneDiv").innerText = "휴대폰번호를 입력하세요.";
		$("#phone").focus();
		$('#phoneDiv').css('color', 'red');
		$('#phoneDiv').css('font-size', '12.5px');
		
		$('.page-btn4').css('display', 'block');
		$('.page-btn4').css('border-radius', '5px');
		$('.page-btn4').css('border', 'none');
		$('.page-btn4').css('transition', 'all 0.5s');
		$('.page-btn4').css('background', '#c4c4c4');
		$('.page-btn4').css('color', 'white');
		
		return false;
	}
	
	//전화번호 양식을 맞추지 않을 시
	else if(!phone.test($("#phone").val())) {
	    document.getElementById("phoneDiv").innerText = "잘못된 휴대폰번호를 입력하셨습니다.";
	    $("#phoneDiv").val("");
	    $("#phoneDiv").focus();  
		$('#phoneDiv').css('color', 'red');
		$('#phoneDiv').css('font-size', '12.5px');
		
		$('.page-btn4').css('display', 'block');
		$('.page-btn4').css('border-radius', '5px');
		$('.page-btn4').css('border', 'none');
		$('.page-btn4').css('transition', 'all 0.5s');
		$('.page-btn4').css('background', '#c4c4c4');
		$('.page-btn4').css('color', 'white');	
		
		return false;
	}
	
	//우편번호 찾기 버튼 클릭하지 않을 시
	else if($("#zipcode").val() == "") {
		document.getElementById("addressDiv").innerText = "우편번호 찾기를 통해서 주소를 입력해 주세요.";
		$("#zipcode").focus();	
		$('#addressDiv').css('color', 'red');
		$('#addressDiv').css('font-size', '12.5px');
		
		$('.page-btn4').css('display', 'block');
		$('.page-btn4').css('border-radius', '5px');
		$('.page-btn4').css('border', 'none');
		$('.page-btn4').css('transition', 'all 0.5s');
		$('.page-btn4').css('background', '#c4c4c4');
		$('.page-btn4').css('color', 'white');

		return false;
	}
	
	//주소 유효성 검사
	else if($("#addr1").val() == "") {
		document.getElementById("addressDiv").innerText = "주소를 입력하세요.";
		$("#addr1").focus();	
		$('#addressDiv').css('color', 'red');
		$('#addressDiv').css('font-size', '12.5px');
		
		$('.page-btn4').css('display', 'block');
		$('.page-btn4').css('border-radius', '5px');
		$('.page-btn4').css('border', 'none');
		$('.page-btn4').css('transition', 'all 0.5s');
		$('.page-btn4').css('background', '#c4c4c4');
		$('.page-btn4').css('color', 'white');
		
		return false;
		
	}
		
	//상세주소 유효성 검사
	else if($("#addr2").val() == "") {
		document.getElementById("addressDiv").innerText = "상세주소를 입력하세요.";
		$("#addr2").focus();	
		$('#addressDiv').css('color', 'red');
		$('#addressDiv').css('font-size', '12.5px');
		
		$('.page-btn4').css('display', 'block');
		$('.page-btn4').css('border-radius', '5px');
		$('.page-btn4').css('border', 'none');
		$('.page-btn4').css('transition', 'all 0.5s');
		$('.page-btn4').css('background', '#c4c4c4');
		$('.page-btn4').css('color', 'white');
		
		return false;

	}
	
	else if($("#zipcode").val() == "" || $("#addr1").val() == "" || $("#addr2").val() == ""){
		$('.page-btn4').css('display', 'block');
		$('.page-btn4').css('border-radius', '5px');
		$('.page-btn4').css('border', 'none');
		$('.page-btn4').css('transition', 'all 0.5s');
		$('.page-btn4').css('background', '#223894');
		$('.page-btn4').css('color', 'white');
		
		return false;
 	}

	
});

function checkAddrPhone(){
	if(!$("#zipcode").val() == "" || !$("#addr1").val() == "" || !$("#addr2").val() == ""){
		$('.page-btn4').css('display', 'block');
		$('.page-btn4').css('border-radius', '5px');
		$('.page-btn4').css('border', 'none');
		$('.page-btn4').css('transition', 'all 0.5s');
		$('.page-btn4').css('background', '#223894');
		$('.page-btn4').css('color', 'white');
		
		return true;
 	}
}

//이메일 인증번호 (one --> 1번만 실행)
$('.main-bn > .slider > .slides > .bn > .inner-txt > .page-btns > .page-btn4').one("click",function(){
	//이메일 인증번호 발송
	var email = $("#email").val();//입력한 이메일
	var checkBox = $(".mail_check_input");//인증번호 입력란
    var boxWrap = $(".mail_check_input_box");
    //alert($("#email").val());
    
    $.ajax({
        type:'get',
        url: '/furniture/member/mailCheck?=email' + email,
        data: {
        	'email' : $('#email').val()
        },
		success: function (data){
			console.log("data : " + data);
//			checkBox.attr("disabled",false);
			boxWrap.attr("email", "mail_check_input_box_warn");
			code = data;
		},
		error: function(err){
			console.log(err);
		}
		
    })
                
});
    
//이메일 인증번호 비교
$('#mail_check_input').focusout(function(){
//$('.main-bn > .slider > .slides > .bn > .inner-txt > .page-btns > .page-btn5').click(function(){
    var inputCode = $(".mail_check_input").val();//입력코드    
    //var checkResult = code;//비교 결과
    
    //alert($(".mail_check_input").val());
    //alert(code);
    
	if(code == $(".mail_check_input").val()) {
		document.getElementById("mailCheckDiv").innerText = "인증번호가 일치합니다.";
		$('#mailCheckDiv').css('color', '#223894');
		$('#mailCheckDiv').css('font-size', '12.5px');
		
		$('.page-btn5').css('display', 'block');
		$('.page-btn5').css('border-radius', '5px');
		$('.page-btn5').css('border', 'none');
		$('.page-btn5').css('transition', 'all 0.5s');
		$('.page-btn5').css('background', '#223894');
		$('.page-btn5').css('color', 'white');
	}
    
$('.main-bn > .slider > .slides > .bn > .inner-txt > .page-btns > .page-btn5').click(function(){
	if(code != $(".mail_check_input").val()) {
		document.getElementById("mailCheckDiv").innerText = "인증번호가 틀렸습니다.";
		$(".mail_check_input").focus();	
		$('#mailCheckDiv').css('color', 'red');
		$('#mailCheckDiv').css('font-size', '12.5px');
		
		$('.page-btn5').css('display', 'block');
		$('.page-btn5').css('border-radius', '5px');
		$('.page-btn5').css('border', 'none');
		$('.page-btn5').css('transition', 'all 0.5s');
		$('.page-btn5').css('background', '#c4c4c4');
		$('.page-btn5').css('color', 'white');
		
		return false;
		
		}
	});

});


//생년월일
function checkBir(){
	var year = $("#bir_yy").val();
	var month = $("#bir_mm").val();
	var day = $("#bir_dd").val();
	var today = new Date();
	var yearNow = today.getFullYear();
	var adultYear = yearNow-20;
	$('#birthDiv').empty();
	
	if (year < 1900 || year > adultYear) {
		document.getElementById("birthDiv").innerText = "연도를 확인하세요. "+adultYear+"년생 이전 출생자만 등록 가능합니다.";
		$('#birthDiv').css('color', 'red');
		$('#birthDiv').css('font-size', '12.5px');
		
		$('.page-btn6').css('display', 'block');
		$('.page-btn6').css('border-radius', '5px');
		$('.page-btn6').css('border', 'none');
		$('.page-btn6').css('transition', 'all 0.5s');
		$('.page-btn6').css('background', '#c4c4c4');
		$('.page-btn6').css('color', 'white');
		$('.page-btn6').attr('disabled', true);
		
		return false;
	}
	
	else if (year == "") {
		document.getElementById("birthDiv").innerText = "연도를 입력해주세요.";
		$('#birthDiv').css('color', 'red');
		$('#birthDiv').css('font-size', '12.5px');
		
		$('.page-btn6').css('display', 'block');
		$('.page-btn6').css('border-radius', '5px');
		$('.page-btn6').css('border', 'none');
		$('.page-btn6').css('transition', 'all 0.5s');
		$('.page-btn6').css('background', '#c4c4c4');
		$('.page-btn6').css('color', 'white');
		$('.page-btn6').attr('disabled', true);
		
		return false;
	}
	
	else if (month == "월") {
		document.getElementById("birthDiv").innerText = "월을 입력해주세요.";
		$('#birthDiv').css('color', 'red');
		$('#birthDiv').css('font-size', '12.5px');
		
		$('.page-btn6').css('display', 'block');
		$('.page-btn6').css('border-radius', '5px');
		$('.page-btn6').css('border', 'none');
		$('.page-btn6').css('transition', 'all 0.5s');
		$('.page-btn6').css('background', '#c4c4c4');
		$('.page-btn6').css('color', 'white');
		$('.page-btn6').attr('disabled', true);
		
		return false;
	}
		
	else if (day == "") {
		document.getElementById("birthDiv").innerText = "일을 입력해주세요.";
		$('#birthDiv').css('color', 'red');
		$('#birthDiv').css('font-size', '12.5px');
		
		$('.page-btn6').css('display', 'block');
		$('.page-btn6').css('border-radius', '5px');
		$('.page-btn6').css('border', 'none');
		$('.page-btn6').css('transition', 'all 0.5s');
		$('.page-btn6').css('background', '#c4c4c4');
		$('.page-btn6').css('color', 'white');
		$('.page-btn6').attr('disabled', true);
		
		return false;
	}
	
	else if (month < 1 || month > 12) {
		document.getElementById("birthDiv").innerText = "달은 1월부터 12월까지 입력 가능합니다.";
		$('#birthDiv').css('color', 'red');
		$('#birthDiv').css('font-size', '12.5px');
		
		$('.page-btn6').css('display', 'block');
		$('.page-btn6').css('border-radius', '5px');
		$('.page-btn6').css('border', 'none');
		$('.page-btn6').css('transition', 'all 0.5s');
		$('.page-btn6').css('background', '#c4c4c4');
		$('.page-btn6').css('color', 'white');
		$('.page-btn6').attr('disabled', true);
		
		return false;
	}
	
	else if (day < 1 || day > 31) {
		document.getElementById("birthDiv").innerText = "일은 1일부터 31일까지 입력가능합니다.";
		$('#birthDiv').css('color', 'red');
		$('#birthDiv').css('font-size', '12.5px');
		
		$('.page-btn6').css('display', 'block');
		$('.page-btn6').css('border-radius', '5px');
		$('.page-btn6').css('border', 'none');
		$('.page-btn6').css('transition', 'all 0.5s');
		$('.page-btn6').css('background', '#c4c4c4');
		$('.page-btn6').css('color', 'white');
		$('.page-btn6').attr('disabled', true);
		
		return false;
	}
	
	else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
		document.getElementById("birthDiv").innerText = month+"월은 31일이 존재하지 않습니다.";
		$('#birthDiv').css('color', 'red');
		$('#birthDiv').css('font-size', '12.5px');
		
		$('.page-btn6').css('display', 'block');
		$('.page-btn6').css('border-radius', '5px');
		$('.page-btn6').css('border', 'none');
		$('.page-btn6').css('transition', 'all 0.5s');
		$('.page-btn6').css('background', '#c4c4c4');
		$('.page-btn6').css('color', 'white');
		$('.page-btn6').attr('disabled', true);
		
		return false;
	}
	
	else if ($("#bir_yy").val() && month !="월" && $("#bir_dd").val()){
		$("#birthDiv").val("");
		
		$('.page-btn6').css('display', 'block');
		$('.page-btn6').css('border-radius', '5px');
		$('.page-btn6').css('border', 'none');
		$('.page-btn6').css('transition', 'all 0.5s');
		$('.page-btn6').css('background', '#223894');
		$('.page-btn6').css('color', 'white');
		$('.page-btn6').attr('disabled', false);
		
		return true;
		
	}
	
	else if (month == 2) {
		var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
		if (day>29 || (day==29 && !isleap)) {
			 document.getElementById("birthDiv").innerText = year + "년 2월은  " + day + "일이 없습니다.";
				$('#birthDiv').css('color', 'red');
				$('#birthDiv').css('font-size', '12.5px');
				
				$('.page-btn6').css('display', 'block');
				$('.page-btn6').css('border-radius', '5px');
				$('.page-btn6').css('border', 'none');
				$('.page-btn6').css('transition', 'all 0.5s');
				$('.page-btn6').css('background', '#c4c4c4');
				$('.page-btn6').css('color', 'white');
				$('.page-btn6').attr('disabled', true);
				
				return false;
		}
	}
	
	else if (!$("#bir_yy").val() || !$("#bir_mm option:selected").val() || !$("#bir_dd").val()){
		$('#birthDiv').css('color', 'red');
		$('#birthDiv').css('font-size', '12.5px');
		
		$('.page-btn6').css('display', 'block');
		$('.page-btn6').css('border-radius', '5px');
		$('.page-btn6').css('border', 'none');
		$('.page-btn6').css('transition', 'all 0.5s');
		$('.page-btn6').css('background', '#c4c4c4');
		$('.page-btn6').css('color', 'white');
		$('.page-btn6').attr('disabled', true);
		
		return false;
		
	}
	
}

$('.main-bn > .slider > .slides > .bn > .inner-txt > .page-btns > .page-btn6').click(function(){
	$.ajax({
		url: '/furniture/member/join',
		type: 'post',
		data: $('#joinForm').serialize(),
		success: function(){
			alert("회원가입성공")

		},
		error: function(err){
			console.log(err);
		}
	});
	
});


//우편번호 찾기
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("addr1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("addr2").focus();
        }
    }).open();
	

}
