<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네비게이션</title>
<!-- jQuery -->
<script src="resources/Bootstrap/vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="resources/Bootstrap/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="resources/Bootstrap/vendor/metisMenu/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="resources/Bootstrap/dist/js/sb-admin-2.js"></script>



<!-- Bootstrap Core CSS -->
<link href="resources/Bootstrap/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="resources/Bootstrap/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/Bootstrap/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="resources/Bootstrap/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

</head>
<body>
	<nav class="navbar navbar-default navbar-static-top" role="navigation"
		style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">RB-erp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
		</div>
		<!-- /.navbar-header -->
		<ul class="nav navbar-nav">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">인사<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">근태 현황</a></li>
					<li><a href="#">직원 등록</a></li>
					<li><a href="#">직원 리스트 </a></li>
					<li><a href="#">퇴사자 리스트</a></li>
					<li><a href="#">부서항목 관리</a></li>
					<li><a href="#">직급항목 관리</a></li>
					<li><a href="#">달력 보기(휴가등록)</a></li>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">급여<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">수당항목 관리 </a></li>
					<li><a href="#">직원 급여명세서 리스트</a></li>
					<li><a href="#">월급여대장 관리</a></li>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">자재/생산품<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">자재/생산품 등록</a></li>
					<li><a href="#">자재/생산품 리스트</a></li>
					<li><a href="#">입고/출고 관리</a></li>
					<li><a href="#">자재 발주서 등록</a></li>
					<li><a href="#">자재 발주서 리스트</a></li>
					<li><a href="#">폐기 관리</a></li>
					<li><a href="#">생산요청 등록</a></li>
					<li><a href="#">생산요청 리스트</a></li>
					<li><a href="#">자재요청 등록</a></li>
					<li><a href="#">자재요청 리스트</a></li>
					<li><a href="#">생산일지 달력</a></li>
					<li><a href="#">자재용 달력</a></li>
					<li><a href="#">이용자 달력</a></li>
				</ul></li>
		</ul>


		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i>내정보</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i>회원탈퇴</a></li>
					<li class="divider"></li>
					<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>로그아웃</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		<!--사이드바  -->
		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<!-- 	<li><a href="index.html"><i class="fa fa-dashboard fa-fw"></i>
								Dashboard</a></li> -->
					<li><a href="#"><i class="glyphicon glyphicon-briefcase"></i>
							인사<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="flot.html">근태 현황</a></li>
							<li><a href="morris.html">직원 등록</a></li>
							<li><a href="morris.html">직원 리스트</a></li>
							<li><a href="morris.html">퇴사자 리스트</a></li>
							<li><a href="morris.html">부서항목 관리</a></li>
							<li><a href="morris.html">직급항목 관리</a></li>
							<li><a href="morris.html">달력 보기(휴가등록)</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<!-- <li><a href="tables.html"><i class="fa fa-table fa-fw"></i>
								</a></li>
						 -->
					<!-- <li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>
								</a></li>
					 -->
					<li><a href="#"><i class="glyphicon glyphicon-usd"></i>급여<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="panels-wells.html">수당항목 관리</a></li>
							<li><a href="buttons.html">직원 급여명세서 리스트</a></li>
							<li><a href="notifications.html">월급여대장 관리</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<li><a href="#"><i class="glyphicon glyphicon-plane"></i>
							자재/생산품<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">자재/생산품 등록</a></li>
							<li><a href="#">자재/생산품 리스트</a></li>
							<li><a href="#">입고/출고 관리</a></li>
							<li><a href="#">자재 발주서 등록</a></li>
							<li><a href="#">자재 발주서 리스트</a></li>
							<li><a href="#">폐기 관리</a></li>
							<li><a href="#">생산요청 등록</a></li>
							<li><a href="#">생산요청 리스트</a></li>
							<li><a href="#">자재요청 등록</a></li>
							<li><a href="#">자재요청 리스트</a></li>
							<li><a href="#">입고/출고 관리</a></li>
							<li><a href="#">생산일지 달력</a></li>
							<li><a href="#">자재용 달력</a></li>
							<li><a href="#">이용자 달력</a></li>
						
						</ul>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side -->
	</nav>

	<!-- ////////////////////////////////////// -->

	<div id="page-wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12" id='main'>
				
				</div> 
			</div>
		</div>
	</div>





</body>

</html>