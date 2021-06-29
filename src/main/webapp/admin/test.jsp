<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>모바일 토글 메뉴 - FMW</title>
	<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#nav ul.sub").hide();
 			$("#nav ul.menu li").click(function(){
				$("ul",this).slideToggle("fast");
			});
		});
	</script>
	<style>
	/* #nav { font-family:'arial'; }
	#nav ul{ width:100%; margin:0; padding:0; }
	#nav ul.menu li{ position:relative; float:left; width:100%; list-style-type:none; font-size:40px;}
	#nav ul.menu li a{ display:block; width:100%; height:100%; line-height:100px; text-indent:30px; color:#000; font-weight:bold; text-decoration:none; }
	#nav ul.menu li a:hover{ background:#eee; }
	#nav ul.menu li .sub a{ position:relative; float:left; display:block; width:100%; z-index:999; background:#ccc; }
	#nav ul.menu li .sub a:hover{ background:#444; color:#fff; } */
	</style>
</head>
<body>
	<div id="nav">
		<ul class="menu">
			<li><a href="#">MENU 1</a>
				<ul class="sub">
					<li><a href="#">SUB MENU 1-1</a></li>
					<li><a href="#">SUB MENU 1-2</a></li>
				</ul>
			</li>
			<li><a href="#">MENU 2</a>
				<ul class="sub">
					<li><a href="#">SUB MENU 2-1</a></li>
					<li><a href="#">SUB MENU 2-2</a></li>
					<li><a href="#">SUB MENU 2-3</a></a></li>
				</ul>
			</li>
			<li><a href="#">MENU 3</a>
				<ul class="sub">
					<li><a href="#">SUB MENU 3-1</a></li>
					<li><a href="#">SUB MENU 3-2</a></li>
					<li><a href="#">SUB MENU 3-3</a></a></li>
				</ul>
			</li>
		</ul>
	</div>
</body>
</html>