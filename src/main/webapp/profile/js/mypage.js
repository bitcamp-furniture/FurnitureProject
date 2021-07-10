$(function(){
	$('#mypagePrivateModify').hide();
 	$('#mypageContactModify').hide();
	$('#mypagePasswordModify').hide();
	 
	$('#mypagePrivateModifyOpenBtn').click(function(){
		$('#mypagePrivateModify').show();
		$('#mypagePrivate').hide();
	});
	
	$('#mypagePrivateModifyClosingBtn').click(function(){
		$('#mypagePrivateModify').hide();
		$('#mypagePrivate').show();
	});

	
	$('#mypageContactModifyOpenBtn').click(function(){
		$('#mypageContactModify').show();
		$('#mypageContact').hide();
	});
	
	$('#mypageContactModifyClosingBtn').click(function(){
		$('#mypageContactModify').hide();
		$('#mypageContact').show();
	});
	
	
	
	
	$('#mypagePasswordOpenBtn').click(function(){
		$('#mypagePasswordModify').show();
		$('#mypagePassword').hide();
	});
	
	$('#mypagePasswordClosingBtn').click(function(){
		$('#mypagePasswordModify').hide();
		$('#mypagePassword').show();
	});
	
	
	
});

//------------------------------------------------------------
$(document).ready(function(){
	if($('#id').val() !== ''){
		$.ajax({
			url: '/furniture/profile/getMember',
			type: 'post',
			data: 'id=' +$('#id').val(),
			dataType: 'json',
			success: function(data){
				//alert(JSON.stringify(data));

				$('#name').text(data.name);
				$('#birth').text(data.bir_yy + data.bir_mm + data.bir_dd);
				$('#address').text(data.addr1 + '\n' +data.addr2);
				$('#phone').text(data.phone);
				$('#email').text(data.email);

				if(data.password === null) {
					$('#mypagePw').hide();
				} else {
					$('#password').val(data.password);
				}

			},
			error: function(err){
				console.log(err);
				alert('실패');
			}
		}); //ajax
	}
});

//------------------------------------------------------------

$('#mypagePrivateModifyBtn').click(function(){
	$('#mypageNameDiv').empty();
	$('#mypageBirthDiv').empty();
	$('#mypageAddressDiv').empty();
	$('#mypagePhoneDiv').empty();
	$('#mypageEmailDiv').empty();
	$('#mypagePasswordDiv').empty();
	
	if($('#mypagePrivateModifyName').val() == ''){
		$('#mypageNameDiv').text('이름 입력');
		$('#mypageNameDiv').css('color', 'red');
		$('#mypageNameDiv').css('font-size', '8pt');
		$('#mypageNameDiv').css('font-weight', 'bold');
	}else if($('#mypagePrivateModifyBirth').val() == ''){
		$('#mypageBirthDiv').text('생년월일 입력');
		$('#mypageBirthDiv').css('color', 'red');
		$('#mypageBirthDiv').css('font-size', '8pt');
		$('#mypageBirthDiv').css('font-weight', 'bold');
	}else if($('#mypagePrivateModifyAddress').val() ==''){
		$('#mypageAddressDiv').text('주소 입력');
		$('#mypageAddressDiv').css('color', 'red');
		$('#mypageAddressDiv').css('font-size', '8pt');
		$('#mypageAddressDiv').css('font-weight', 'bold');
	}
	
});

//------------------------------------------------------------
//개인 정보 수정 버튼 클릭시
$('#mypagePrivateModifyOpenBtn').click(function(){
	$.ajax({
		url: '/furniture/profile/getMember',
		type: 'post',
		data: 'id=' +$('#id').val(),
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			$('#mypagePrivateModifyName').attr('value', data.name);
			$('#mypagePrivateModifyBir_yy').attr('value', data.bir_yy);
			$('.current').text(data.bir_mm);
			$('.mypagePrivateModifyBir_mm').val(data.bir_mm).prop('select', true);
			$('#mypagePrivateModifyBir_dd').attr('value', data.bir_dd);
			$('#mypagePrivateModifyZipcode').attr('value', data.zipcode);
			$('#mypagePrivateModifyAddr1').attr('value', data.addr1);
			$('#mypagePrivateModifyAddr2').attr('value', data.addr2);
			
		},
		error: function(err){
			console.log(err);
			alert('실패');
		}
	}); //ajax
});

//------------------------------------------------------------
//개인 정보 저장 버튼 클릭시
$('#mypagePrivateModifyBtn').click(function(){
	var getName = /^[가-힣]{2,6}$/;
	var year = $("#mypagePrivateModifyBir_yy").val();
	var month = $(".mypagePrivateModifyBir_mm").val();
	var day = $("#mypagePrivateModifyBir_dd").val();
	var today = new Date();
	var yearNow = today.getFullYear();
	var adultYear = yearNow-20;
	
	
	$('#mypageNameDiv').empty();
	$('#mypageBirthDiv').empty();
	$('#mypageAddressDiv').empty();
	
	//이름 유효성 검사
	if($('#mypagePrivateModifyName').val()==''){
		$('#mypageNameDiv').text('이름을 입력해주시기 바랍니다');
		$('#mypageNameDiv').css('font-size','10pt');
	} else if(!getName.test($("#mypagePrivateModifyName").val())) {
		document.getElementById("mypageNameDiv").innerText = "잘못된 이름을 입력하셨습니다.";
	} 
	
	//생년월일 유효성 검사
	else if(year == ''){
		$('#mypageBirthDiv').text('태어난 년도를 입력해주시기 바랍니다');
		$('#mypageBirthDiv').css('font-size','10pt');
	}else if (year < 1900 || year > adultYear) {
		document.getElementById("mypageBirthDiv").innerText = "연도를 확인하세요. "+adultYear+"년생 이전 출생자만 등록 가능합니다.";
		$('#mypageBirthDiv').css('font-size','10pt');
	} else if(month == '월'){
		$('#mypageBirthDiv').text('태어난 월을 입력해주시기 바랍니다');
		$('#mypageBirthDiv').css('font-size','10pt');
	} else if(day == ''){
		$('#mypageBirthDiv').text('태어난 일을 입력해주시기 바랍니다');
		$('#mypageBirthDiv').css('font-size','10pt');
	} else if (day < 1 || day > 31) {
		document.getElementById("mypageBirthDiv").innerText = "일은 1일부터 31일까지 입력가능합니다.";
		$('#mypageBirthDiv').css('font-size','10pt');
	} else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
		document.getElementById("mypageBirthDiv").innerText = month+"월은 31일이 존재하지 않습니다.";
		$('#mypageBirthDiv').css('font-size','10pt');
	} else if (month == 2) {
		var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
		if (day>29 || (day==29 && !isleap)) {
			 document.getElementById("mypageBirthDiv").innerText = year + "년 2월은  " + day + "일이 없습니다.";
			 $('#mypageBirthDiv').css('font-size','10pt');
		}
			 
	//주소 유효성 검사
	} else if($("#mypagePrivateModifyAddr2").val() == "") {
		$('#mypageAddressDiv').text('상세주소를 입력하세요.');
		$("#mypagePrivateModifyAddr2").focus();	
	} else{
		$.ajax({
			url: '/furniture/profile/updateMember',
			type: 'post',
			data: {'id': $('#id').val(),
				   'name': $('#mypagePrivateModifyName').val(),
				   'bir_yy': $('#mypagePrivateModifyBir_yy').val(),
				   'bir_mm': $('.mypagePrivateModifyBir_mm').val(),
				   'bir_dd': $('#mypagePrivateModifyBir_dd').val(),
				   'zipcode': $('#mypagePrivateModifyZipcode').val(),
				   'addr1': $('#mypagePrivateModifyAddr1').val(),
				   'addr2': $('#mypagePrivateModifyAddr2').val(),
			},
			success: function(){
				swal({
		             title: "성공!",
		             text: "회원정보가 업데이트되었습니다.", 
		             type: "success"
		          }).then(function(){
		             window.location = '/furniture/profile/profile';
		          });
			},
			error: function(err){
				console.log(err);
				alert('실패');
			}
		}); //ajax
		
		$('#mypageBirthDiv').css('font-size','10pt');
		return false;
	} //if
	
});

//------------------------------------------------------------
//연락처 수정 버튼 클릭시
$('#mypageContactModifyOpenBtn').click(function(){
	$.ajax({
		url: '/furniture/profile/getMember',
		type: 'post',
		data: 'id=' +$('#id').val(),
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			$('#mypageContactModifyPhone').attr('value', data.phone);
		},
		error: function(err){
			console.log(err);
			alert('실패');
		}
	}); //ajax
});

//------------------------------------------------------------
//연락처 저장 버튼 클릭시
$('#mypageContactModifyBtn').click(function(){
	var phone = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
	
	$('#mypagePhoneDiv').empty();
	
	if($('#mypageContactModifyPhone').val()==''){
		$('#mypagePhoneDiv').text('휴대폰번호를 입력해주시기 바랍니다');
	} else if(!phone.test($("#mypageContactModifyPhone").val())) {
	    document.getElementById("mypagePhoneDiv").innerText = "잘못된 휴대폰번호를 입력하셨습니다";
	} else{
		$.ajax({
			url: '/furniture/profile/updateContact',
			type: 'post',
			data: {'id': $('#id').val(),
				   'phone': $('#mypageContactModifyPhone').val(),
			},
			success: function(){
				swal({
		             title: "성공!",
		             text: "회원정보가 업데이트되었습니다.", 
		             type: "success"
		          }).then(function(){
		             window.location = '/furniture/profile/profile';
		          });
			},
			error: function(err){
				console.log(err);
				alert('실패');
			}
		}); //ajax
	} //if
	
});

//------------------------------------------------------------
//비밀번호 수정 버튼 클릭시
$('#mypagePrivateModifyOpenBtn').click(function(){
	$.ajax({
		url: '/furniture/profile/getMember',
		type: 'post',
		data: 'id=' +$('#id').val(),
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			$('#mypagePasswordModifyPassword').attr('value', data.password);
		},
		error: function(err){
			console.log(err);
			alert('실패');
		}
	}); //ajax
});

//------------------------------------------------------------
//비밀번호 저장 버튼 클릭시
$('#mypagePasswordModifyBtn').click(function(){
	var pwd = $("#mypagePasswordModifyCurrentPassword").val();
	var newPwd = $("#mypagePasswordModifyNewPassword").val();
	var checkPwd = $("#mypagePasswordModifyCheckPassword").val();
	var num = newPwd.search(/[0-9]/g);
	var eng = newPwd.search(/[a-z]/ig);
	var eng2 = newPwd.search(/[A-Z]/ig);
	var spe = newPwd.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
	
	$('#mypagePasswordDiv').empty();
	
	if(pwd == ''){
		$('#mypagePasswordDiv').text('비밀번호를 입력해주시기 바랍니다');
	} else {
		$.ajax({
			url: '/furniture/profile/getMember',
			type: 'post',
			data: 'id=' +$('#id').val(),
			dataType: 'json',
			success: function(data){
				//alert(JSON.stringify(data));
				if(pwd != data.password){
					$('#mypagePasswordDiv').text('현재 비밀번호를 확인해주시기 바랍니다');
				}
			},
			error: function(err){
				console.log(err);
				alert('실패');
			}
		}); //ajax
	}
	
	
	if(newPwd == '') {
		document.getElementById("mypagePasswordDiv").innerText = "새로운 비밀번호를 입력해주세요.";
	} else if(newPwd.length < 8 || newPwd.length > 12){
		document.getElementById("mypagePasswordDiv").innerText = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
	} else if(checkPwd == '') {
		document.getElementById("mypagePasswordDiv").innerText = "비밀번호 재확인을 위해 비밀번호를 다시 입력해주세요.";
	} else if(newPwd.search(/\s/) != -1){
		document.getElementById("mypagePasswordDiv").innerText = "비밀번호는 공백 없이 입력해주세요.";
	} else if(num < 0 || eng < 0 || eng2 < 0 || spe < 0){
		document.getElementById("mypagePasswordDiv").innerText = "영문 대 소문자, 숫자, 특수문자를 혼합하여 입력해주세요.";
	} else if(newPwd != checkPwd){ 
	    document.getElementById("mypagePasswordDiv").innerText = "비밀번호가 동일하지 않습니다.";
	} else{
		$.ajax({
			url: '/furniture/profile/updatePassword',
			type: 'post',
			data: {'id': $('#id').val(),
				   'password': newPwd,
			},
			success: function(){
				swal({
		             title: "성공!",
		             text: "회원정보가 업데이트되었습니다.", 
		             type: "success"
		          }).then(function(){
		             window.location = '/furniture/profile/profile';
		          });
			},
			error: function(err){
				console.log(err);
				alert('실패');
			}
		}); //ajax
	} //if
	
});

//------------------------------------------------------------
//우편번호찾기 버튼 클릭시
function execDaumPostcode() {
	//alert("aaa");
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
            document.getElementById('mypagePrivateModifyZipcode').value = data.zonecode;
            document.getElementById('mypagePrivateModifyAddr1').value = addr;
            // 커서를 상세주소 필드로 이동한다.
            //document.getElementById("addr2").focus();
        }
    }).open();
}
//-----------------------------------------------------------------------------------------------------
//회원 탈퇴
$('#mypageWithdrawalBtn').click(function(){
	
	var confirmResult = confirm("정말 탈퇴하시겠습니까?");
	if(confirmResult == true)
	{
		$.ajax({
			url: '/furniture/profile/memberDelete',
			type: 'post',
			data: 'id=' +$('#id').val(),
			success: function(){
				swal({
		             title: "회원탈퇴가 완료되었습니다."
		          }).then(function(){
		             window.location = '/furniture/index.jsp';
		          });
			},
			error: function(err){
				console.log(err);
				alert('실패');
			}
		}); //ajax
	}
		
});
