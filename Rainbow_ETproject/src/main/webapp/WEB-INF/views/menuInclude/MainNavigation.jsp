<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네비게이션</title>
<style>
	 #logOutView{ display:none} 
	 #cheak_id{display:none}
</style>
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
			<a class="navbar-brand" href="/etp">RB-erp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
		</div>
		<!-- 상단메뉴 -->
		<div id="logInView">
		<ul class="nav navbar-top-links navbar-right" >
					<li><div id="cheack_id">${m_id}</div></li>
					<li><a data-target="#modal2" data-toggle="modal" href="#">로그인<span class="sr-only">
						</span></a></li>
					<li><a href="provisionForm">회원가입</a></li>
					
		</ul>
		</div>
		<div id="logOutView">
			<ul class="nav navbar-top-links navbar-right" >
					
					<li><a data-target="#modal2" data-toggle="modal" href="#" onclick="logOut(); return false">로그아웃<span class="sr-only">
						</span></a></li>
		</ul>
		</div>
		<!-- ///////////상단메뉴 __END -->
		
	</nav>
	
<!-- modal -->
	<div class="row" align="center">
		<div class="modal" id="modal2" tabindex="-1">
			<div class="modal-dialog modal-sm">
				<div class="modal-content" id="mo" align="center">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body" style="margin-left: -4%;">
						<div class="container" align="center" id="two">
							<div class="row" align="center">
								<div class="col-md-3 ml-3" align="center">
									<div class="panel panel-primary" align="center">
										<div class="panel-heading" align="center">
											<h3 class="panel-title">
												<span class="glyphicon glyphicon-tags"></span> 로그인
											</h3>
										</div>
								
										<div class="panel-body" align="center">
											<div class="media"></div>
										</div>
										<!--  form action="login" onSubmit="login();return"-->
											<table class="table">
												<tr align="center">
													<td><input type="text" class="form-control" name='m_id' id='m_id'
														placeholder="아이디를 입력해주세요"></td>
												</tr>
												<tr align="center">
													<td><input type="password" class="form-control" name='m_pwd' id='m_pwd'
														placeholder="비밀번호를 입력해주세요"></td>
												</tr>
												<tr align="center">
													<td><input type="button" id="logIn" onclick="login();"
														class="btn btn-primary btn-sm btn-block" value="로 그 인"></td>
												</tr>
												<tr align="center">

													<td><a href="provisionForm">회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp; 
													<a href="#">아이디/비밀번호 찾기</a></td>
												</tr>

											</table>
										<!--/form-->
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
//id cheack
var m_id=$('#cheack_id').text();
if(m_id==null || m_id==""){
	$("#logInView").show();
	$("#logOutView").hide();
}else{
	$("#logInView").hide();
	$("#logOutView").show();
}

$(document).keydown(function(event) {
	if (event.keyCode == '13') {

		login();
	}
});

function login() {
	
	var data = {}
	data["m_id"] = $('input[name=m_id]').val();
	data["m_pwd"] = $('input[name=m_pwd]').val();
	console.log(data["m_id"]);
	console.log(data["m_pwd"]);
	console.log(data);

	
	if(data["m_id"]==="" || data["m_pwd"===""]){
		
		alert("ID또는PASSWARD를 입력 하세요");
		
	}else{
	$.ajax({
		contentType : 'application/json; charset=UTF-8',
		type : 'post',
		url : 'logIn',
		/* data:{"m_id":m_id, "m_pwd":m_pwd},  */
		data : JSON.stringify(data),
		dataType : 'json',
		success : function(data) {
			console.log("나와라ㅠㅠ"+data);
			
			 if (data == "0") {
			 	 location.href = "adminMain"; 
			} else if (data == "1") {
				location.href = "erpmain";
			}
		},
		error : function(error) {
			alert("아이디또는 패스워드가 다릅니다.");
			console.log(error);
		}

	});
	}
};

function logOut() {
	location.href = "logOut";
}
</script>


</html>