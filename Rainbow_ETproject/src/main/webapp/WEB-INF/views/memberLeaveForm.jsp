<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta name="viewprot" content="width=device-width, initial-scale=1" charset="UTF-8">
<title>이용약관 동의 페이지</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
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

.modal {
	text-align: center;
	align-content: center;
	align-items: center;
	align-self: center;
}

#one {
	float: right;
	margin: 10%;
	top: 30%;
}

#two {
	border: 20%;
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
				<a class="navbar-brand" href="index">상호 로고</a>
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
			
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="panel panel-success" align="center">
					<div class="panel-heading">
						<h3 class="panel-title">
							<span class="glyphicon glyphicon-tags"></span> &nbsp;&nbsp;약관동의
						</h3>
					</div>
					<div class="panel-body">
						<div class="media"></div>
					</div>
					<table class="table">
						<tr>
							<td>
								<div>
									<font color="#f67001" size=4>01</font> <font size=3>이용약관</font>
								</div>
							</td>
						</tr>
						<tr>
							<td><textarea class="form-control" readonly="readonly"
									rows=5>
					가. 탈퇴시 아이디 패스워드는 즉시 삭제 됩니다.
					나. 탈퇴시 정보는 복수 할 수 없습니다.
					다. 탈퇴하지 말아주세요 ㅠㅠ
					라. 가지마~
 
					</textarea></td>
						</tr>
						<tr align="right">
							<td><input type="checkbox"  id="pv1" >&nbsp;&nbsp;이용약관에 동의합니다. <br> <br></td>
						</tr>
						<tr>
							<td>
								<div>
									<font color="#f67001" size=4>02</font> <font size=3>개인정보
										수집 및 이용에 대한 안내</font>
								</div>
							</td>
						</tr>
						
            <tr align="center">
            <td>
            <input type="button" id="nextCancle" class="btn btn-danger btn-lg" onclick="leaveFunction();" value="회원  탈퇴" />
            </td>
            </tr>
					</table>
				</div>
			</div>
		</div>
	</div>
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
		<!-- <input type="button" id="nextCancle" onclick="cancleFunction();" value="취소" /> -->
	</footer>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
	<script>
	
		function leaveFunction() {
			//location.href="joinForm";
			location.href = "L_memberLeave_s";  
		/* 	if (document.getElementById('pv1').cheked == true) {
				 location.href = "L_memberLeave_s"; 
			} else {
				alert("약관에 동의해 주세요.");
			}  */ 
		}

		function cancleFunction() {

			location.href = "index";

		}
		
	</script>
</body>
</html>