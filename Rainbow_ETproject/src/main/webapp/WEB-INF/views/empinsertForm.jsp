<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>직원 등록</title>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<style>
.container {
	margin-top: 10%;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-1"></div>
			<div class="col-xs-10">
				<div class="panel panel-default" align="center">
					<div class="panel-heading">
						<h2 class="panel-title">
							<span class="glyphicon glyphicon-tags"></span> &nbsp;&nbsp;직원등록
						</h2>
					</div>
					<div class="panel-body">
						<div class="media"></div>
					</div>
					<form class="form-inline" role="form" action="empinsert"
						method="post" onsubmit="return formcheck();">
						<table class="table">
							<tr>
								<td colspan="5">
									<div>
										<font color="black" size=6>&nbsp;&nbsp;01</font> <font size=5>&nbsp;&nbsp;직원정보</font>
									</div>
								</td>
							</tr>
							<tr align="center">
								<td colspan="1" rowspan="4" align="left"
									style="padding-left: 50px"><img
									src='${pageContext.request.contextPath}/resources/test/No1.jpg'
									style="height: 150px; width: 140px"></td>
								<td colspan="2" align="left"><font size=4>사 원 번 호 :
								</font> <input type="text" class="form-control" size="20" name='e_code'
									placeholder="필수입력사항입나디." id='code'>&nbsp;&nbsp;
									<button type="button" onclick="multicheck()">중복검사</button></td>
								<td colspan="2" align="left"><font size=4>사 원 이 름 :
								</font> <input type="text" class="form-control" size="20" name='e_name'
									placeholder="필수입력사항입나디." id='name'></td>
							</tr>
							<tr>
								<td colspan="2" align="left"><font size=4>주 민 번 호 :
								</font> <input type="text" class="form-control" size="20"
									name='e_idnum' placeholder="필수입력사항입나디." id='pnum'></td>
								<td colspan="3" align="left"><font size=4>입 사 일 : </font> <input
									type="text" class="form-control" size="20" name='e_indate'
									placeholder="필수입력사항입나디." id='hire'></td>
							</tr>
							<tr>
								<td colspan="2" align="left"><font size=4>이 메 일 : </font> <input
									type="text" class="form-control" size="20" name='e_email'></td>
								<td colspan="3" align="left"><font size=4>전 화 번 호 :
								</font> <input type="text" class="form-control" size="20"
									name='e_phone' placeholder="필수입력사항입나디." id='phone'></td>
							</tr>
							<tr>
								<td colspan="2" align="left"><font size=4>은 행 명 : </font> <input
									type="text" class="form-control" size="20" name='e_bankname'></td>
								<td colspan="3" align="left"><font size=4>계 좌 번 호 :
								</font> <input type="text" class="form-control" size="20"
									name='e_banknum'></td>
							</tr>
							<tr>
								<td colspan="5" align="center"><font size=4>주 소: </font> <input
									type="text" class="form-control" size="95" name='e_address'
									placeholder="필수입력사항입나디." id='address'></td>
							</tr>
							<tr>
								<td colspan="5" align="center"><font size=4>비 고: </font> <input
									type="text" class="form-control" size="95" name='e_bigo'></td>
							</tr>
							<tr>
								<td colspan="2" align="right"><font size=4>기 본 급 :</font><input
									type="text" class="form-control" size="20" name='e_basicpay'></td>
								<td colspan="3" align="center"><font size=4>재 직 상 태
										:</font><input type="text" class="form-control" size="8"
									name='e_state' placeholder="재직1 퇴사 2" id='state'></td>
							</tr>
							<tr>
								<td colspan="2" align="right"><font size=4>직 급 : </font> <input
									type="text" class="form-control" size="20" name='rank_name'></td>
								<td colspan="3" align="center"><font size=4>부 서 명 :
								</font> <input type="text" class="form-control" size="20"
									name='dept_name'></td>
							</tr>
							<tr align="center">
								<td colspan="4"><input type="submit"
									class="btn btn-danger btn-lg" value="직 원 등 록"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
var request = new XMLHttpRequest();
	function multicheck(){
		request.open("post","./ajmulticheck?code="+encodeURIComponent(document
				.getElementById('code').value),true);
		request.onreadystatechange = checkprocess;
		request.send(null);
	}
	function checkprocess(){
		if (request.readyState == 4
				&& request.status == 200) {
			var result =request.responseText
			console.log(result);
		document.getElementById('code').focus();
		}
	}


	function formcheck(){
		var code= document.getElementById('code').value;
		var name= document.getElementById('name').value;
		var pnum= document.getElementById('pnum').value;
		var hire= document.getElementById('hire').value;
		var phone= document.getElementById('phone').value;
		var address= document.getElementById('address').value;
		var state= document.getElementById('state').value;
		
		
		if(code =='' || code ==null){
			alert("코드는 반드시 입력해주세요")
			document.getElementById('code').focus();
			return false;
		}else if (name == "" || name == null) {
			alert("이름은 반드시 입력해주세요");
			document.getElementById('name').focus();
			return false;
		
		}else if (pnum == "" || pnum == null) {
			alert("주민번호는 반드시 입력해주세요");
			document.getElementById('pnum').focus();
			return false;
		
		}else if (hire == "" || hire == null) {
			alert("입사일은 반드시 입력해주세요");
			document.getElementById('hire').focus();
			return false;
		}else if (phone == "" || phone == null) {
			alert("전화번호는 반드시 입력해주세요");
			document.getElementById('phone').focus();
			return false;
		}else if (address == "" || address == null) {
			alert("주소는 반드시 입력해주세요");
			document.getElementById('address').focus();
			return false;
		}else if (state == "" || state == null) {
			alert("재직상태는 반드시 입력해주세요");
			document.getElementById('state').focus();
			return false;
		}
		alert('성공');
		return
		}
		

</script>
</html>


