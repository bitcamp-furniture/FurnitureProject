<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="/furniture/css/login.css" type="text/css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

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
            <div class="col-md-4">
                <hr style="border: solid 2px;">
            </div>
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
                            <input type="text" class="form-control" id="email" name="email" placeholder="아이디(이메일)">
                        </div>
                        <div id="emailDiv"></div>

                        <div class="form-group">
                            <input type="password" class="form-control" id="password" name="password"
                                   placeholder="비밀번호">
                        </div>
                        <div id="pwdDiv"></div>
                    </div>
                    <div class="col-md-2"></div>
                </div>

                <!-- 로그인 버튼 -->
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                        <button id="loginBtn" class="loginBtn" type="button">로그인 하기</button>
                        <br>
                        <input type="checkbox" id="idSaveCheck" style="margin: 2% 0 5% 38%;"> 아이디 저장하기
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
                        <button type="button" id="writeBtn" class="btn btn-info btn-block btn-round">계정이 없으신가요? 회원가입하기
                        </button>
                    </div>
                    <div class="col-md-2"></div>
                </div>

                <!-- 아이디찾기 -->
                <div class="searchDiv">
                    <div class="col-md-2"></div>
                    <div class="col-md-7">
                        <div id="searchIdDiv" class="col-lg-6"><a href="/furniture/member/findForm?type=email">아이디(이메일)
                            찾기</a></div>
                        <div id="searchPwdDiv" class="col-lg-5"><a href="/furniture/member/findForm?type=password">비밀번호
                            찾기</a></div>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </form>
        </div>
    </div>

</div>

<!-- 카카오 api -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="../js/login.js"></script>
</body>
</html>