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

	<script src="/js/localize/KR_KRW_currency.js?1622582916"></script><script src="/js/localize/admin/KR.js?1622582927"></script>
	<link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/bootstrap.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/jquery-ui.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/ii.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/db-icons.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/material-design-iconic-font.min.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/bootstrap-datepicker.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/black-tie.css?1608189400"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/simple-line-icons.css?1608179394"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/preloader.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/owl.carousel2.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/slick.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/animate.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/nprogress.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/trackpad-scroll-emulator.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/font-awesome.min.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/font-awesome5.min.css?1608189400"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/froala_editor.pkgd.css?1607673118"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/froala_style.min.css?1607673118"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/froala_311/css/third_party/embedly.min.css?1607673119"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/froala/custom-theme-v3.css?1614049551"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/colorpicker.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/codemirror.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/bootstrap-spinner.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/chosen.css?1617331870"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/fullcalendar.min.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/morris.core.css?1577682282"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/lightgallery.min.css?1596596378"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/site/admin/admin.css?1590627710"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/site/admin/toastr.css?1593569516"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/site/alarm_menu.css?1590627710"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/site/admin/bootstrap-theme-dashboard.css?1618365623"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/site/admin/dashboard.css?1622512196"/><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/site/admin/select2.css?1590627710"/><script  src="https://vendor-cdn.imweb.me/js/jquery.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/jquery.browser.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/jquery-ui.min.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/bootstrap.min.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/tinycolor-min.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/common.js?1623626492"></script><script  src="https://vendor-cdn.imweb.me/js/admin_common.js?1613465262"></script><script  src="https://vendor-cdn.imweb.me/js/table_list.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/data.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/owl.carousel2.js?1605658161"></script><script  src="https://vendor-cdn.imweb.me/js/slick.min.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/preloader.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/jquery.lazyload.min.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/jquery.trackpad-scroll-emulator.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/jquery.fileupload.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/nprogress.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/froala_editor.min.js?1608673099"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/align.min.js?1607673165"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/char_counter.min.js?1607673165"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/code_beautifier.min.js?1607673167"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/code_view.min.js?1608643124"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/colors.min.js?1607673167"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/draggable.min.js?1607673168"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/emoticons.min.js?1607673169"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/entities.min.js?1607673170"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/file.min.js?1607673170"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/font_family.min.js?1607673170"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/font_size.min.js?1607673170"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/forms.min.js?1607673170"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/fullscreen.min.js?1607673170"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/image.min.js?1607673172"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/image_manager.min.js?1607673172"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/inline_style.min.js?1607673173"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/line_breaker.min.js?1607673173"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/link.min.js?1607673173"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/lists.min.js?1607673174"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/paragraph_format.min.js?1607673174"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/paragraph_style.min.js?1607673174"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/quote.min.js?1607673174"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/save.min.js?1607673174"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/table.min.js?1607673177"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/url.min.js?1607673177"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/video.min.js?1607673178"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/plugins/line_height.min.js?1607673173"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/third_party/embedly.min.js?1607673192"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/third_party/font_awesome.min.js?1607673192"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/languages/ko.js?1607680617"></script><script  src="https://vendor-cdn.imweb.me/froala_311/js/languages/zh_tw.js?1608685913"></script><script  src="https://vendor-cdn.imweb.me/js/jquery-scrolltofixed-min.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/colorpicker.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/jquery.chosen.js?1619084781"></script><script  src="https://vendor-cdn.imweb.me/js/jquery.timepicker.min.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/jquery.print.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/autolinker.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/ThreeCanvas.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/snow.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/lightgallery-all.min.js?1596595980"></script><script  src="https://vendor-cdn.imweb.me/js/autosize.js?1577682292"></script><link rel="stylesheet" type="text/css"  href="https://vendor-cdn.imweb.me/css/lightgallery.css?1577682282"/><script  src="https://vendor-cdn.imweb.me/js/jquery.nestable.doznut.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/jquery.number.min.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/masonry.pkgd.min.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/Chart.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/jquery.autosize.min.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/codemirror.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/mode/xml/xml.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/mode/javascript/javascript.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/mode/css/css.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/mode/htmlmixed/htmlmixed.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/jquery.select2.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/jquery.select2_ko.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/imagesloaded.pkgd.min.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/jquery.nanoscroller.min.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/html5shiv.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/jquery.validate.js?1621218311"></script><script  src="https://vendor-cdn.imweb.me/js/jquery.inputmask.bundle.min.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/moment-with-locales.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/moment-timezone.js?1581998425"></script><script  src="https://vendor-cdn.imweb.me/js/bootstrap-datepicker.js?1577682292"></script><script  src="https://vendor-cdn.imweb.me/js/embedly.js?1608061343"></script><script  src="https://vendor-cdn.imweb.me/js/ie-checker-min.js?1577682292"></script><script  src="/admin/js/doz_post.js?1577682293"></script><script  src="/admin/js/admin.js?1615512226"></script><script  src="/admin/js/coupon.js?1593589295"></script><script  src="/admin/js/doznut.js?1614036939"></script><script  src="/admin/js/event_check.js?1585896056"></script><script  src="/js/site_member.js?1623223668"></script><script  src="/js/alarm_menu.js?1603862128"></script><script  src="/admin/js/imweb_analytics.js?1604543771"></script><script  src="/admin/js/site_manage.js?1587087650"></script><script  src="/admin/js/admin_search.js?1577682293"></script><script  src="/admin/js/dashboard.js?1619520122"></script><script  src="/admin/js/config.js?1622188739"></script><script  src="/admin/js/member.js?1622679243"></script><script  src="/admin/js/permission.js?1603322181"></script><script  src="/admin/js/contents.js?1622610258"></script><script  src="/admin/js/payment.js?1622512195"></script><script  src="/admin/js/toastr.js?1577682293"></script><script  src="/admin/js/contents_list.js?1577682293"></script><script>var IS_ANDROID_APP = 'N';

function determineDropDirection(){
	$(".dropdown-menu").each( function(){
		$(this).css({
			visibility: "hidden",
			display: "block"
		});

		$(this).parent().removeClass("dropup");

		if ($(this).offset().top + $(this).outerHeight() + 60 > $(window).innerHeight() + $(window).scrollTop()){
			$(this).parent().addClass("dropup");
		}
		$(this).removeAttr("style");
	});
}

determineDropDirection();

$(window).scroll(determineDropDirection);
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
	<script>
	$(function(){
		var tutorial_info = {};
		var tutorial_modal = '';
		var tutorial_resize = false;

		
		setTutorialModal();
		refreshCheckBarAll();
		$('._dashboard_tutorial ._skip').click(function(){
			var target = $(this).attr('data-target');
			var name = $('._dashboard_tutorial .card[data-type="' + target + '"] header').text();
			if(confirm(getLocalizeString('설명_n1의모든작업을완료처리하시겠습니까', name, '%1의 모든 작업을 완료처리 하시겠습니까?'))){
				skipTutorialType(target);
			}
		});

		if($(window).width() < 768){
			$('._dashboard_tutorial').owlCarousel({
				responsive: {
					0: {
						items: 1
					}
				}
			});
		}

		$(window).resize(function(){
			if(!tutorial_resize){
				tutorial_resize = true;
				setTimeout(function(){
					tutorial_resize = false;
					var $dashboard_tutorial = $('._dashboard_tutorial');
					if($(window).width() < 768){
						if(!$dashboard_tutorial.data('owlCarousel')){
							$dashboard_tutorial.owlCarousel({
								responsive: {
									0: {
										items: 1
									}
								}
							});
						}
					}else{
						if($dashboard_tutorial.data('owlCarousel')){
							$dashboard_tutorial.trigger('destroy.owl.carousel').removeClass('owl-carousel').removeClass('owl-loaded');
							var dashboard_tutorial_inner = $dashboard_tutorial.find('.owl-stage-outer');
							$dashboard_tutorial.html(dashboard_tutorial_inner.html());
							setTutorialModal();
						}
					}
				}, 1000);
			}
		});

		function setTutorialModal(){
			$('._dashboard_tutorial ._check_list:not(.checked)').unbind().click(function(){
				var target = $(this).attr('data-target');
				if(tutorial_modal === ''){
					$.ajax({
						'type' : 'POST',
						'data' : {'shopping' : 'Y', 'booking' : 'N'},
						'url' : ('/admin/ajax/tutorial_guide.cm'),
						'dataType' : 'json',
						'async' : false,
						'cache' : false,
						'success' : function (res) {
							if(res.msg === 'SUCCESS'){
								tutorial_modal = $(res.modal_html);
								tutorial_info = JSON.parse(res.tutorial_info);
								openTutorialModal(target);
							}
						}
					});
				}else{
					openTutorialModal(target);
				}
			});
		}

		function openTutorialModal(target){
			$('#cocoaSubModal').modal("hide");
			$.cocoaDialog.open({type:'admin',custom_popup:tutorial_modal,width:660, opened: function(){
					$('#tutorial_trackpad').TrackpadScrollEmulator();
					changeTutorial(target);
					refreshCheckBarAll();
					$('._tutorial_guide ._check_list:not(.checked)').unbind().click(function(){
						changeTutorial($(this).attr('data-target'));
					});
				}});
		}

		function changeTutorial(target){
			var $tutorial_guide = $('._tutorial_guide');
			if(!$tutorial_guide.find('._check_list[data-target="' + target + '"]').hasClass('active')){
				$tutorial_guide.find('._check_list').removeClass('active');
				$tutorial_guide.find('._check_list[data-target="' + target + '"]').addClass('active');
				$tutorial_guide.find('._img').attr('src', tutorial_info[target].img);
				$tutorial_guide.find('._name').text(tutorial_info[target].name);

				// 특수 항목 예외처리
				if(target === 'ck_social_login' && 'Y' === 'N'){
					$tutorial_guide.find('._img').attr('src', '/admin/img/tutorial/tutorial_growth_3_tw.png');
				}

				if(target === 'ck_product' && 'Y' === 'N' && 'Y' === 'N'){
					$tutorial_guide.find('._description')[0].innerHTML = getLocalizeString("설명_상품추가하기n1버전n2개상품제한", ["Pro", "200000"], "%1는 %2개로 상품수가 제한됩니다.<br>한도 이하로 삭제하시면 상품 수정/등록이 가능합니다.<br>버전 <a href='/admin/payment?mode=detail&type=upgrade' target='_blank'>업그레이드</a>시 무제한 상품 등록 가능.");
				}else if(target === 'ck_booking' && 'Y' === 'N' && 'Y' === 'N'){
					$tutorial_guide.find('._description')[0].innerHTML = getLocalizeString("설명_예약상품추가하기n1버전n2개객실제한", ["Pro", "100000"], "%1는 %2개로 객실수가 제한됩니다.<br>한도 이하로 삭제하시면 객실 수정/등록이 가능합니다.<br>버전 <a href='/admin/payment?mode=detail&type=upgrade' target='_blank'>업그레이드</a>시 무제한 객실 등록 가능.");
				}else{
					$tutorial_guide.find('._description')[0].innerHTML = tutorial_info[target].description;
				}

				$tutorial_guide.find('._link').attr('href', tutorial_info[target].link);
				$tutorial_guide.find('._link').text(tutorial_info[target].button);

				if(target === 'ck_search_engine' && 'Y' === 'Y'){
					$('<a class="btn btn-primary link _link_temp" href="https://imweb.me/faq?mode=view&category=29&category2=35&idx=7607" target="_blank">' + getLocalizeString("버튼_네이버등록방법", "", "네이버 등록 방법") + '</a>').insertBefore($tutorial_guide.find('._link'));
				}else if(target === 'ck_search_engine' && 'Y' === 'N'){
					$tutorial_guide.find('._link').attr('href', 'https://imweb.me/tw/faq?mode=view&category=29&category2=35&idx=71682');		// 검색엔진 등록하기 대만 가이드
					$('<a class="btn btn-primary link _link_temp" href="https://imweb.me/tw/faq?mode=view&category=29&category2=35&idx=71674" target="_blank">' + getLocalizeString("버튼_Yahoo등록방법", "", "Yahoo 등록 방법") + '</a>').insertAfter($tutorial_guide.find('._link'));
				}else{
					$tutorial_guide.find('._link_temp').remove();
				}
				$tutorial_guide.find('._skip').unbind().click(function(){
					skipTutorial(target);
				});
				var position_top = ($tutorial_guide.find('._check_list[data-target="' + target + '"]').position().top - $tutorial_guide.find('.tse-content').position().top) - 204;
				if(position_top < 0) position_top = 0;
				$('#tutorial_trackpad .tse-scroll-content').scrollTop(position_top);
			}
		}

		function skipTutorial(target){
			$.ajax({
				'type' : 'POST',
				'data' : {target: target},
				'url' : ('/admin/ajax/change_tutorial.cm'),
				'dataType' : 'json',
				'async' : false,
				'cache' : false,
				'success' : function (res) {
					if(res.msg === 'SUCCESS'){
						// 모달 외에 대시보드 자체의 체크리스트도 변경되어야 함, 진행 그래프도 새로 그려줘야 함
						$('._dashboard_tutorial ._check_list[data-target="' + target + '"]').addClass('checked').unbind();
						$('._tutorial_guide ._check_list[data-target="' + target + '"]').addClass('checked').unbind();
						refreshCheckBarAll();
						if($(window).width() < 768){
							// 모바일에서는 건너뛸 때 모달을 닫음
							$('#cocoaModal').modal("hide");
						}else{
							// 그래프 새로 그리고 다음 항목으로 넘겨줘야 함, 기존 항목 클릭 이벤트 제거해줘야 함
							var $check_list = $('._tutorial_guide ._check_list');
							var $check_list_active = $('._tutorial_guide ._check_list.active');
							var active_index = $check_list.index($check_list_active);
							for(var i = active_index; i < $check_list.length; i++){
								if(i + 1 < $check_list.length){
									var $next = $($check_list[i + 1]);
									if(!$next.hasClass('checked')){
										$next.click();
										break;
									}
								}else{
									// 마지막 항목을 건너뛰면 모달을 닫음(이전 항목 중 체크 안한 항목으로 되돌릴 지는 생각해볼 것)
									$('#cocoaModal').modal("hide");
								}
							}
						}
					}else{
						alert(res.msg);
					}
				}
			});
		}

		function skipTutorialType(target){
			$.ajax({
				'type' : 'POST',
				'data' : {target: target},
				'url' : ('/admin/ajax/change_tutorial.cm'),
				'dataType' : 'json',
				'async' : false,
				'cache' : false,
				'success' : function (res) {
					if(res.msg === 'SUCCESS'){
						// 모달 외에 대시보드 자체의 체크리스트도 변경되어야 함, 진행 그래프도 새로 그려줘야 함
						$('._dashboard_tutorial .card[data-type="' + target + '"] ._check_list').addClass('checked');
						refreshCheckBar(target);
					}else{
						alert(res.msg);
					}
				}
			});
		}

		function refreshCheckBar(target){
			var $tutorial_type = $('._dashboard_tutorial .card[data-type="' + target + '"]');
			if($tutorial_type.length > 0){
				var $tutorial_guide_type = $('._tutorial_guide ._guide_type_wrap[data-type="' + target + '"]');
				var count = $tutorial_type.find('._check_list.checked').length;
				var max_count = $tutorial_type.find('._check_list').length;
				var percent = max_count > 0 ? count / max_count * 100 : 0;
				$tutorial_type.find('._check_bar').css('width', percent + '%');
				$tutorial_type.find('._check_bar_text').text(getLocalizeString('설명_n1개중n2개완료', [count, max_count], '%1/%2개 완료'));
				if($tutorial_guide_type.length > 0){
					$tutorial_guide_type.find('._check_bar').css('width', percent + '%');
					$tutorial_guide_type.find('._check_bar_text').text(getLocalizeString('설명_n1개중n2개완료', [count, max_count], '%1/%2개 완료'));
				}
				if(count === max_count){
					$tutorial_type.find('._skip').hide();
				}
				checkAllComplete();
			}
		}

		function refreshCheckBarAll(){
			refreshCheckBar('tutorial_default');
			refreshCheckBar('tutorial_selling');
			refreshCheckBar('tutorial_growth');
			refreshCheckBar('tutorial_recommend');
			checkAllComplete();
		}

		function checkAllComplete(){
			var count = $('._dashboard_tutorial ._check_list.checked').length;
			var max_count = $('._dashboard_tutorial ._check_list').length;
			if(count === max_count){
				$('._dashboard_tutorial').hide();
			}
		}
	})
</script>

<div class="row flex-box dashboard_tutorial _dashboard_tutorial">
	<div class="ma-item col-md-3 col-sm-3 col-xs-12">
		<div class="card _tutorial_default" data-type="tutorial_default">
			<div class="card-body">
				<header>기본설정</header>
				<div class="check_bar_wrap">
					<div class="check_bar_background">
						<div class="check_bar _check_bar" style="width: 5%; border-radius: 3px;"></div>
					</div>
					<div class="check_bar_text _check_bar_text"></div>
				</div>
				<div class="tt-list">
					<div class="check-list _check_list " data-target="ck_info">
						<i class="fa"></i>
						<span>사이트 정보 설정하기</span>
					</div>
				</div>
				<div class="tt-list">
					<div class="check-list _check_list " data-target="ck_design">
						<i class="fa"></i>
						<span>디자인 편집하기</span>
					</div>
				</div>
				<div class="tt-list">
					<div class="check-list _check_list " data-target="ck_policy">
						<i class="fa"></i>
						<span>약관 설정하기</span>
					</div>
				</div>
				<div class="tt-list">
					<div class="check-list _check_list " data-target="ck_domain">
						<i class="fa"></i>
						<span>도메인 연결하기</span>
					</div>
				</div>
				<div class="skip _skip" data-target="tutorial_default">이 단계 건너뛰기</div>
			</div>
		</div>
	</div>
			<div class="ma-item col-md-3 col-sm-3 col-xs-12">
			<div class="card _tutorial_selling" data-type="tutorial_selling">
				<div class="card-body">
					<header>판매하기</header>
					<div class="check_bar_wrap">
						<div class="check_bar_background">
							<div class="check_bar _check_bar" style="width: 5%; border-radius: 3px;"></div>
						</div>
						<div class="check_bar_text _check_bar_text"></div>
					</div>
											<div class="tt-list">
							<div class="check-list _check_list checked" data-target="ck_product">
								<i class="fa"></i>
								<span>상품 추가하기</span>
							</div>
						</div>
						<div class="tt-list">
							<div class="check-list _check_list " data-target="ck_deliv">
								<i class="fa"></i>
								<span>배송 설정하기</span>
							</div>
						</div>
																<div class="tt-list">
							<div class="check-list _check_list " data-target="ck_pg">
								<i class="fa"></i>
								<span>전자결제 신청하기</span>
							</div>
						</div>
																<div class="tt-list">
							<div class="check-list _check_list " data-target="ck_naver_pay">
								<i class="fa"></i>
								<span>네이버페이 신청하기</span>
							</div>
						</div>
						<div class="tt-list">
							<div class="check-list _check_list " data-target="ck_naver_shopping">
								<i class="fa"></i>
								<span>네이버쇼핑 입점하기</span>
							</div>
						</div>
															<div class="skip _skip" data-target="tutorial_selling">이 단계 건너뛰기</div>
				</div>
			</div>
		</div>
		<div class="ma-item col-md-3 col-sm-3 col-xs-12">
		<div class="card _tutorial_growth" data-type="tutorial_growth">
			<div class="card-body">
				<header>성장하기</header>
				<div class="check_bar_wrap">
					<div class="check_bar_background">
						<div class="check_bar _check_bar" style="width: 5%; border-radius: 3px;"></div>
					</div>
					<div class="check_bar_text _check_bar_text"></div>
				</div>
				<div class="tt-list">
					<div class="check-list _check_list " data-target="ck_search_engine">
						<i class="fa"></i>
						<span>검색엔진 등록하기</span>
					</div>
				</div>
				<div class="tt-list">
					<div class="check-list _check_list " data-target="ck_menu_seo">
						<i class="fa"></i>
						<span>검색엔진 최적화</span>
					</div>
				</div>
				<div class="tt-list">
					<div class="check-list _check_list " data-target="ck_social_login">
						<i class="fa"></i>
						<span>소셜 로그인 설정하기</span>
					</div>
				</div>
				<div class="tt-list">
					<div class="check-list _check_list " data-target="ck_mail">
						<i class="fa"></i>
						<span>메일발송 설정하기</span>
					</div>
				</div>
									<div class="tt-list">
						<div class="check-list _check_list " data-target="ck_sms">
							<i class="fa"></i>
							<span>SMS/알림톡 설정하기</span>
						</div>
					</div>
								<div class="tt-list">
					<div class="check-list _check_list checked" data-target="ck_stat">
						<i class="fa"></i>
						<span>방문자 분석하기</span>
					</div>
				</div>
				<div class="tt-list">
					<div class="check-list _check_list " data-target="ck_trace">
						<i class="fa"></i>
						<span>광고 및 전환추적 설정</span>
					</div>
				</div>
				<div class="skip _skip" data-target="tutorial_growth">이 단계 건너뛰기</div>
			</div>
		</div>
	</div>
	<div class="ma-item col-md-3 col-sm-3 col-xs-12">
		<div class="card _tutorial_recommend" data-type="tutorial_recommend">
			<div class="card-body">
				<header>추천작업</header>
				<div class="check_bar_wrap">
					<div class="check_bar_background">
						<div class="check_bar _check_bar" style="width: 5%; border-radius: 3px;"></div>
					</div>
					<div class="check_bar_text _check_bar_text"></div>
				</div>
				<div class="tt-list">
					<div class="check-list _check_list " data-target="ck_permission">
						<i class="fa"></i>
						<span>운영진 설정하기</span>
					</div>
				</div>
									<div class="tt-list">
						<div class="check-list _check_list " data-target="ck_deposit_confirmation">
							<i class="fa"></i>
							<span>자동입금확인 설정하기</span>
						</div>
					</div>
													<div class="tt-list">
						<div class="check-list _check_list " data-target="ck_chat">
							<i class="fa"></i>
							<span>채팅상담 설정하기</span>
						</div>
					</div>
								<div class="tt-list">
					<div class="check-list _check_list " data-target="ck_app">
						<i class="fa"></i>
						<span>모바일 앱 설정하기</span>
					</div>
				</div>
				<div class="tt-list">
					<div class="check-list _check_list " data-target="ck_fbe">
						<i class="fa"></i>
						<span>FBE 설정하기</span>
					</div>
				</div>
				<div class="skip _skip" data-target="tutorial_recommend">이 단계 건너뛰기</div>
			</div>
		</div>
	</div>
</div>					<div class="row">
	<div class="ma-item col-md-12 col-sm-12">
		<div class="card">
			<div class="card-head line-bottom">
				<a href="javascript:;" class="block">
					<header>오늘의 할일 <span class="text-default-bright header-badge badge-danger">0</span></header>
				</a>
			</div>
							<div class="card-body border-top today-table">
											<!-- 쇼핑 -->
						<div class="tt-list">
														<div class="inline-blocked">
								<a href="/admin/shopping/order">신규주문<span class="text-danger">0</span></a>
							</div>
																					<div class="inline-blocked">
								<a href="/admin/shopping/cancel">취소관리<span class="text-danger">0</span></a>
							</div>
																					<div class="inline-blocked">
								<a href="/admin/shopping/return">반품관리<span class="text-danger">0</span></a>
							</div>
																					<div class="inline-blocked">
								<a href="/admin/shopping/exchange">교환관리<span class="text-danger">0</span></a>
							</div>
																					<div class="inline-blocked">
								<a href="/admin/shopping/answers">답변대기 문의<span class="text-danger">0</span></a>
							</div>
													</div>
						<!-- 예약 -->
										</div>
					</div>
	</div>
</div>					<!-- 회원 정보 또는 문의 리뷰 뿌리기 -->
					<div class="row flex-box">
	<div class="ma-item col-md-6 col-sm-6 col-xs-12">
		<div class="card">
							<div class="card-head">
					<header><a href="/admin/stat/visitor">방문자 현황</a></header>
					<div class="float_r text-12 text-right force-padding no-padding-y">
						<span style="margin-right:15px"><i class="fa fa-circle" style="color: rgba(253, 175, 177, 1)"></i> 페이지뷰</span>
						<i class="fa fa-circle" style="color: rgba(252, 95, 100,1)"></i> 방문자					</div>
				</div>
				<div class="card-body border-top">
										<div class="holder">
						<canvas id="stats_chart"></canvas>
						<div class="chartjs_tooltip _chartjs_tooltip" style="opacity: 0; left: 123px; top: 180.417px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; position: absolute; background: rgb(255, 255, 255);"><div class="chartjs-tooltip-section"><span class="chartjs-tooltip-key" style="background-color:rgba(252, 95, 100,1)"></span><span class="chartjs-tooltip-value">8</span></div><div class="chartjs-tooltip-section"><span class="chartjs-tooltip-key" style="background-color:rgba(253, 175, 177, 1)"></span><span class="chartjs-tooltip-value">31</span></div></div>
					</div>
				</div>
					</div>
								<script>
				$(function(){
					Chart.defaults.global.pointHitDetectionRadius = 1;
					Chart.defaults.global.customTooltips = function(tooltip) {
					};
					Chart.defaults.global.scaleFontFamily = 'Lato';
					var chartData = {
						'id' : 'stats_chart',
						'data' : {
							'labels' : ["06-19","06-20","06-21","06-22","06-23","06-24","06-25"],
							'datasets' : []
						}
					};

										chartData.data.datasets.push(
						{
							'label' : "페이지뷰",
							'fillColor' : "rgba(253, 175, 177,0.3)",
							'strokeColor' : "rgba(253, 175, 177,1)",
							'pointColor' : "rgba(253, 175, 177, 1)",
							'pointStrokeColor' : "#eee",
							'pointHighlightFill' : "#fff",
							'pointHighlightStroke' : "rgba(151,187,205,1)",
							'data' : ["0","0","0","0","0","0","0"]
						}
					);
										chartData.data.datasets.push(
						{
							'label' : "방문자",
							'fillColor' : "rgba(253, 175, 177,0.3)",
							'strokeColor' : "rgba(253, 175, 177,1)",
							'pointColor' : "rgba(252, 95, 100,1)",
							'pointStrokeColor' : "#eee",
							'pointHighlightFill' : "#fff",
							'pointHighlightStroke' : "rgba(151,187,205,1)",
							'data' : ["0","0","0","0","0","0","0"]
						}
					);
					
					var ctx2 =  $('#stats_chart').get(0).getContext("2d");
					var myLine = new Chart(ctx2).Line(chartData.data, {
						'responsive' : true,
						'customTooltips' : function(tooltip){
							var tooltipEl = $("._chartjs_tooltip");

							if(!tooltip){
								tooltipEl.css({
									opacity : 0
								});
								return;
							}
							tooltipEl.removeClass('above below');
							tooltipEl.addClass(tooltip.yAlign);

							var innerHtml = '';
							if(typeof tooltip.labels != 'undefined'){
								for(var i = tooltip.labels.length - 1; i >= 0; i--){
									innerHtml += [
										'<div class="chartjs-tooltip-section">',
										'<span class="chartjs-tooltip-key" style="background-color:' + tooltip.legendColors[i].fill + '"></span>',
										'<span class="chartjs-tooltip-value">' + tooltip.labels[i] + '</span>',
										'</div>'
									].join('');
								}
							}else{
								innerHtml += [
									'<div class="chartjs-tooltip-section">',
									'<span class="chartjs-tooltip-value">' + tooltip.text + '</span>',
									'</div>'
								].join('');
							}

							tooltipEl.html(innerHtml);
							tooltipEl.css({
								'opacity' : 1,
								'left' : tooltip.x + 'px',
								'top' : tooltip.y + 'px',
								'fontFamily' : 'Lato',
								'fontSize' : tooltip.fontSize,
								'fontStyle' : tooltip.fontStyle,
								'position' : 'absolute',
								'background' : '#fff'
							});
						}
					});
				})
			</script>
			</div>
		<div class="ma-item col-md-6 col-sm-6 col-xs-12">
		<div class="card">
							<div class="card-head">
					<header><a href="/admin/stat/analytics?type=days&year=2021&month=06">일자별 요약</a></header>
					<a class="float_r text-12 opacity-50 force-padding no-padding-y" href="/admin/stat/analytics?type=month&year=2021">월별통계</a>
				</div>
				<div class="card-body no-padding border-top">
					<table class="table no-margin summary-table"><!-- 예약 또는 쇼핑 사용 -->
						<thead>
						<tr>
							<th class="text-13 text-center opacity-50">일자</th>
															<th class="text-13 text-center opacity-50">주문수</th>
								<th class="text-13 text-center opacity-50">매출액 <a href="javascript:;" class="text-gray" role="button" data-toggle="popover" data-placement="auto" title="" data-html="true" data-content="<table style='width:100%; line-height:1.4; vertical-align:top' class='table table-normal table-sm-padding no-margin'><tr><th style='width:25%' class='no-border-top'>집계시점</th><td class='no-border-top'>주문일 기준 결제완료된 주문</td></tr><tr><th>차감기준</th><td>취소,반품완료시 결제금액에서 환불금액만큼 차감</td></tr><tr><th>환불적용</th><td>취소,반품/환불시 주문일자 기준으로 처리</td></tr><tr><th>할인금액</th><td>적립금, 쿠폰 등은 매출금액에서 제외. 실결제금액에만 반영.</td></tr><tr><th>부분취소</th><td>부분취소 주문은 정확히 집계되지 않음(개선예정).</td></tr></table>" data-original-title="매출액 계산 기준"><i class="btm bt-question-circle"></i></a></th>
														<th class="text-13 text-center opacity-50">방문자</th>
							<th class="text-13 text-center opacity-50">가입</th>
															<th class="text-13 text-center opacity-50">문의</th>
								<th class="text-13 text-center opacity-50">후기</th>
													</tr>
						</thead>
						<tbody>
													<tr class="today"><!-- 주단위 반복 -->
																<td class="text-left">2021-06-25</td>
																	<td class="text-right">0</td>
									<td class="text-right">0원</td>
								
								<td class="text-right">0</td>
								<td class="text-right">0</td>

																	<td class="text-right">0</td>
									<td class="text-right">0</td>
															</tr><!-- // 주단위 반복 -->
														<tr class=""><!-- 주단위 반복 -->
																<td class="text-left">2021-06-24</td>
																	<td class="text-right">0</td>
									<td class="text-right">0원</td>
								
								<td class="text-right">0</td>
								<td class="text-right">0</td>

																	<td class="text-right">0</td>
									<td class="text-right">0</td>
															</tr><!-- // 주단위 반복 -->
														<tr class=""><!-- 주단위 반복 -->
																<td class="text-left">2021-06-23</td>
																	<td class="text-right">0</td>
									<td class="text-right">0원</td>
								
								<td class="text-right">0</td>
								<td class="text-right">0</td>

																	<td class="text-right">0</td>
									<td class="text-right">0</td>
															</tr><!-- // 주단위 반복 -->
														<tr class=""><!-- 주단위 반복 -->
																<td class="text-left">2021-06-22</td>
																	<td class="text-right">0</td>
									<td class="text-right">0원</td>
								
								<td class="text-right">0</td>
								<td class="text-right">0</td>

																	<td class="text-right">0</td>
									<td class="text-right">0</td>
															</tr><!-- // 주단위 반복 -->
														<tr class=""><!-- 주단위 반복 -->
																<td class="text-left">2021-06-21</td>
																	<td class="text-right">0</td>
									<td class="text-right">0원</td>
								
								<td class="text-right">0</td>
								<td class="text-right">0</td>

																	<td class="text-right">0</td>
									<td class="text-right">0</td>
															</tr><!-- // 주단위 반복 -->
														<tr class=""><!-- 주단위 반복 -->
																<td class="text-left">2021-06-20</td>
																	<td class="text-right">0</td>
									<td class="text-right">0원</td>
								
								<td class="text-right">0</td>
								<td class="text-right">0</td>

																	<td class="text-right">0</td>
									<td class="text-right">0</td>
															</tr><!-- // 주단위 반복 -->
														<tr class=""><!-- 주단위 반복 -->
																<td class="text-left">2021-06-19</td>
																	<td class="text-right">0</td>
									<td class="text-right">0원</td>
								
								<td class="text-right">0</td>
								<td class="text-right">0</td>

																	<td class="text-right">0</td>
									<td class="text-right">0</td>
															</tr><!-- // 주단위 반복 -->
													</tbody>
						<tfoot>
						<tr>
							<td class="text-left no-border">최근 7일 합계</td>
															<td class="text-right no-border">0건</td>
								<td class="text-right no-border">0원</td>
														<td class="text-right no-border">0명</td>
							<td class="text-right no-border">0명</td>
															<td class="text-right no-border">0</td>
								<td class="text-right no-border">0</td>
													</tr>
						<tr>
							<td class="text-left">이번달 합계</td>
															<td class="text-right">0건</td>
								<td class="text-right">0원</td>
														<td class="text-right">1명</td>
							<td class="text-right ">0명</td>
															<td class="text-right">0</td>
								<td class="text-right">0</td>
													</tr>
						</tfoot>
					</table><!-- // 예약 또는 쇼핑 사용 -->
				</div>
					</div>
	</div>
</div>					<div class="row flex-box">
								<div class="ma-item col-md-6 col-sm-6 col-xs-12">
			<div class="card"><!-- // 예약 또는 쇼핑 사용 -->
				<div class="card-head">
					<header>문의/구매평 </header>
				</div>
				<div class="card-body border-top">
											<ul class="list list-preview">
																	<li class="tile">
			<a class="tile-content" href="/admin/shopping/answers?idx=624277" target="">
								<div class="tile-text">
					<div>
												<span>[문의]</span>
											</div>
					<small class="text-12">
						<span>박은영</span><em class="opacity-50 text-gray-bright" style="margin: 0 8px;">|</em><span>2019-11-22 15:01</span>
					</small>
				</div>
			</a>
		</li>
		<li class="tile">
			<a class="tile-content" href="/admin/shopping/review?idx=2536053" target="">
									<div class="tile-icon">
						<img class="no-border-radius" src="https://cdn.imweb.me/thumbnail/20190827/ab60083390d92.jpg" alt="">
					</div>
								<div class="tile-text">
					<div>
												<span>[구매평] ㅇㅇㅇㅇㅇㅇㅇ</span>
											</div>
					<small class="text-12">
						<span>신송이</span><em class="opacity-50 text-gray-bright" style="margin: 0 8px;">|</em><span>2019-09-03 23:20</span>
					</small>
				</div>
			</a>
		</li>
													</ul>
									</div>
			</div>
		</div>
<div class="ma-item col-md-6 col-sm-6 col-xs-12">
	<div class="card"><!-- // 예약 또는 쇼핑 사용 -->
		<div class="card-head">
			<header>컨텐츠 반응 </header>
		</div>
		<div class="card-body border-top">
							<ul class="list list-preview">
												<li class="tile">
		<a class="tile-content" href="/admin/contents/post/?mode=view&code=p20190830dac01c96a5211">
			<div class="tile-icon">
				<img class="" src="/common/img/default_profile.png" alt="">
			</div>
			<div class="tile-text">
				<div>
					<span>[게시판 댓글] </span>
									</div>
				<small class="text-12">
					<span>꼬질</span><em class="opacity-50 text-gray-bright" style="margin: 0 8px;">|</em><span>2019-09-02 10:46</span>
				</small>
			</div>
		</a>
	</li>
		<li class="tile">
		<a class="tile-content" href="/admin/contents/post/?mode=view&code=p20190830dac01c96a5211">
			<div class="tile-icon">
				<img class="" src="/common/img/default_profile.png" alt="">
			</div>
			<div class="tile-text">
				<div>
					<span>[게시판 댓글] </span>
									</div>
				<small class="text-12">
					<span>누누씨</span><em class="opacity-50 text-gray-bright" style="margin: 0 8px;">|</em><span>2019-08-30 18:47</span>
				</small>
			</div>
		</a>
	</li>
		<li class="tile">
		<a class="tile-content" href="/admin/contents/post/?mode=view&code=p20190830dac01c96a5211">
			<div class="tile-icon">
				<img class="" src="/common/img/default_profile.png" alt="">
			</div>
			<div class="tile-text">
				<div>
					<span>[게시판 작성] </span>
									</div>
				<small class="text-12">
					<span>kittenbeige</span><em class="opacity-50 text-gray-bright" style="margin: 0 8px;">|</em><span>2019-08-30 15:52</span>
				</small>
			</div>
		</a>
	</li>
		<li class="tile">
		<a class="tile-content" href="/admin/contents/post/?mode=view&code=p2019082958baec774a372">
			<div class="tile-icon">
				<img class="" src="/common/img/default_profile.png" alt="">
			</div>
			<div class="tile-text">
				<div>
					<span>[게시판 작성] 홈페이지</span>
									</div>
				<small class="text-12">
					<span>꼬질</span><em class="opacity-50 text-gray-bright" style="margin: 0 8px;">|</em><span>2019-08-29 17:06</span>
				</small>
			</div>
		</a>
	</li>
		<li class="tile">
		<a class="tile-content" href="/admin/contents/post/?mode=view&code=p20190827a4a566d9905c1">
			<div class="tile-icon">
				<img class="" src="/common/img/default_profile.png" alt="">
			</div>
			<div class="tile-text">
				<div>
					<span>[게시판 댓글] </span>
									</div>
				<small class="text-12">
					<span>장용재</span><em class="opacity-50 text-gray-bright" style="margin: 0 8px;">|</em><span>2019-08-29 16:17</span>
				</small>
			</div>
		</a>
	</li>
		<li class="tile">
		<a class="tile-content" href="/admin/contents/post/?mode=view&code=p2019082933311c1788a39">
			<div class="tile-icon">
				<img class="" src="/common/img/default_profile.png" alt="">
			</div>
			<div class="tile-text">
				<div>
					<span>[게시판 작성] 질문있어요</span>
									</div>
				<small class="text-12">
					<span>이냐</span><em class="opacity-50 text-gray-bright" style="margin: 0 8px;">|</em><span>2019-08-29 15:56</span>
				</small>
			</div>
		</a>
	</li>
										</ul>
					</div>
	</div>
</div>
					</div>
					<div class="row flex-box">
		<div class="ma-item col-md-6 col-sm-6 col-xs-12">
		<div class="card">
			<div class="card-head">
				<header><a href="https://imweb.me/qna" target="_blank">아임웹에 문의하신 내역</a></header>
				<a class="float_r text-12 opacity-50 force-padding no-padding-y" href="https://imweb.me/qna" target="_blank">문의하기</a>
			</div>
			<div class="card-body border-top">
				<ul class="list list-preview">
						<li class="tile" style="min-height: auto;">
		<a class="tile-content" href="https://imweb.me/qna?view&1&70228">
			<div class="tile-text no-padding">요금제 변경</div>
			<div class="tile-icon no-padding text-center text-12">답변완료</div>
		</a>
	</li>				</ul>
			</div>
		</div>
	</div>
		<div class="ma-item col-md-6 col-sm-6 col-xs-12">
		<div class="card">
			<div class="card-head">
				<header><a href="https://imweb.me/notice" target="_blank">아임웹 소식</a></header>
				<a class="float_r text-12 opacity-50 force-padding no-padding-y" href="https://imweb.me/notice">더보기</a>
			</div>
			<div class="card-body border-top">
				<ul class="list list-preview">
						<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me/notice?view&1&648" target="_blank">
			<div class="tile-text no-padding">[UPDATE] 사이트 소유권 이전 등 업데이트 소식💌 </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2021-06-02</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me/notice?view&1&646" target="_blank">
			<div class="tile-text no-padding">나이스페이 가상계좌 예금주 정보 지원종료 및 조치방법 안내 </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2021-06-02</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me/notice?view&1&644" target="_blank">
			<div class="tile-text no-padding">6월 2일(수) 점검으로 인한 서비스 일시 중지 예정 안내 </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2021-06-01</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me/notice?view&1&636" target="_blank">
			<div class="tile-text no-padding">5월 12일 (수) ~ 5월 13일 (목) SSL 인증서 신청 및 발급 제한 안내 </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2021-05-07</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me/notice?view&1&632" target="_blank">
			<div class="tile-text no-padding">[UPDATE] 입력폼 기능 추가, 비밀번호 잠금 페이지 등 업데이트 소식🌿 </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2021-04-28</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me/notice?view&1&630" target="_blank">
			<div class="tile-text no-padding">4월 28일(수) 점검으로 인한 서비스 일시 중지 예정 안내 </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2021-04-27</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me/notice?view&1&628" target="_blank">
			<div class="tile-text no-padding">무통장입금 결제수단 서비스 제공 정책 변경 안내 </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2021-04-19</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me/notice?view&1&626" target="_blank">
			<div class="tile-text no-padding">Facebook Pixel 및 FBE 1.0 서비스 종료 안내 (4월 28일) </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2021-04-02</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me/notice?view&1&624" target="_blank">
			<div class="tile-text no-padding">상표, 세무, 촬영 컨설팅 서비스 종료 안내 </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2021-03-31</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me/notice?view&1&622" target="_blank">
			<div class="tile-text no-padding"> [UPDATE] 카카오싱크, 만 14세 이상 동의 등 업데이트 소식💛😉 </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2021-03-24</div>
		</a>
	</li>				</ul>
			</div>
		</div>
	</div>
</div>
<div class="row flex-box">
		
	<div class="ma-item col-md-6 col-sm-6 col-xs-12">
		<div class="card">
			<div class="card-head">
				<header><a href="https://imweb.me/faq">아임웹 가이드</a></header>
				<a class="float_r text-12 opacity-50 force-padding no-padding-y" href="https://imweb.me/faq?mode=view&category=28&category2=31&idx=5890" target="_blank">더보기</a>
			</div>
			<div class="card-body border-top">
				<ul class="list list-preview">
						<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me//faq?mode=view&category=28&category2=31&idx=71507" target="_blank">
			<div class="tile-text no-padding">빠른 시작 가이드 </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2020-06-02</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me//faq?mode=view&category=28&category2=31&idx=5890" target="_blank">
			<div class="tile-text no-padding">디자인 모드란? </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2019-11-12</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me//faq?mode=view&category=28&category2=31&idx=71396" target="_blank">
			<div class="tile-text no-padding">아임웹 웹 페이지의 구조 </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2020-03-16</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me//faq?mode=view&category=28&category2=31&idx=217" target="_blank">
			<div class="tile-text no-padding">공통 디자인 설정하기 </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2019-11-12</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me//faq?mode=view&category=28&category2=31&idx=71181" target="_blank">
			<div class="tile-text no-padding">메뉴 추가, 이동, 복제, 설정, 삭제하기 </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2019-12-26</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me//faq?mode=view&category=28&category2=31&idx=5904" target="_blank">
			<div class="tile-text no-padding">위젯 추가, 이동, 복제, 설정, 삭제하기 </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2019-11-12</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me//faq?mode=view&category=28&category2=31&idx=5914" target="_blank">
			<div class="tile-text no-padding">위젯별 기능 설명 (디자인 요소) </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2019-11-12</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me//faq?mode=view&category=28&category2=31&idx=5922" target="_blank">
			<div class="tile-text no-padding">위젯별 기능 설명 (DB 요소) </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2019-11-12</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me//faq?mode=view&category=28&category2=31&idx=189" target="_blank">
			<div class="tile-text no-padding">그리드 시스템이란? </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2019-11-12</div>
		</a>
	</li>	<li class="tile" style="min-height:auto;">
		<a class="tile-content" href="https://imweb.me//faq?mode=view&category=28&category2=31&idx=71502" target="_blank">
			<div class="tile-text no-padding">위젯 배치 및 그리드 실습 </div>
			<div class="tile-icon no-padding text-12 text-gray-bright" style="min-width: 80px;">2020-06-01</div>
		</a>
	</li>				</ul>
			</div>
		</div>
	</div>
</div>
				</div>
				<div class="right-menu-fixed float_l">
					<div class="card card-black">
						<div class="card-body text-center">
							<a href="javascript:" class="dropdown-toggle block " data-toggle="dropdown" tabindex="-1" aria-expanded="false">
								<div class="margin-bottom-xl">
									<img class="border-round" src="/common/img/default_profile.png" width="50" height="50">
								</div>
								<div class="text-bold">
									<span class="use_name holder">kittenbeige</span>
								</div>
								<div class="text-13 opacity-50">breadcream@naver.com</div>
							</a>
							<ul class="dropdown-menu animation-dock dashboard-profile" role="menu" aria-labelledby="dLabel">
								<li>
									<a class="text-ellipsis">
										<img class="border-round" src="/common/img/default_profile.png" width="45" height="45">
										<span>kittenbeige</span>
									</a>
								</li>
								<li class="divider"></li>

																	<li>
										<a href="/admin/member/list/?mode=add&idx=3052543">회원 정보수정</a>
									</li>
									
																			<li>
											<a href="javascript:" onclick="ADMIN.openProfile();">내사이트 목록 보기</a>
										</li>
										<li class="divider"></li>
										<li>
											<a class="text-danger" href="//imweb.me/price?idx&128451">
												연장/업그레이드											</a>
										</li>
										<li class="divider"></li>
										<li>
											<a href="//imweb.me/mysite">나가기</a>
										</li>
										
								
								<li>
									<a href="/admin/logout.cm">로그아웃</a>
								</li>
								
							</ul>
						</div>
						<div class="card-body card-summary no-padding-top">
															<div class="tabled full-width text-12 margin-bottom-xl">
									<div class="table-cell vertical-middle opacity-50 sub_tit">사용버전</div>
									<div class="table-cell vertical-middle">
										<span class="btn btn-sm btn-dark-bright btn-rounded btn-xs-padding" style="text-transform: capitalize">pro</span>
									</div>
									<div class="table-cell vertical-middle text-right sub_option">
										<a class="text-danger" href='/admin/payment?mode=detail&type=upgrade'>업그레이드</a>
									</div>
								</div>
																<div class="tabled full-width text-12 margin-bottom-xl">
									<div class="table-cell vertical-middle opacity-50 sub_tit">만료일</div>
									<div class="table-cell vertical-middle">2020-01-27 (<span class='text-danger'>만료</span>)</div>
																			<div class="table-cell vertical-middle text-right sub_option">
											<a class="text-danger" href="/admin/payment?mode=detail&type=upgrade">연장</a>
										</div>
																	</div>
																						<div class="tabled full-width text-12 margin-bottom-xl">
									<div class="table-cell vertical-middle opacity-50 sub_tit">PG</div>
									<div class="table-cell vertical-middle">미가입</div>
									<div class="table-cell vertical-middle text-right sub_option">
										<a class="opacity-50" href="/admin/config/pg">설정</a>
									</div>
								</div>
							
													</div>
						<div class="card-body card-summary">
																								<div class="tabled full-width text-12 margin-bottom-xl">
										<div class="table-cell vertical-middle opacity-50 sub_tit">APP</div>
																				<div class="table-cell vertical-middle"><a class="hover-underline" href="/admin/app/setting" alt="iOS 신청">iOS 미사용</a> / <a class="hover-underline" href="/admin/app/setting" alt="Android 신청">Android 미사용</a></div>
										<div class="table-cell vertical-middle text-right sub_option">
											<a class="text-danger" href="javascript:chkFreeVersion('/admin/app/setting')">설정</a>
										</div>
									</div>
																																<div class="tabled full-width text-12 margin-bottom-xl">
										<div class="table-cell vertical-middle opacity-50 sub_tit">도메인</div>
										<div class="table-cell vertical-middle" style="word-break: break-all;">기본 도메인 사용 중</div>
																					<div class="table-cell vertical-middle text-right sub_option">
												<a class="text-danger" href="/admin/config/domain">설정</a>
											</div>
																			</div>
															
															<div class="tabled full-width text-12 margin-bottom-xl">
									<div class="table-cell vertical-middle opacity-50 sub_tit">SSL</div>
									<div class="table-cell vertical-middle">사용 (기본 도메인 자동 적용)</div>
																			<div class="table-cell vertical-middle text-right sub_option">
											<a class="text-danger" href="/admin/config/ssl">연장</a>
										</div>
																	</div>
																																				<div class="tabled full-width text-12 margin-bottom-xl">
									<div class="table-cell vertical-middle opacity-50 sub_tit">SMS</div>
									<div class="table-cell vertical-middle">0건</div>
									<div class="table-cell vertical-middle text-right sub_option">
										<a class="text-danger" href="/admin/member/sms">충전</a>									</div>
								</div>
																															<div class="tabled full-width text-12 margin-bottom-xl" style="">
										<div class="table-cell vertical-middle opacity-50 sub_tit">입금확인<a href="javascript:" role="button" data-trigger="focus" tabindex="0" data-toggle="popover" data-placement="top" data-html="true" title="" data-content="무통장입금 주문을 자동으로 확인하여 입금완료 처리해주는 자동 입금 확인 서비스 뱅크다의 사용여부 및 남은 기간을 표시합니다." data-original-title="자동입금확인(뱅크다)"><i class="btm bt-question-circle"></i></a></div>
										<div class="table-cell vertical-top">자동입금확인 미사용</div>
										<div class="table-cell vertical-top text-right sub_option">
											<a class="text-danger" href="/admin/config/pg">설정</a>
										</div>
									</div>
																												</div>
					</div>
											<div class="card consulting_banner owl-theme">
							<div class="item">
								<div class="dashboard_banner_wrap sellmate-promotion card" style="background:#2962FF url(https://vendor-cdn.imweb.me/images/sellmate_promotion/sellmate_dashboard_banner.png) no-repeat; background-size: 100%; color: #fff;">
									<a href="https://imweb.me/sellmate_promotion" target="_blank" class="text-14">
										<div class="card-body sellmate-body">
											<div><img src="https://vendor-cdn.imweb.me/images/sellmate_promotion/sellmate_logo_dashboard.png" style="width: 100px; margin: 0 auto 6px auto;"/></div>
											<div style="font-size: 15px; text-align: center; line-height: 1.6;">글로벌 진출을 위한 오픈마켓 연동 솔루션</div>
										</div>
									</a>
								</div>
							</div>
							<div class="item">
								<div class="dashboard_banner_wrap card" style="background:#2962FF url(https://vendor-cdn.imweb.me/images/banner_readnumber_600_172.png) no-repeat; background-size: 100%; color: #fff;">
									<a href="javascript:" onclick="CONFIG_SITE_API.openManual('readnumber')" class="text-14">
										<div class="card-body">
											<div style="font-size: 15px;"><strong>쇼핑몰 세금신고?</strong></div>
											<div>리드넘버 절세세무 시작하기</div>
										</div>
									</a>
								</div>
							</div>
							<div class="item">
								<div class="dashboard_banner_wrap card" style="background:#0655AA url(https://vendor-cdn.imweb.me/images/banner_easywinner_600_172.png) no-repeat; background-size: 100%; color: #fff;">
									<a href="javascript:" onclick="CONFIG_SITE_API.openManual('easywinner')">
										<div class="card-body">
											<div class="text-14" style="letter-spacing: -1px">제일 쉬운 쇼핑몰 통합관리 <strong>이지위너</strong></div>
											<div>2주 무료체험 + 결제시 1개월 보너스</div>
										</div>
									</a>
								</div>
							</div>
							<div class="item">
								<div id="dashboard_banner_wrap_kakaosync" class="dashboard_banner_wrap kakaosync card" style="background:#FFDA01 url(../common/img/dashboard_banner_kakaosync.png?v2) no-repeat; background-size: 100%; color: #fff;">
									<a href="/admin/config/oauth" class="text-14 text-default">
										<div class="card-body">
											<div>회원가입과 채널추가를 한번에!</div>
											<div><strong>카카오싱크</strong> 시작하기</div>
										</div>
									</a>
									<!--<a onclick="closeBanner('kakaosync');" href="javascript:;" style="position: absolute; top:4px; right: 4px; padding: 5px; opacity: 0.8; font-size:11px;" class="text-default"><i class="btl bt-times"></i></a>-->
								</div>
							</div>
					</div>
					

						<div id="dashboard_banner_wrap_adbot" class="dashboard_banner_wrap adbot card" style="background: url(../common/img/imweb_admin_banner.png?v1) no-repeat; background-size: 100%; color: #fff;">
							<a href="https://adbot.net/event" target="_blank">
								<div class="card-body">
									<div>&nbsp;</div>
									<div>&nbsp;</div>
								</div>
							</a>
							<!--<a onclick="closeBanner('adbot');" href="javascript:;" style="position: absolute; top:4px; right: 4px; padding: 5px; opacity: 0.5; font-size:11px;"><i class="btl bt-times"></i></a>-->
						</div>

														<div id="dashboard_banner_wrap_naver" class="dashboard_banner_wrap card" style="background: url(../common/img/dashboard_naver_pay.png?v1) no-repeat; background-size: 100%; color: #fff;">
									<a href="/admin/config/pg?mode=naver" class="text-14">
										<div class="card-body">
											<div>네이버 페이 신청 시</div>
											<div>아임웹 <strong>1개월 무료</strong> 혜택!</div>
										</div>
									</a>
									<a onclick="closeBanner('naver');" href="javascript:" style="position: absolute; top:4px; right: 4px; padding: 5px; opacity: 0.8; font-size:11px;"><i class="btl bt-times"></i></a>
								</div>
													<div class="card card-sm-padding">
						<div class="card-head">
							<header>운영진 설정</header>
							<a class="float_r text-13 opacity-50 force-padding no-padding-y" href="/admin/member/permission">관리</a>
						</div>
													<div class="card-body no-padding-top">
								<div class="admin_img_wrap clearfix">
																		<div class="float_l">											<a class="inline-blocked" href="/admin/member/list/?mode=add&idx=3052543" data-toggle="tooltip" data-placement="top" title="kittenbeige/ breadcream@naver.com">
											<img class="border-round" src="/common/img/default_profile.png" width="35" height="35">
										</a>
									</div>
																	</div>
							</div>
											</div>
					<div>
											</div>

					<div class="card card-sm-padding">
						<form id="add_memo">
							<input type="hidden" name="write_token" value="YTozOntzOjQ6InRpbWUiO3M6MTQ6IjIwMjEwNjI1MTYyODQwIjtzOjQ6InJhbmQiO3M6MTM6IjNkZTg5YzZmNmUxM2MiO3M6Mzoia2V5IjtpOjgzODE7fQ==">
							<input type="hidden" name="write_token_key" value="8381">
							<div class="card-body card-memo">
								<div class="tabled holder full-width" style="margin-bottom: 5px;">
									<div class="table-cell vertical-middle memo-thumb">
										<img class="border-round" src="/common/img/default_profile.png" width="35" height="35">
									</div>
									<div class="table-cell vertical-middle">
										<div id="memo_writer" class="text-13 text-bold">kittenbeige</div>
									</div>
								</div>

								<div class="memo-body">
									<textarea name="memo" id="memo" class="form-control margin-bottom-xl" rows="1" placeholder="관리자들과 공유할 메모를 남겨주세요"></textarea>
									<div><a href="javascript:" class="btn btn-xs btn-rounded btn-xs-padding btn-default-bright" onclick="DASHBOARD.addMemo($('#add_memo'))">저장</a></div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
	<script>
		function closeBanner(target){
			setCookie('dashboard_banner_close_' + target, 'Y', 7);
			$('#dashboard_banner_wrap_' + target).remove();
		}
		$(function(){
			DASHBOARD.dashboard_init();
		});
		function chkFreeVersion(url){
			console.log('aaa');
			var site_version = 'pro';
			if(site_version === 'free') {
				if(confirm('현재 사용 중인 Free 버전에서는 해당 기능이 제한되어 있습니다. 업그레이드 페이지로 이동할까요?')) {
					window.location.href = '/admin/payment?mode=detail&type=upgrade';
				}
			} else {
				window.location.href = url;
			}
		}

				$('._close_btn').off('click').on('click', function(){
			$('._custom_popover').popover('hide');
		});
		$('._custom_popover').on('shown.bs.popover', function () {
			$('._close_btn').off('click').on('click', function(){
				$('._custom_popover').popover('hide');
			});
		});
		$('.consulting_banner').owlCarousel({
			loop:true,
			items:1,
			margin:0,
			autoplay:true,
			autoplayTimeout:3000
		})
	</script>
<script>	
			$(window).on("keyup", function(e){
				if ( $.cocoaDialog.isOpen() ) {
					$.cocoaDialog.modalControl(e);
				}
				return false;
			});</script>
<!-- BEGIN MENUBAR-->
<button type="button" class="hidden-lg hidden-md toggle-btn" data-dismiss="menubar">
	<span class="sr-only">Toggle navigation</span>
	<i class="btl bt-times"></i>
</button>

<div id="menubar">
	<div class="menubar-scroll-panel">
		<div class="tabled full-width">
			<a href="javascript:" class="holder global_icon_menu dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
				<div style="position: absolute; left: 22px; top: 0; line-height: 36px;">
					<img src="/common/img/unit_kr.png" width="20" height="20">
				</div>
				<div class="brand-holder">
					<span class="title_controls">kittenbeige</span>
				</div>
			</a>
			<ul class="dropdown-menu global_setting animation-dock menu-card-styling">					<li class="holder ">
						<a href="/admin/">
							<div class="tabled">
								<div class="table-cell vertical-middle width-1">
									<img width="30" height="30" src="/common/img/unit_kr.png">
								</div>
								<div class="table-cell vertical-middle domain">
									<div class="inline-blocked">
										<span class="domain_name">kittenbeige</span>
									</div>
									<span data-original-title="일반 방문자의 접속이 제한됩니다. 글로벌 버전으로 업그레이드 해주세요" data-toggle="tooltip" class="badge" data-placement="top" style="margin-left: 5px; vertical-align: top;">미결제</span>
																			<div class="text-gray-bright text-12">kittenbeige.imweb.me</div>
																	</div>
							</div>
						</a>
						<div class="tools">
													</div>
					</li>
					<li class="border-top"><a href="javascript:;" onclick="SITE_MANAGE.openAddUnit('S201908169655451202655')" class="text-primary" style="padding-top: 15px;">새 언어 사이트 추가</a></li></ul>		</div>
		<ul id="main-menu" class="gui-controls"><li class='  ' data-title='design_mode'><a href='javascript:;' onclick=' if(confirm("만료된 사이트는 디자인 모드 이용이 불가합니다. 결제 페이지로 이동하시겠습니까?")){
					window.location.href="http://imweb.me/price?idx&128451";
				}else{
					window.location.href="/admin";
				}'  ><div class="gui-icon"><i class="db-wand"></i></div><span class='title title_controls'>디자인모드</span></a></li><li class='  ' data-title='preview'><a href='//kittenbeige.imweb.me'    target="_blank" ><div class="gui-icon"><i class="db-preview"></i></div><span class='title title_controls'>사이트 바로가기</span></a></li><li class='spacer'></li><li class='top-menu'><a href='javascript:;' onclick='DASHBOARD.openSiteManagementDialog(this);'><span>사이트 관리</span><i class='btm bt-plus-circle'></i></a></li><li class='  ' data-title='dashboard'><a href='/admin//'  class=" active"  ><div class="gui-icon"><i class="db-dashboard"></i></div><span class='title title_controls'>대시보드</span></a></li><li class=' gui-folder ' data-title='member'><a href='/admin/member'  class="sidebar-nav-menu"  onclick="return false;"  ><div class="gui-icon"><i class="db-user"></i></div><span class='title title_controls'>사용자 관리</span></a><ul><li class='  ' data-title='member_list'><a href='/admin/member/list'   ><span class='title title_controls'>사용자 목록</span></a></li><li class='  ' data-title='member_msg'><a href='/admin/member/send'   ><span class='title title_controls'>메세지 보내기</span></a></li><li class='  ' data-title='member_permission'><a href='/admin/member/permission'   ><span class='title title_controls'>운영진 설정</span></a></li><li class='  ' data-title='member_mail'><a href='/admin/member/mail'   ><span class='title title_controls'>메일 발송 설정</span></a></li><li class='  ' data-title='member_sms'><a href='/admin/member/sms'   ><span class='title title_controls'>SMS/알림톡 설정</span></a></li></ul></li><li class=' gui-folder ' data-title='shopping'><a href='/admin/shopping'  class="sidebar-nav-menu"  onclick="return false;"  ><div class="gui-icon"><i class="db-shopping-bag"></i></div><span class='title title_controls'>쇼핑</span></a><ul><li class='  ' data-title='shopping_product'><a href='/admin/shopping/product'   ><span class='title title_controls'>상품관리</span></a></li><li class='  ' data-title='shopping_order'><a href='/admin/shopping/order'   ><span class='title title_controls'>주문관리</span></a></li><li class='  ' data-title='shopping_cancel'><a href='/admin/shopping/cancel'   ><span class='title title_controls'>취소관리</span></a></li><li class='  ' data-title='shopping_return'><a href='/admin/shopping/return'   ><span class='title title_controls'>반품관리</span></a></li><li class='  ' data-title='shopping_exchange'><a href='/admin/shopping/exchange'   ><span class='title title_controls'>교환관리</span></a></li><li class='  ' data-title='shopping_review'><a href='/admin/shopping/review'   ><span class='title title_controls'>구매평 관리</span></a></li><li class='  ' data-title='shopping_answers'><a href='/admin/shopping/answers'   ><span class='title title_controls'>문의관리</span></a></li><li class='  ' data-title='member_mileage'><a href='/admin/shopping/mileage'   ><span class='title title_controls'>적립금 관리</span></a></li><li class='  ' data-title='shopping_coupon'><a href='/admin/shopping/coupon'   ><span class='title title_controls'>쿠폰</span></a></li><li class='  ' data-title='shopping_naver'><a href='/admin/shopping/naver'   ><span class='title title_controls'>네이버/카카오 쇼핑</span></a></li><li class='  ' data-title='shopping_config'><a href='/admin/shopping/config'   ><span class='title title_controls'>쇼핑 환경설정</span></a></li></ul></li><li class=' gui-folder animated animated-hidden' data-title='booking'><a href='/admin/booking'  class="sidebar-nav-menu"  onclick="return false;"  ><div class="gui-icon"><i class="db-calendar"></i></div><span class='title title_controls'>예약</span></a><ul><li class='  ' data-title='booking_product'><a href='/admin/booking/product'   ><span class='title title_controls'>객실/사이트 관리</span></a></li><li class='  ' data-title='booking_order_cal'><a href='/admin/booking/order_cal'   ><span class='title title_controls'>예약 현황 관리</span></a></li><li class='  ' data-title='booking_order'><a href='/admin/booking/order'   ><span class='title title_controls'>예약 신청 관리</span></a></li><li class='  ' data-title='booking_review'><a href='/admin/booking/review'   ><span class='title title_controls'>후기 관리</span></a></li><li class='  ' data-title='booking_answers'><a href='/admin/booking/answers'   ><span class='title title_controls'>문의관리</span></a></li><li class='  ' data-title='booking_option'><a href='/admin/booking/option'   ><span class='title title_controls'>옵션 관리</span></a></li><li class='  ' data-title='booking_season'><a href='/admin/booking/season'   ><span class='title title_controls'>성수기/휴일 관리</span></a></li><li class='  ' data-title='booking_config'><a href='/admin/booking/config'   ><span class='title title_controls'>예약 설정</span></a></li></ul></li><li class=' gui-folder ' data-title='contents'><a href='/admin/contents'  class="sidebar-nav-menu"  onclick="return false;"  ><div class="gui-icon"><i class="db-pencil"></i></div><span class='title title_controls'>컨텐츠 관리</span></a><ul><li class='  ' data-title='contents_post'><a href='/admin/contents/post'   ><span class='title title_controls'>게시물 관리</span></a></li><li class='  ' data-title='contents_comment'><a href='/admin/contents/comment'   ><span class='title title_controls'>댓글 관리</span></a></li><li class='  ' data-title='contents_form'><a href='/admin/contents/form'   ><span class='title title_controls'>입력폼 관리</span></a></li><li class='  ' data-title='contents_map'><a href='/admin/contents/map'   ><span class='title title_controls'>지도 관리</span></a></li><li class='  ' data-title='contents_calendar'><a href='/admin/contents/calendar'   ><span class='title title_controls'>일정 관리</span></a></li><li class='  ' data-title='contents_gallery'><a href='/admin/contents/gallery'   ><span class='title title_controls'>갤러리 관리</span></a></li><li class='  ' data-title='contents_report'><a href='/admin/contents/report'   ><span class='title title_controls'>신고 관리</span></a></li></ul></li><li class=' gui-folder ' data-title='marketing'><a href='/admin/marketing'  class="sidebar-nav-menu"  onclick="return false;"  ><div class="gui-icon"><i class="db-megaphone"></i></div><span class='title title_controls'>마케팅 관리</span><span class='badge_icon' style='background-color: #00bb73;'>N</span></a><ul><li class='  ' data-title='marketing_adbot'><a href='https://adbot.net/event'    target="_blank" ><span class='title title_controls'>통합 광고 관리(아임웹 애드)</span><span class='badge_icon' style='background-color: #00bb73;'>N</span></a></li><li class='  ' data-title='marketing_trace'><a href='/admin/marketing/trace'   ><span class='title title_controls'>전환추적/리타게팅 관리</span></a></li><li class='  ' data-title='marketing_facebook_fbe'><a href='/admin/marketing/facebook_fbe'   ><span class='title title_controls'>페이스북 마케팅(FBE)</span></a></li><li class='  ' data-title='marketing_acecounter'><a href='/admin/marketing/ace_counter'   ><span class='title title_controls'>에이스카운터</span></a></li></ul></li><li class=' gui-folder ' data-title='app'><a href='/admin/app'  class="sidebar-nav-menu"  onclick="return false;"  ><div class="gui-icon"><i class="db-mobile"></i></div><span class='title title_controls'>App 신청 및 관리</span></a><ul><li class='  ' data-title='app_setting'><a href='/admin/app/setting'   ><span class='title title_controls'>안내 및 신청</span></a></li><li class='  ' data-title='app_android'><a href='/admin/app/android'   ><span class='title title_controls'>Android 관리</span></a></li><li class='  ' data-title='app_ios'><a href='/admin/app/ios'   ><span class='title title_controls'>iOS 관리</span></a></li></ul></li><li class=' gui-folder ' data-title='stat'><a href='/admin/stat'  class="sidebar-nav-menu"  onclick="return false;"  ><div class="gui-icon"><i class="db-status-up"></i></div><span class='title title_controls'>통계</span></a><ul><li class='  ' data-title='stat_summary'><a href='/admin/stat/summary'   ><span class='title title_controls'>개요</span></a></li><li class='  ' data-title='stat_analytics'><a href='/admin/stat/analytics'   ><span class='title title_controls'>기간별 분석</span></a></li><li class='  ' data-title='stat_shopping'><a href='/admin/stat/shopping'   ><span class='title title_controls'>매출</span><span class='badge_icon' style='background-color: #00bb73;'>Beta</span></a></li><li class='  ' data-title='stat_feedback'><a href='/admin/stat/feedback'   ><span class='title title_controls'>컨텐츠 반응</span></a></li><li class='  ' data-title='stat_visitor'><a href='/admin/stat/visitor'   ><span class='title title_controls'>방문자 통계</span></a></li><li class='  ' data-title='stat_site'><a href='/admin/stat/site'   ><span class='title title_controls'>유입 사이트</span></a></li><li class='  ' data-title='stat_keyword'><a href='/admin/stat/keyword'   ><span class='title title_controls'>유입 검색어</span></a></li><li class='  ' data-title='stat_page'><a href='/admin/stat/page'   ><span class='title title_controls'>많이 방문한 페이지</span></a></li><li class='  ' data-title='stat_storage'><a href='/admin/stat/storage'   ><span class='title title_controls'>저장공간</span></a></li><li class='  ' data-title='stat_traffic'><a href='/admin/stat/traffic'   ><span class='title title_controls'>트래픽</span></a></li></ul></li><li class='  ' data-title='payment'><a href='/admin/payment'   ><div class="gui-icon"><i class="icon-rocket"></i></div><span class='title title_controls'>결제/부가서비스</span></a></li><li class=' gui-folder ' data-title='config'><a href='/admin/config'  class="sidebar-nav-menu"  onclick="return false;"  ><div class="gui-icon"><i class="db-settings"></i></div><span class='title title_controls'>환경설정</span></a><ul><li class='  ' data-title='config_default'><a href='/admin/config/default'   ><span class='title title_controls'>기본 설정</span></a></li><li class='  ' data-title='config_localize'><a href='/admin/config/localize'   ><span class='title title_controls'>언어/지역/통화</span></a></li><li class='  ' data-title='config_pg'><a href='/admin/config/pg'   ><span class='title title_controls'>전자결제(PG) 설정</span></a></li><li class='  ' data-title='config_domain'><a href='/admin/config/domain'   ><span class='title title_controls'>도메인 구입 및 설정</span></a></li><li class='  ' data-title='config_ssl'><a href='/admin/config/ssl'   ><span class='title title_controls'>SSL(보안서버) 구입 및 설정</span></a></li><li class='  ' data-title='config_security'><a href='/admin/config/security'   ><span class='title title_controls'>보안 및 개인정보 보호</span></a></li><li class='  ' data-title='config_membership'><a href='/admin/config/membership'   ><span class='title title_controls'>가입 및 그룹 설정</span></a></li><li class='  ' data-title='config_seo'><a href='/admin/config/seo'   ><span class='title title_controls'>SEO, 헤더설정</span></a></li><li class='  ' data-title='config_etc'><a href='/admin/config/etc'   ><span class='title title_controls'>약관 설정</span></a></li><li class='  ' data-title='config_popup'><a href='/admin/config/popup'   ><span class='title title_controls'>팝업/배너 관리</span></a></li><li class='  ' data-title='config_adult'><a href='/admin/config/adult'   ><span class='title title_controls'>본인인증/성인인증</span></a></li><li class='  ' data-title='config_oauth'><a href='/admin/config/oauth'   ><span class='title title_controls'>소셜 로그인 / API 설정</span></a></li><li class='  ' data-title='config_chat'><a href='/admin/config/chat'   ><span class='title title_controls'>실시간 상담 설정</span></a></li><li class='  ' data-title='config_find_designer'><a href='/admin/config/find_designer'   ><span class='title title_controls'>디자이너/리셀러 찾기</span></a></li><li class='  ' data-title='config_api_v2'><a href='/admin/config/rest_v2'   ><span class='title title_controls'>외부 서비스 연동 (API)</span></a></li></ul></li><li class='spacer'></li><li class='top-menu'><div><span>리소스</span></div></li><li class='  ' data-title='support'><a href='//imweb.me/customer'    target="_blank" ><div class="gui-icon"><i class="db-comments"></i></div><span class='title title_controls'>고객지원</span></a></li><li class=' gui-folder ' data-title='campus'><a href='edu'  class="sidebar-nav-menu"  onclick="return false;"  ><div class="gui-icon"><i class="db-graduation-cap"></i></div><span class='title title_controls'>아임웹 교육</span></a><ul><li class='  ' data-title='campus_edu'><a href='https://imweb.me/edu'    target="_blank" ><span class='title title_controls'>교육 일정/신청</span></a></li><li class='  ' data-title='campus_video'><a href='https://imweb.me/video_lecture'    target="_blank" ><span class='title title_controls'>동영상 강의</span></a></li></ul></li><li class='  ' data-title='consulting_design'><a href='https://imweb.me/find_designer'    target="_blank" ><div class="gui-icon"><i class="db-glasses"></i></div><span class='title title_controls'>디자이너 찾기</span></a></li></ul>		<div class="height-1"></div>
			<div class="menubar-foot-panel">
				<div class="full-height">
										<a href="javascript:" class="dropdown-toggle block _lang_button" data-toggle="dropdown" tabindex="-1" aria-expanded="false">
						<i class="icon-globe"></i>
						<span class="panel-text">한국어</span>
					</a>
					<ul class="dropdown-menu pull-right">
						<li><a href='javascript:;' onclick="ADMIN.changeAdminLang('KR')">한국어</a></li><li><a href='javascript:;' onclick="ADMIN.changeAdminLang('EN')">English (Beta)</a></li><li><a href='javascript:;' onclick="ADMIN.changeAdminLang('zh-TW')">中文 (繁體)</a></li>					</ul>
				</div>
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

<script>
</script><div style="position: absolute; width: 1px; height: 1px; left: -10000px;" data-ip="221.148.138.28" data-ip2="" data-ip3="221.148.138.28, 130.176.30.164"><input id="dummy_input" type="text" /></div>

<div class="modal" id="cocoaModal" role="dialog" >
	<div class="modal-dialog">
		<div class="modal-content"></div>
	</div>
</div>

<div class="modal submodal"  role="dialog"  id="cocoaSubModal"  style="z-index: 17001">
	<div class="modal-dialog">
		<div class="modal-content"></div>
	</div>
</div>

<iframe name="hidden_frame" id="hidden_frame" style="position: absolute; left: -9999px; width: 1px; height: 1px; top:-9999px;"></iframe>

<!-- Channel Script -->
<script type='text/javascript'>
;window.channelPluginSettings = {"pluginKey":"6a8aaaf7-8e2f-400b-9946-491b9354592f","userId":"M2019081623c572e17bb16","profile":{"name":"\ubc15\uc740\uc601","mobileNumber":"01067073788","email":"breadcream@naver.com","avatarUrl":"\/common\/img\/default_profile.png","memberType":"Pro(\ub9cc\ub8cc)","educationApplication":"N","visitsCount":122,"usingConsulting":"","siteVersion":"Pro(\ub9cc\ub8cc)","isSiteExpired":"Y","makeDate":"2019-08-16 04:11:41","expireDate":"2020-01-27 02:12:00","siteMemberCount":12,"mainDomain":"kittenbeige.imweb.me","imwebDomain":"kittenbeige.imweb.me","useSSL":"","usingTrace":"N","pgName":"\ubbf8\uac00\uc785","usingNpay":false,"npayVersion":"1","totalSalePrice":283500,"lastMonthSalePrice":0},"locale":"ko","zIndex":1000};
(function() {
	var w = window;
	if (w.ChannelIO) {
		return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
	}
	var d = window.document;
	var ch = function() {
		ch.c(arguments);
	};
	ch.q = [];
	ch.c = function(args) {
		ch.q.push(args);
	};
	w.ChannelIO = ch;
	function l() {
		if (w.ChannelIOInitialized) {
			return;
		}
		w.ChannelIOInitialized = true;
		var s = document.createElement('script');
		s.type = 'text/javascript';
		s.async = true;
		s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
		s.charset = 'UTF-8';
		var x = document.getElementsByTagName('script')[0];
		x.parentNode.insertBefore(s, x);
	}
	if (document.readyState === 'complete') {
		l();
	} else if (window.attachEvent) {
		window.attachEvent('onload', l);
	} else {
	window.addEventListener('DOMContentLoaded', l, false);
	window.addEventListener('load', l, false);
	}
})();
</script>



<script>
	</script>
</body>
</html>