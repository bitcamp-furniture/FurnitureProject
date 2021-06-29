<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>이케즈케</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="robots" content="noindex">
	
	<link rel="stylesheet" href="/furniture/css/dashboard.css" type="text/css">
	<!-- <link rel="stylesheet" href="/furniture/css/bootstrap.admin.css" type="text/css"> -->
	<link rel="stylesheet" href="/furniture/css/bootstrap.ad.css" type="text/css">

	</script>
<!-- <style>
        .flex-box {
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
        }
        .flex-box .ma-item {
            -ms-flex: 1;
            -webkit-flex: 1;
            flex: 1;
            margin-bottom: 10px;
        }
        .card {
            margin-bottom: 10px;
        }
        .flex-box .ma-item .card {
            height: 100%;
            margin-bottom: 0;
        }
        .dashboard_main .area_wrap {
            margin: 24px -10px 0;
        }
        .dashboard_main .section-body {
            width: calc(100% - 310px);
            margin-top: 0;
        }
        .right-menu-fixed {
            position : static;
            margin-top: 0;
        }
        .section-body .row {
            margin-left: 5px;
            margin-right: 5px;
        }
        .section-body .col-xs-1,.section-body .col-sm-1,.section-body .col-md-1,.section-body .col-lg-1,.section-body .col-xs-2,.section-body .col-sm-2,.section-body .col-md-2,.section-body .col-lg-2,.section-body .col-xs-3,.section-body .col-sm-3,.section-body .col-md-3,.section-body .col-lg-3,.section-body .col-xs-4,.section-body .col-sm-4,.section-body .col-md-4,.section-body .col-lg-4,.section-body .col-xs-5,.section-body .col-sm-5,.section-body .col-md-5,.section-body .col-lg-5,.section-body .col-xs-6,.section-body .col-sm-6,.section-body .col-md-6,.section-body .col-lg-6,.section-body .col-xs-7,.section-body .col-sm-7,.section-body .col-md-7,.section-body  .col-lg-7,.section-body .col-xs-8,.section-body .col-sm-8,.section-body .col-md-8,.section-body .col-lg-8,.section-body .col-xs-9,.section-body .col-sm-9,.section-body .col-md-9, .section-body .col-lg-9,.section-body .col-xs-10,.section-body .col-sm-10,.section-body .col-md-10,.section-body .col-lg-10,.section-body .col-xs-11,.section-body .col-sm-11,.section-body .col-md-11,.section-body .col-lg-11,.section-body .col-xs-12,.section-body .col-sm-12,.section-body .col-md-12,.section-body .col-lg-12 {
            padding-left: 5px;
            padding-right: 5px;
        }
        .section-body .row:last-child .ma-item {
            margin-bottom: 0;
        }
        .item .dashboard_banner_wrap .card-body {
            padding: 20px 24px 30px;
        }
		.dashboard_banner_wrap .sellmate-body{
			position: relative;
			top: -8px;
		}
        @media (max-width: 991px) {
            section {
                padding: 24px 15px;
            }
            .dashboard_main .section-body {
                width: 100%;
            }
            .right-menu-fixed {
                padding: 0 10px;
            }
            .dashboard_banner_wrap {
                background-size: 300px !important;
                background-position: top right !important;
            }
            .dashboard_banner_wrap.adbot{
                background-size: 300px !important;
                background-position: 50% 50% !important;
                background-color: #20202D !important;
            }
            .dashboard_banner_wrap.kakaosync {
                background-color: #FFDA00 !important;
            }
			.dashboard_banner_wrap.sellmate-promotion{
				background-size: 100% !important;
			}
			#dashboard_banner_wrap_naver{
				background-color: #03cf5d !important;
			}
			.dashboard_banner_wrap .sellmate-body{
				position: relative;
				top: -10px;
			}
        }
        @media (max-width: 768px) {
            .flex-box {
                display: block;
            }
            .section-body .row:last-child .ma-item {
                margin-bottom: 10px;
            }
            .dashboard_main .section-body .card-body.today-table {
                padding: 16px;
            }
            .dashboard_main .area_wrap .float_r {
                float: right;
            }
        }
	</style> -->
	
</head>	
<body class="menubar-hoverable header-fixed menubar-pin">
	<!-- content 상단 바 -->
	<header class="top_header">
		<div class="headerbar">
			<div class="headerbar-left">
				<ul class="header-nav header-nav-options">
					<li class="hidden-lg hidden-md">
						<a class="btn btn-icon-toggle menubar-toggle" data-toggle="menubar" href="javascript:void(0);">
							<i class="btl bt-bars"></i>
						</a>
					</li>
					<!-- content 상단 -->
					<li class="header-nav-brand">
						<div class="brand-holder">
							<span class="text-gray">IKEZKE</span>
						</div>
					</li>
				</ul>
			</div>
				<!-- content 상단 우측 나가기 버튼 -->
				<div class="headerbar-right">
					<ul class="header-nav header-nav-options">
						<li>
							<a class="btn btn-secondary hidden-xs" href="/furniture/index.jsp" style="width: 115px;">나가기</a>
							<a class="btn btn-bright hidden-sm hidden-md hidden-lg" href="/furniture/index.jsp" style="padding:4px 6px;"><i class="btl bt-times vertical-middle"></i></a>
						</li>
					</ul>
				</div>
			</div>
	</header>
	
	
	
	
	
	<!-- content start -->
	<div id="content" class="dashboard_main">
		<section>
			<div class="clearfix area_wrap">
				<div class="section-body float_l">
					<div id="section">
					      <c:if test="${empty display }">
					         <jsp:include page="/admin/dashBoard.jsp" />
					      </c:if>
					      <c:if test="${not empty display }">
					         <jsp:include page="${display }" />
					      </c:if>
   						</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
	

<!-- 메뉴바 -->
<div id="menubar" class="menubar">
	<div class="menubar-scroll-panel">
		<!-- 사이드 메뉴 -->
		<div id="nav">
			<ul class="menu" class="gui-controls">
				<li class='spacer'></li>
				<li class='top-menu'>
						<div>
							<span>사이트 관리</span>
						</div>
				</li>
			<!-- 대시보드 -->
			<li class='  ' data-title='dashboard'>
                <a href="/furniture/admin/dashBoard.jsp">
					<span class='title title_controls'>대시보드</span>
				</a>
			</li>
			<!-- 사용자 관리 -->
			<li class='' data-title='member'>
				<a href="#"  class="sidebar-nav-menu">
					<span class='title title_controls'>사용자 관리</span>
				</a>
				<ul class="sub">
					<li class='' data-title='member_list'>
						<a href='/admin/member/list'   >
							<span class='title title_controls'>사용자 목록</span>
						</a>
					</li>
					<li class='' data-title='member_msg'>
						<a href='/admin/member/send'   >
							<span class='title title_controls'>메세지 보내기</span>
						</a>
					</li>
					<li class='' data-title='member_permission'>
						<a href='/admin/member/permission'   >
							<span class='title title_controls'>운영진 설정</span>
						</a>
					</li>
					<li class='' data-title='member_mail'>
						<a href='/admin/member/mail'   >
							<span class='title title_controls'>메일 발송 설정</span>
						</a>
					</li>
					<li class='' data-title='member_sms'>
						<a href='/admin/member/sms'   >
							<span class='title title_controls'>SMS/알림톡 설정</span>
						</a>
					</li>
				</ul>
			</li>
				
			</ul>												
		</div>
	</div>
</div>
<!-- 로고 -->
<div class="fold_area tabled animate" style="padding-left:24px;">
	<div class="table-cell vertical-middle" style="padding-right:45px;">
		<!-- <a href="/admin/" class="logo_icon_menu"> -->
			<img src="/furniture/img/logo.png" width="82"><!-- </a> -->
	</div>
	<a class="_tooltip_btn side_bar_btn" href="javascript:" role="button" id="toggle_button">
		<span class="fold_button left" data-original-title="사이드바 접어두기" data-toggle="tooltip" data-placement="bottom">
			<i class="icons fa fa-chevron-left" style="opacity: 0.6"></i>
			<i class="icons fa fa-chevron-left"></i>
		</span>
		<span class="fold_button right" data-original-title="사이드바 펼쳐두기" data-toggle="tooltip" data-placement="bottom">
			<i class="icons fa fa-chevron-right"></i>
			<i class="icons fa fa-chevron-right" style="opacity: 0.6"></i>
		</span>
	</a>
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#nav ul.sub").hide();
		$("#nav ul.menu li").click(function(){
		$("ul",this).slideToggle("fast");
	});
});
</script>
</body>
</html>