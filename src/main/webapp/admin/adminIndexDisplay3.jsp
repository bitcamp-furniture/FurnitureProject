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
		<ul id="main-menu" class="gui-controls">

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
				<a href='/admin/member'  class="sidebar-nav-menu">
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
				<li class=' gui-folder ' data-title='shopping'>
						<a href='/admin/shopping'  class="sidebar-nav-menu"  onclick="return false;"  >
							<div class="gui-icon">
								<i class="db-shopping-bag"></i>
							</div>
							<span class='title title_controls'>쇼핑</span>
						</a>
					<ul>
						<li class='  ' data-title='shopping_product'>
							<a href='/admin/shopping/product'   >
								<span class='title title_controls'>상품관리</span>
							</a>
							</li>
						<li class='  ' data-title='shopping_order'>
							<a href='/admin/shopping/order'   >
								<span class='title title_controls'>주문관리</span>
							</a>
						</li>
						<li class='  ' data-title='shopping_cancel'>
							<a href='/admin/shopping/cancel'   >
								<span class='title title_controls'>취소관리</span>
							</a>
						</li>
						<li class='  ' data-title='shopping_return'>
							<a href='/admin/shopping/return'   >
								<span class='title title_controls'>반품관리</span>
							</a>
						</li>
						<li class='  ' data-title='shopping_exchange'>
							<a href='/admin/shopping/exchange'   >
								<span class='title title_controls'>교환관리</span>
							</a>
						</li>
						<li class='  ' data-title='shopping_review'>
							<a href='/admin/shopping/review'   >
								<span class='title title_controls'>구매평 관리</span>
							</a>
						</li>
						<li class='  ' data-title='shopping_answers'>
							<a href='/admin/shopping/answers'   >
								<span class='title title_controls'>문의관리</span>
							</a>
						</li>
						<li class='  ' data-title='member_mileage'>
							<a href='/admin/shopping/mileage'   >
								<span class='title title_controls'>적립금 관리</span>
							</a>
							</li>
						<li class='  ' data-title='shopping_coupon'>
							<a href='/admin/shopping/coupon'   >
								<span class='title title_controls'>쿠폰</span>
							</a>
						</li>
						<li class='  ' data-title='shopping_naver'>
							<a href='/admin/shopping/naver'   >
								<span class='title title_controls'>네이버/카카오 쇼핑</span>
							</a>
						</li>
						<li class='  ' data-title='shopping_config'>
							<a href='/admin/shopping/config'   >
								<span class='title title_controls'>쇼핑 환경설정</span>
							</a>
						</li>
					</ul>
					</li>
				<li class=' gui-folder animated animated-hidden' data-title='booking'>
					<a href='/admin/booking'  class="sidebar-nav-menu"  onclick="return false;"  >
						<div class="gui-icon"><i class="db-calendar"></i></div>
						<span class='title title_controls'>예약</span>
					</a>
				<ul>
					<li class='  ' data-title='booking_product'>
						<a href='/admin/booking/product'   >
							<span class='title title_controls'>객실/사이트 관리</span>
						</a>
					</li>
					<li class='  ' data-title='booking_order_cal'>
						<a href='/admin/booking/order_cal'   >
							<span class='title title_controls'>예약 현황 관리</span>
						</a>
					</li>
					<li class='  ' data-title='booking_order'>
						<a href='/admin/booking/order'   >
							<span class='title title_controls'>예약 신청 관리</span>
						</a>
					</li>
					<li class='  ' data-title='booking_review'>
						<a href='/admin/booking/review'   >
							<span class='title title_controls'>후기 관리</span>
						</a>
					</li>
					<li class='  ' data-title='booking_answers'>
						<a href='/admin/booking/answers'   >
							<span class='title title_controls'>문의관리</span>
						</a>
					</li>
					<li class='  ' data-title='booking_option'>
						<a href='/admin/booking/option'   >
							<span class='title title_controls'>옵션 관리</span>
						</a>
					</li>
					<li class='  ' data-title='booking_season'>
						<a href='/admin/booking/season'   >
							<span class='title title_controls'>성수기/휴일 관리</span>
						</a>
					</li>
					<li class='  ' data-title='booking_config'>
						<a href='/admin/booking/config'   >
							<span class='title title_controls'>예약 설정</span>
						</a>
					</li>
				</ul>
				</li>
				<li class=' gui-folder ' data-title='contents'>
					<a href='/admin/contents'  class="sidebar-nav-menu"  onclick="return false;"  >
						<div class="gui-icon">
						<i class="db-pencil"></i>
						</div>
						<span class='title title_controls'>컨텐츠 관리</span>
					</a>
				<ul>
				<li class='  ' data-title='contents_post'>
					<a href='/admin/contents/post'   >
						<span class='title title_controls'>게시물 관리</span>
					</a>
				</li>
				<li class='  ' data-title='contents_comment'>
					<a href='/admin/contents/comment'   >
						<span class='title title_controls'>댓글 관리</span>
					</a>
				</li>
				<li class='  ' data-title='contents_form'>
					<a href='/admin/contents/form'   >
						<span class='title title_controls'>입력폼 관리</span>
					</a>
				</li>
				<li class='  ' data-title='contents_map'>
					<a href='/admin/contents/map'   >
						<span class='title title_controls'>지도 관리</span>
					</a>
				</li>
				<li class='  ' data-title='contents_calendar'>
					<a href='/admin/contents/calendar'   >
						<span class='title title_controls'>일정 관리</span>
					</a>
				</li>
				<li class='  ' data-title='contents_gallery'>
					<a href='/admin/contents/gallery'   >
						<span class='title title_controls'>갤러리 관리</span>
					</a>
				</li>
				<li class='  ' data-title='contents_report'>
					<a href='/admin/contents/report'   >
						<span class='title title_controls'>신고 관리</span>
					</a>
				</li>
				</ul>
				</li>
				<li class=' gui-folder ' data-title='marketing'>
					<a href='/admin/marketing'  class="sidebar-nav-menu"  onclick="return false;"  >
						<div class="gui-icon">
							<i class="db-megaphone"></i>
						</div>
						<span class='title title_controls'>마케팅 관리</span>
						<span class='badge_icon' style='background-color: #00bb73;'>N</span>
					</a>
					<ul>
						<li class='  ' data-title='marketing_adbot'>
							<a href='https://adbot.net/event'    target="_blank" >
								<span class='title title_controls'>통합 광고 관리(아임웹 애드)</span>
								<span class='badge_icon' style='background-color: #00bb73;'>N</span>
							</a>
						</li>
						<li class='  ' data-title='marketing_trace'>
							<a href='/admin/marketing/trace'   >
								<span class='title title_controls'>전환추적/리타게팅 관리</span>
							</a>
						</li>
						<li class='  ' data-title='marketing_facebook_fbe'>
							<a href='/admin/marketing/facebook_fbe'   >
								<span class='title title_controls'>페이스북 마케팅(FBE)</span>
							</a>
						</li>
						<li class='  ' data-title='marketing_acecounter'>
							<a href='/admin/marketing/ace_counter'   >
								<span class='title title_controls'>에이스카운터</span>
							</a>
						</li>
						</ul>
						</li>
						<li class=' gui-folder ' data-title='app'>
							<a href='/admin/app'  class="sidebar-nav-menu"  onclick="return false;"  >
								<div class="gui-icon">
									<i class="db-mobile"></i>
								</div>
								<span class='title title_controls'>App 신청 및 관리</span>
							</a>
							<ul>
								<li class='  ' data-title='app_setting'>
									<a href='/admin/app/setting'   >
										<span class='title title_controls'>안내 및 신청</span>
									</a>
								</li>
								<li class='  ' data-title='app_android'>
									<a href='/admin/app/android'   >
										<span class='title title_controls'>Android 관리</span>
									</a>
								</li>
								<li class='  ' data-title='app_ios'>
									<a href='/admin/app/ios'   >
										<span class='title title_controls'>iOS 관리</span>
									</a>
								</li>
							</ul>
							</li>
							<li class=' gui-folder ' data-title='stat'>
								<a href='/admin/stat'  class="sidebar-nav-menu"  onclick="return false;"  >
									<div class="gui-icon">
										<i class="db-status-up"></i>
									</div>
									<span class='title title_controls'>통계</span>
								</a>
							<ul>
							<li class='  ' data-title='stat_summary'>
								<a href='/admin/stat/summary'   >
									<span class='title title_controls'>개요</span>
								</a>
							</li>
							<li class='  ' data-title='stat_analytics'>
								<a href='/admin/stat/analytics'   >
									<span class='title title_controls'>기간별 분석</span>
								</a>
							</li>
							<li class='  ' data-title='stat_shopping'>
								<a href='/admin/stat/shopping'   >
									<span class='title title_controls'>매출</span>
									<span class='badge_icon' style='background-color: #00bb73;'>Beta</span>
								</a>
							</li>
							<li class='  ' data-title='stat_feedback'>
								<a href='/admin/stat/feedback'   >
									<span class='title title_controls'>컨텐츠 반응</span>
								</a>
							</li>
							<li class='  ' data-title='stat_visitor'>
								<a href='/admin/stat/visitor'   >
									<span class='title title_controls'>방문자 통계</span>
								</a>
							</li>
							<li class='  ' data-title='stat_site'>
								<a href='/admin/stat/site'   >
									<span class='title title_controls'>유입 사이트</span>
								</a>
							</li>
							<li class='  ' data-title='stat_keyword'>
								<a href='/admin/stat/keyword'   >
									<span class='title title_controls'>유입 검색어</span>
								</a>
							</li>
							<li class='  ' data-title='stat_page'>
								<a href='/admin/stat/page'   >
									<span class='title title_controls'>많이 방문한 페이지</span>
								</a>
							</li>
							<li class='  ' data-title='stat_storage'>
								<a href='/admin/stat/storage'   >
									<span class='title title_controls'>저장공간</span>
								</a>
							</li>
							<li class='  ' data-title='stat_traffic'>
								<a href='/admin/stat/traffic'   >
									<span class='title title_controls'>트래픽</span>
								</a>
							</li>
							</ul>
							</li>
							<li class='  ' data-title='payment'>
								<a href='/admin/payment'   >
									<div class="gui-icon">
										<i class="icon-rocket"></i>
									</div>
									<span class='title title_controls'>결제/부가서비스</span>
								</a>
							</li>
							<li class=' gui-folder ' data-title='config'>
								<a href='/admin/config'  class="sidebar-nav-menu"  onclick="return false;"  >
									<div class="gui-icon">
										<i class="db-settings"></i>
									</div>
									<span class='title title_controls'>환경설정</span>
								</a>
									<ul>
									<li class='  ' data-title='config_default'>
										<a href='/admin/config/default'   >
											<span class='title title_controls'>기본 설정</span>
										</a>
									</li>
									<li class='  ' data-title='config_localize'>
										<a href='/admin/config/localize'   >
											<span class='title title_controls'>언어/지역/통화</span>
										</a>
									</li>
									<li class='  ' data-title='config_pg'>
										<a href='/admin/config/pg'   >
											<span class='title title_controls'>전자결제(PG) 설정</span>
										</a>
									</li>
									<li class='  ' data-title='config_domain'>
										<a href='/admin/config/domain'   >
											<span class='title title_controls'>도메인 구입 및 설정</span>
										</a>
									</li>
									<li class='  ' data-title='config_ssl'>
										<a href='/admin/config/ssl'   >
											<span class='title title_controls'>SSL(보안서버) 구입 및 설정</span>
										</a>
									</li>
									<li class='  ' data-title='config_security'>
										<a href='/admin/config/security'   >
											<span class='title title_controls'>보안 및 개인정보 보호</span>
										</a>
									</li>
									<li class='  ' data-title='config_membership'>
										<a href='/admin/config/membership'   >
											<span class='title title_controls'>가입 및 그룹 설정</span>
										</a>
									</li>
									<li class='  ' data-title='config_seo'>
										<a href='/admin/config/seo'   >
											<span class='title title_controls'>SEO, 헤더설정</span>
										</a>
									</li>
									<li class='  ' data-title='config_etc'>
										<a href='/admin/config/etc'   >
											<span class='title title_controls'>약관 설정</span>
										</a>
									</li>
									<li class='  ' data-title='config_popup'>
										<a href='/admin/config/popup'   >
											<span class='title title_controls'>팝업/배너 관리</span>
										</a>
									</li>
									<li class='  ' data-title='config_adult'>
										<a href='/admin/config/adult'   >
											<span class='title title_controls'>본인인증/성인인증</span>
										</a>
									</li>
									<li class='  ' data-title='config_oauth'>
										<a href='/admin/config/oauth'   >
											<span class='title title_controls'>소셜 로그인 / API 설정</span>
										</a>
									</li>
									<li class='  ' data-title='config_chat'>
										<a href='/admin/config/chat'   >
											<span class='title title_controls'>실시간 상담 설정</span>
										</a>
									</li>
									<li class='  ' data-title='config_find_designer'>
										<a href='/admin/config/find_designer'   >
											<span class='title title_controls'>디자이너/리셀러 찾기</span>
										</a>
									</li>
									<li class='  ' data-title='config_api_v2'>
										<a href='/admin/config/rest_v2'   >
											<span class='title title_controls'>외부 서비스 연동 (API)</span>
										</a>
									</li>
									</ul>
									</li>
									<li class='spacer'></li>
									<li class='top-menu'>
										<div>
											<span>리소스</span>
										</div>
									</li>
									<li class='  ' data-title='support'>
										<a href='//imweb.me/customer'    target="_blank" >
											<div class="gui-icon">
												<i class="db-comments"></i>
											</div>
											<span class='title title_controls'>고객지원</span>
										</a>
									</li>
									<li class=' gui-folder ' data-title='campus'>
										<a href='edu'  class="sidebar-nav-menu"  onclick="return false;"  >
											<div class="gui-icon">
												<i class="db-graduation-cap"></i>
											</div>
											<span class='title title_controls'>아임웹 교육</span>
										</a>
										<ul>
											<li class='  ' data-title='campus_edu'>
												<a href='https://imweb.me/edu'    target="_blank" >
													<span class='title title_controls'>교육 일정/신청</span>
												</a>
											</li>
											<li class='  ' data-title='campus_video'>
												<a href='https://imweb.me/video_lecture'    target="_blank" >
													<span class='title title_controls'>동영상 강의</span>
												</a>
											</li>
										</ul>
									</li>
									<li class='  ' data-title='consulting_design'>
										<a href='https://imweb.me/find_designer'    target="_blank" >
											<div class="gui-icon">
												<i class="db-glasses"></i>
											</div>
											<span class='title title_controls'>디자이너 찾기</span>
										</a>
									</li>
									</ul>
										<div class="height-1"></div>
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

<script>

	$(function(){
		var $body = $('body');
		var $btn = $('#toggle_button');
		var sidebar_mini_class = 'sidebar-mini';
		var current_sidebar_mini_class = "";
		var $menubar_toggle = $body.find('#header .menubar-toggle');
		var $close_btn = $('._close_btn');
		$btn.off('click touch').on('click touch', function(){
			if ( $body.hasClass(sidebar_mini_class) ) {
				setSideMenu('show');
			} else {
				setSideMenu('hide');
			}
		});
		if(current_sidebar_mini_class === sidebar_mini_class) $body.addClass(sidebar_mini_class);
		else $body.removeClass(sidebar_mini_class);
		function setSideMenu(show){
			$.ajax({
				type : 'POST',
				data : {'status' : show},
				url : ('/admin/ajax/inc/set_side_menu.cm'),
				dataType : 'json',
				async : false,
				cache : false,
				success : function(res){
					if(res.msg === "show"){
						$body.removeClass(sidebar_mini_class);
					}else{
						$body.addClass(sidebar_mini_class);
					}
				}
			});
		}
	});

</script>
</div> <!-- END BASE -->

</body>
</html>