<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네비게이션</title>
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
		<!-- 상단메뉴 -->
		<ul class="nav navbar-nav">

			<!-- 인사 -->
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">인사<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">근태 현황</a></li>
					<li><a href="#">직원 리스트 </a></li>
					<li><a href="#">퇴사자 리스트</a></li>
					<li><a href="#">부서항목 관리</a></li>
					<li><a href="#">직급항목 관리</a></li>
					<li><a href="#">달력 보기(휴가등록)</a></li>
				</ul></li>

			<!-- 급여 -->
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">급여<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">수당항목 관리 </a></li>
					<li><a href="#">직원 급여명세서 리스트</a></li>
					<li><a href="#">월급여대장 관리</a></li>
				</ul></li>

			<!-- 자재/생산품 -->
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">자재/생산품<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a onclick=''>자재/생산품 리스트</a></li>
					<li><a href="#">입고/출고 관리</a></li>
					<li><a href="#">자재 발주서 리스트</a></li>
					<li><a href="#">폐기 관리</a></li>
					<li><a href="#">생산요청 리스트</a></li>
					<li><a href="#">자재요청 리스트</a></li>
				</ul></li>

			<!-- 달력 -->
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">달력<span class="caret"></span></a>
				<ul class="dropdown-menu">

					<li><a href="#">입고/출고 달력</a></li>
					<li><a href="#">자재 발주서 달력</a></li>
					<li><a href="#">폐기 달력</a></li>
					<li><a href="#">생산요청 달력</a></li>
					<li><a href="#">자재요청 달력</a></li>
				</ul></li>

			<!-- 우측 내정보 -->
		</ul>
		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
					<i class="fa fa-caret-down"></i></a>

				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i>내정보</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i>회원탈퇴</a></li>
					<li class="divider"></li>
					<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>로그아웃</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		<!-- ///////////상단메뉴 __END -->


		<!-- 사이드메뉴 -->
		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">

					<li><a href="#"><i class="glyphicon glyphicon-briefcase"></i>
							인사<span class="fa arrow"></span></a>

						<ul class="nav nav-second-level">
							<li><a href="flot.html">근태 현황</a></li>
							<li><a href="morris.html">직원 리스트</a></li>
							<li><a href="morris.html">퇴사자 리스트</a></li>
							<li><a href="morris.html">부서항목 관리</a></li>
							<li><a href="morris.html">직급항목 관리</a></li>
							<li><a href="morris.html">달력 보기(휴가등록)</a></li>
						</ul></li>

					<li><a href="#"><i class="glyphicon glyphicon-usd"></i>급여<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="panels-wells.html">수당항목 관리</a></li>
							<li><a href="buttons.html">직원 급여명세서 리스트</a></li>
							<li><a href="notifications.html">월급여대장 관리</a></li>
						</ul></li>

					<li><a href="#"><i class="glyphicon glyphicon-plane"></i>
							자재/생산품<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="materialInfoList?pageNum=1&ajaxNum=1">자재/생산품 리스트</a></li>
							<li><a href="#">입고/출고 관리</a></li>
							<li><a href="#">자재 발주서 리스트</a></li>
							<li><a href="#">폐기 관리</a></li>
							<li><a href="#">생산요청 리스트</a></li>
							<li><a href="#">자재요청 리스트</a></li>
						</ul></li>

					<li><a href="#"><i class="glyphicon glyphicon-plane"></i>
							달력<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">입고/출고 달력</a></li>
							<li><a href="#">자재 발주서 리스트</a></li>
							<li><a href="#">폐기 달력</a></li>
							<li><a href="#">생산요청 달력</a></li>
							<li><a href="#">자재요청 달력</a></li>
						</ul></li>

				</ul>


			</div>

		</div>
		<!-- ///////////사이드메뉴 __END -->
		
		
	</nav>
</body>
<script type="text/javascript">

function materialurlGo(Url){
	if(Url==1){
		alert('마테리얼 리스트 이동');	
	}
	else if (Url==2){
		
	}
	else if (Url==3){
		
	}else{
		alert('틀렷씁니다');
	}	
}
</script>
</html>