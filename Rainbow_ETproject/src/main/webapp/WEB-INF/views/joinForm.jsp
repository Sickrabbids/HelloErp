<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="resources/L_Validation/jquery.validate.min.js"></script>
<style type="text/css">
#fot { /*풋터 */
	left: 0;
	height: 5%;
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
				<a class="navbar-brand" href="index">상호 & 로고</a>
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
					<form class="form-inline" role="form" action="memberJoin"
						onsubmit="return memberJoin();">

						<table class="table">
							<tr>
								<td colspan="5">
									<div>
										<font color="#f67001" size=6>&nbsp;&nbsp;01</font> <font
											size=5>&nbsp;&nbsp;회사정보</font>
									</div>
								</td>
							</tr>

							<tr align="left">
								<td ><font size=4>&nbsp;회&nbsp;사&nbsp;명&nbsp;:&nbsp;</font></td> 
									<td colspan="2"><input type="text" class="form-control" name="m_cname"></td>
							</tr>
							<tr align="left">
								<td ><font size=4>&nbsp;대&nbsp;&nbsp;&nbsp;표&nbsp;&nbsp;&nbsp;자&nbsp;</font></td> 
									<td colspan="2"><input type="text" class="form-control" size="35" name="m_cboss"></td>

							</tr>
							<tr align="left">
								<td align="left"><font size=4>&nbsp;업&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;태&nbsp;:&nbsp;</font></td> 
									<td colspan="2"><input type="text" class="form-control" name="m_ckind"></td>
							</tr>
							<tr align="left">
								<td align="left"><font size=4>&nbsp;종&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목&nbsp;:&nbsp;</font></td> 
									<td colspan="2"> <input type="text" class="form-control" name="m_cubusiness"></td>
							</tr>
							<tr align="left">
								<td align="left"><font size=4>사업자등록번호:</font></td> 
								<td colspan="2" > <input type="text" class="form-control" size="12" name="m_cno"></td>
							</tr>

							<tr align="left">
								<td align="left"><font size=4>전화번호&nbsp;:</font></td>
									<td colspan="2"><input type="text" class="form-control" name="m_cphone"></td>
								<td colspan="3"></td>
							</tr>
							<tr>
								<td align="left"><font size=4>주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소&nbsp;:</font></td>
									<td colspan="4"><input type="text" class="form-control" size="85" name="m_caddress"></td>

							</tr>

							<tr>
								<td colspan="4">
									<div>
										<font color="#f67001" size=6>&nbsp;&nbsp;02</font> <font
											size=5>&nbsp;&nbsp; Master ID&자료권리자 정보</font>
									</div>
								</td>
							</tr>
							<tr align="left">
								<td><font size=4>Master ID :</font></td>
								<td><input type="text" name="m_id" class="form-control"
									value=""></td>
								<td><input type="button" value="중복확인" name="check"
									onclick="openIdCheck();"></td>
								<td><input type='hidden' name='idCheckOn' value='0' /></td>
							</tr>
							<tr align="left">
								<td><font size=4>이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름&nbsp;:&nbsp;</font></td>
								<td><input type="text" class="form-control" name="m_cmname"></td>
							</tr>
							<tr align="left">
								<td><font size=4>비밀번호 :</font></td>
								<td><input type="password" class="form-control"
									name="m_pwd"></td>
							</tr>
							<tr align="left">

								<td><font size=4>비밀번호 확 인 :</font></td>
								<td><input type="password" class="form-control"
									name="m_cheack"></td>
								<td id="lblError"></td>
							</tr>

							<tr align="left">
								<td><font size=4>관리자 전화번호 :</font></td>
								<td><input type="text" class="form-control"
									name="m_cmphone"></td>
							</tr>
							<tr align="left">

								<td><font size=4>관리자 이메일 :</font></td>
								<td><input type="text" class="form-control"
									name="m_cmemail" ></td>
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

</body>

<script>
$(function(){
	$("form").validate({
		sumbitHandler:function(){
			var f = confim("회원가입을 완료 하시겠습니까?");
			if(f){
				return true;
			}else{
				return false;
			}
		},
		rules:{
			 m_id :{ required : true, maxlength :15, /*not null 15*/},
			 
			 m_pwd :{ required : true, maxlength :20,  /*not null 20*/},
			 
			 m_cheack :{ required : true, maxlength :20,  /*not null 20*/},
			 
			 m_cno :{ required : true, maxlength :14, /*not null 14*/  },
			 
			 m_cname :{ required : true, maxlength :50, /*not null 50*/ },
			 
		 	 m_cbusiness :{ maxlength :20, /* null 20*/ },
		 	 
		 	 m_ckind :{ maxlength : 20, /* null 20*/ },
		 	 
		 	 m_caddress :{ required : true, maxlength :100, /*not null 100*/ },
		 	 
		 	 m_cphone :{ required : true, maxlength :13, /*not null 13*/ },
		 	 
		 	 m_cboss :{ required : true, maxlength :15, /*not null 15*/ },
		 	 
		 	 m_cmname :{ maxlength :15, /* null 15*/ },
		 	 
		 	 m_cmphone :{ maxlength :13, /* null 13*/ },
		 	 
		 	 m_cmemail :{ maxlength :50, /* null 13*/ }
		},
		messages :{
			
 			 m_id :{ required : "필수로 입력하세요", maxlength :"최대 {0}글자까지입니다.", /*not null 15*/},
			 
			 m_pwd :{ required : "필수로 입력하세요", maxlength :"최대 {0}글자까지입니다.",  /*not null 20*/},
			 
			 m_cheack :{ required : "필수로 입력하세요", maxlength :"최대 {0}글자까지입니다.",  /*not null 20*/},
			 
			 m_cno :{ required : "필수로 입력하세요", maxlength :"최대 {0}글자까지입니다.", /*not null 14*/  },
			 
			 m_cname :{ required : "필수로 입력하세요", maxlength : "최대 {0}글자까지입니다.", /*not null 50*/ },
			 
		 	 m_cbusiness :{ maxlength :"최대 {0}글자까지입니다.", /* null 20*/ },
		 	 
		 	 m_ckind :{ maxlength : "최대 {0}글자까지입니다.", /* null 20*/ },
		 	 
		 	 m_caddress :{ required : "필수로 입력하세요", maxlength :"최대 {0}글자까지입니다.", /*not null 100*/ },
		 	 
		 	 m_cphone :{ required : "필수로 입력하세요", maxlength :"최대 {0}글자까지입니다.", /*not null 13*/ },
		 	 
		 	 m_cboss :{ required : "필수로 입력하세요", maxlength :"최대 {0}글자까지입니다.", /*not null 15*/ },
		 	 
		 	 m_cmname :{ maxlength :"최대 {0}글자까지입니다.", /* null 15*/ },
		 	 
		 	 m_cmphone :{ maxlength :"최대 {0}글자까지입니다.", /* null 13*/ },
		 	 
		 	 m_cmemail :{ maxlength :"최대 {0}글자까지입니다.", /* null 13*/ }
			
		}
	});	
})
	function openIdCheck() {

		var m_id = $('input[name=m_id]').val();
		idCheckOn = $('input[name=idCheckOn]').val();
		
		
		
		if (m_id == null || m_id == "") {
			alert("아이디를 입력해주세요");
		} else {
			$.ajax({
				type : 'post',
				url : 'L_memberIdMatching_s',
				data : {
					"m_id" : m_id
				},
				dataType : 'text',
				success : function(data) {

					if (data == "0") {
						alert("사용가능한아이디 입니다.");
						
					} else if (data == "1") {
						alert("중복된아이디 입니다.");
					}
					idCheckOn="1";
					console.log("idCheckOn="+idCheckOn);
				},
				error : function(error) {
					alert("error");
					console.log(error);
				}

			});//ajax 끝

		}
		

	}

	$(document).ready(
			function() {
				//[1] lblError 레이어 클리어
				$('input[name=m_pwd]').keyup(function() {
					// $('#lblError').remove(); // 제거
					$('#lblError').text(''); // 클리어
				});
				//[2] 암호 확인 기능 구현
				$('input[name=m_cheack]').keyup(
						function() {
							if ($('input[name=m_pwd]').val() != $(
									'input[name=m_cheack]').val()) {
								$('#lblError').text(''); // 클리어
								$('#lblError').html("암호가 일치하지 않습니다."); // 레이어에 HTML 출력
							} else {
								$('#lblError').text(''); // 클리어
								$('#lblError').text("암호가 일치합니다."); // 레이어에 텍스트 출력
							}
						});
			});

	function memberJoin() {
		var m_id = $('input[name=m_id]').val();
		var m_pwd = $('input[name=m_pwd]').val();
		var m_cheack = $('input[name=m_cheack]').val();
		var m_cno = $('input[name=m_cno]').val();
		var m_cname = $('input[name=m_cname]').val();
		var m_cubusiness = $('input[name=m_cubusiness]').val();
		var m_ckind = $('input[name=m_ckind]').val();
		var m_caddress = $('input[name=m_caddress]').val();
		var m_cphone = $('input[name=m_cphone]').val();
		var m_cboss = $('input[name=m_cboss]').val();
		var m_cmname = $('input[name=m_cmname]').val();
		var m_cmphone = $('input[name=m_cmphone]').val();
		var m_cmemail = $('input[name=m_cmemail]').val();
		
		 if(m_cubusiness==null || m_cubusiness==""){
			 $('input[name=m_cubusiness]').val('미입력');
		 }
	 	 
	 	 if(m_ckind==null || m_ckind==""){
	 		$('input[name=m_ckind]').val('미입력');
	 	 }
	 	 
	 	 if(m_cmname==null || m_cmname=="" ){
	 		$('input[name=m_cmname]').val('미입력');
	 	 }
	 	 
	 	 if(m_cmphone==null || m_cmphone==""){
	 		$('input[name=m_cmphone]').val('미입력');
	 	 }
	 	 
	 	 if(m_cmemail==null || m_cmemail==""){
	 		$('input[name=m_cmemail]').val('미입력');
	 	 } 

		if (idCheckOn == '0') {
			alert("아이디 중복 체크를 해주세요");
			console.log("idCheckOn="+idCheckOn);
		}
		if (m_pwd != m_cheack) {
			alert("패스워드를 다시확인해 주세요");
		}

	}
</script>
</html>