<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="robots" content="noindex">
	
	<link rel="stylesheet" href="/furniture/css/dashboard.css" type="text/css">
	<link rel="stylesheet" href="/furniture/css/bootstrap.admin.css" type="text/css">

	<script src="/js/localize/KR_KRW_currency.js?1622582916"></script>
	<script src="/js/localize/admin/KR.js?1622582927"></script>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/bootstrap.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/jquery-ui.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/ii.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/db-icons.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/material-design-iconic-font.min.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/bootstrap-datepicker.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/black-tie.css?1608189400"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/simple-line-icons.css?1608179394"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/preloader.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/owl.carousel2.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/slick.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/animate.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/nprogress.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/trackpad-scroll-emulator.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/font-awesome.min.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/font-awesome5.min.css?1608189400"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/froala_editor.pkgd.css?1607673118"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/froala_style.min.css?1607673118"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/third_party/embedly.min.css?1607673119"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/froala/custom-theme-v3.css?1614049551"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/colorpicker.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/codemirror.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/bootstrap-spinner.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/chosen.css?1617331870"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/fullcalendar.min.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/morris.core.css?1577682282"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/lightgallery.min.css?1596596378"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/site/admin/admin.css?1590627710"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/site/admin/toastr.css?1593569516"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/site/alarm_menu.css?1590627710"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/site/admin/bootstrap-theme-dashboard.css?1618365623"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/site/admin/dashboard.css?1622512196"/>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/site/admin/select2.css?1590627710"/>

	</script><script>var IS_ANDROID_APP = 'N';

	</script></head><body class="menubar-hoverable header-fixed menubar-pin">
<!-- BEGIN BASE-->
<div id="dashboard_loader" class="se-pre-con" style="display: none">
	<div class="page-loader-spinner">
		<div class="double-bounce1"></div>
		<div class="double-bounce2"></div>
	</div>
	<div class="progress">
		<div class="progress-bar" role="progressbar" style="width:70%">
			<label>70%</label>
		</div>
	</div>
</div>
<div id="base">
<!-- END OFFCANVAS LEFT --><script type="text/javascript">
	$(function(){
		SADMIN_MENU_ALERT.openAlert();
	});
</script>	<style>
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
	</style>
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
				
				
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
<!-- BEGIN MENUBAR-->
<button type="button" class="hidden-lg hidden-md toggle-btn" data-dismiss="menubar">
	<span class="sr-only">Toggle navigation</span>
	<i class="btl bt-times"></i>
</button>
<!-- 메뉴바 -->
<div id="menubar">
	<div class="menubar-scroll-panel">
		<div class="tabled full-width">
			<a href="javascript:" class="holder global_icon_menu dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
				<!-- 이케즈케 로고 -->
				<div style="position: absolute; left: 22px; top: 0; line-height: 36px;">
					<img src="/common/img/unit_kr.png" width="20" height="20">
				</div>
				<div class="brand-holder">
					<span class="title_controls">IKEZKE</span>
				</div>
			</a>
				<!-- 이케즈케 미니 팝업 -->
				<ul class="dropdown-menu global_setting animation-dock menu-card-styling">
					<li class="holder ">
						<a href="/furniture/">
							<div class="tabled">
								<div class="table-cell vertical-middle domain">
									<div class="inline-blocked">
										<span class="domain_name">IKEZKE</span>
									</div>
									<div class="text-gray-bright text-12">http://furniture/</div>
								</div>
							</div>
						</a>
						<div class="tools">
						</div>
					</li>
				</li></ul></div>
	<div id="nav">
		<ul id="menu"><!-- 메인메뉴 -->

			<li class='spacer'></li>
			<li class='top-menu'>
				<a href='javascript:;' onclick='DASHBOARD.openSiteManagementDialog(this);'>
					<span>사이트 관리</span>
					<i class='btm bt-plus-circle'></i>
				</a>
			</li>
			<li class='  ' data-title='dashboard'>
				<a href='/admin//'  class=" active"  >
					<div class="gui-icon">
						<i class="db-dashboard"></i>
					</div>
					<span class='title title_controls'>대시보드</span>
				</a>
			</li>
			<li class='gui-folder' data-title='member'>
				<a href='#'  class="sidebar-nav-menu">
					<div class="gui-icon">
						<i class="db-user"></i>
					</div>
					<span class='title title_controls'>사용자 관리</span>
				</a>
				<ul>
				<li class='  ' data-title='member_list'>
					<a href='/admin/member/list'   >
						<span class='title title_controls'>사용자 목록</span>
					</a>
				</li>
				<li class='  ' data-title='member_msg'>
					<a href='/admin/member/send'   >
						<span class='title title_controls'>메세지 보내기</span>
					</a>
				</li>
				<li class='  ' data-title='member_permission'>
					<a href='/admin/member/permission'   >
						<span class='title title_controls'>운영진 설정</span>
					</a>
				</li>
				<li class='  ' data-title='member_mail'>
					<a href='/admin/member/mail'   >
						<span class='title title_controls'>메일 발송 설정</span>
					</a>
				</li>
				<li class='  ' data-title='member_sms'>
					<a href='/admin/member/sms'   >
						<span class='title title_controls'>SMS/알림톡 설정</span>
					</a>
				</li>
			</ul>
		</li>
	</ul>
</div>
</div>
 <!-- 왼쪽 사이드 메뉴 스크립트 -->
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