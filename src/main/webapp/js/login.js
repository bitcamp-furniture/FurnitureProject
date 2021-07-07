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
                if(data === 'success') {
                    //location.href='/furniture/index.jsp';
                    var loginValue = document.getElementById('login').value;
                    if (loginValue === 1){
                        location.href="/furniture/profile/profile";

                    } else if (loginValue === 0) {
                        location.href="/furniture/index.jsp";
                    }

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
//enter
$("#password").keydown(function(key) {
    if (key.keyCode == 13) {
        //alert("엔터키를 눌렀습니다.");

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
                    //alert(data);
                    if(data == 'success') {
                        var loginValue = document.getElementById('login').value;
                        if (loginValue == 1){
                            location.href="/furniture/profile/profile";

                        } else if (loginValue == 0) {
                            location.href="/furniture/index.jsp";
                        }
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
    }
});

$("#email").keydown(function(key) {
    if (key.keyCode == 13) {
        //alert("엔터키를 눌렀습니다.");

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
                    //alert(data);
                    if(data == 'success') {
                        var loginValue = document.getElementById('login').value;
                        if (loginValue == 1){
                            location.href="/furniture/profile/profile";

                        } else if (loginValue == 0) {
                            location.href="/furniture/index.jsp";
                        }
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
    }
});

//------------------------------------------------------
//카카오톡 로그인
$('#kakaoImg').click(function(){
    //alert('click');
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
    const userInputId = getCookie("userInputId");
    $("input[name='email']").val(userInputId);

    if($("input[name='email']").val() !== ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }

    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
            const userInputId = $("input[name='email']").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("userInputId");
        }
    });

    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("input[name='email']").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            const userInputId = $("input[name='email']").val();
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
    if(start !== -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end === -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}
//---------------------------------------------------------------------------------
//회원가입 버튼
$('#writeBtn').click(function(){
    location.href = '/furniture/member/joinPage';
});