<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta name="viewprot" content="width=device-width , initial-scale=1"
	charset="UTF-8">
<title>회원가입 페이지</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style type="text/css">
#fot {                /*풋터 */
	left: 0;
	height:5%;
	bottom: 0;
	width: 100%;
	padding: 15px 0;
	text-align: center;
	color: white;
}


</style>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp">상호 & 로고</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">회사소개<span class="sr-only"></span></a></li>
					<li><a href="#">회사비전</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">메뉴<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">비프버거</a></li>
							<li><a href="#">치킨버거</a></li>
							<li><a href="#">수제버거</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a class="btn btn-default" data-target="#modal2"
								data-toggle="modal">로그인</a></li>
							<li><a class="btn btn-default" href="#">회원가입</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-xs-1"></div>
			<div class="col-xs-10">
				<div class="panel panel-default" align="center">
					<div class="panel-heading">
						<h2 class="panel-title">
							<span class="glyphicon glyphicon-tags"></span> &nbsp;&nbsp;회원가입
						</h2>
					</div>
					<div class="panel-body">
						<div class="media"></div>
					</div>
					<form class="form-inline" role="form">
						<table class="table">
							<tr>
								<td colspan="5">
									<div>
										<font color="#f67001" size=6>&nbsp;&nbsp;01</font> <font
											size=5>&nbsp;&nbsp;회사정보</font>
									</div>
								</td>
							</tr>
							<tr align="center">
								<td colspan="2"><font size=4>&nbsp;회&nbsp;사&nbsp;명&nbsp;:&nbsp;</font>
								<input type="text" class="form-control"></td>
								<td colspan="3" align="left"><font size=4>&nbsp;대&nbsp;&nbsp;&nbsp;표&nbsp;&nbsp;&nbsp;자&nbsp;&nbsp;:&nbsp;</font>
								<input type="text" class="form-control" size="35"></td>

							</tr>
							<tr align="center">
								<td colspan="2" align="center"><font size=4>&nbsp;업&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;종&nbsp;:&nbsp;</font>
								<input type="text" class="form-control"></td>
								<td colspan="3" align="left"><font size=4>사업자등록번호:</font>
								<input type="text" class="form-control" size="4">&nbsp;-&nbsp;<input type="text" class="form-control" size="4">&nbsp;-&nbsp;<input type="text" class="form-control" size="4"></td>
								
								
							</tr>
							<tr align="center">
								
								<td colspan="2" align="center"><font size=4>전화번호&nbsp;:</font>
								<input type="text" class="form-control"></td>
								<td colspan="3"></td>
							
							</tr>
							<tr>
							<td colspan="5" align="center"><font size=4>주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소&nbsp;:</font>
								<input type="text" class="form-control" size="95"></td>
							
							</tr>
							<tr>
								<td colspan="4">
									<div>
										<font color="#f67001" size=6>&nbsp;&nbsp;02</font> <font
											size=5>&nbsp;&nbsp; Master ID&자료권리자 정보</font>
									</div>
								</td>
							</tr>
							<tr align="center">
								<td><font size=4>Master ID :</font></td>
								<td><input type="text" class="form-control"> </td>
								<td><font size=4>이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름&nbsp;:&nbsp;</font></td>
								<td><input type="text" class="form-control"></td>
							</tr>
							<tr align="center">
								<td><font size=4>비밀번호 :</font></td>
								<td><input type="password" class="form-control"></td>
								<td><font size=4>비밀번호 확 인 :</font></td>
								<td><input type="password" class="form-control"></td>
							</tr>

							<tr align="center">
								<td><font size=4>회사전화번호 :</font></td>
								<td><input type="text" class="form-control"></td>
								<td><font size=4>&nbsp;모&nbsp;바&nbsp;일&nbsp;:&nbsp;</font></td>
								<td><input type="text" class="form-control"></td>

							</tr>
							<tr align="center">
								<td colspan="4"><input type="submit"
									class="btn btn-danger btn-lg" value="회 원 가 입"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-1"></div>
	 <footer style="background-color: #FAFAFA; color: #0B0B3B" id="fot">
		<hr>
		<div class="container">
			<div class="row">
				<div class="col-sm-3" style="text-align: center;"></div>
				<div class="col-sm-6" style="text-align: center;">
					<h5>Copyright &copy; 2018</h5>
					<h5>저작권자</h5>
				</div>
				<div class="col-sm-3" style="text-align: center;">
					<h4>기업정보</h4>
					기업명(유) l 대표자: 나대박 l<br /> 사업자등록번호: 101-5555-123123
				</div>

			</div>
		</div>
	</footer>
	<!-- <nav class="navbar navbar-default navbar-fixed-bottom">
	
			
			<div class="row">
				<div class="col-sm-3" style="text-align: center;"></div>
				<div class="col-sm-6" style="text-align: center;">
					<h5>Copyright &copy; 2018</h5>
					<h5>저작권자</h5>
				</div>
				<div class="col-sm-3" style="text-align: center;">
					<h4>기업정보</h4>
					기업명(유) l 대표자: 나대박 l<br /> 사업자등록번호: 101-5555-123123
				</div>

			</div>
	</nav> -->

	
</body>
</html>