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

<script src="resources/L_Validation/additional-methods.min.js"></script>
<script src="resources/L_Validation/jquery.validate.min.js"></script>
<!-- <script src="resources/L_Validation/messages_ko.min.js"></script> -->

<style>
.container {
	margin-top: 10%;
}
#fileup{
margin-top: 10px;
margin-left: -30px;
}
</style>
</head>
<body>
<script>



var trust=0;
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
			var code= document.getElementById('code').value;
			if(result!=0){
				alert('중복된 사번입니다.');
				document.getElementById('code').focus();
				$('#code').val('');
			}
			else if(code =='' || code ==null){
				alert('사번은 반드시 입력해주세요');
				}
			else if (result==0){
				alert('사용가능한 사번입니다');
				trust=1;
			}
			}
		}

function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader(); 
		reader.onload = function (e) { 
			$('#empimg').attr('src', e.target.result); }
		reader.readAsDataURL(input.files[0]); } }


function test(){
	var code= document.getElementById('code').value;
	var name= document.getElementById('name').value;
	var pnum= document.getElementById('pnum').value;
	var hire= document.getElementById('hire').value;
	var phone= document.getElementById('phone').value;
	var address= document.getElementById('address').value;
	var state= document.getElementById('state').value;
	var state= document.getElementById('state').value;
	var pay= document.getElementById('pay').value;
	
	
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
	}else if (state != "1" && state != "2") {
		alert("재직상태는 1이나2로 입력해주세요");
		document.getElementById('state').focus();
		return false;
	}
	else if (pay == "" || pay == null) {
		alert("기본급은 반드시 입력해주세요");
		document.getElementById('pay').focus();
		return false;
	}else if (trust!=1) {
		alert("중복검사는 반드시 하시기 바랍니다.");
		document.getElementById('code').focus();
		return false;
	}
	 var formData = new FormData($("#fileForm")[0]);
     $.ajax({
         type : 'post',
         url : 'fileUpload',
         data : formData,
         dataType : 'html',
         processData : false,
         contentType : false,
          success : function(data) {
        	  console.log(data);
        	  console.log('성공');
        	  alert(data);
        	  window.opener.location.reload();
        	  self.close();
         },
         error : function(error) {
        	 console.log('실패');
        	 console.log(error);
             console.log(error.status);
         }
     });

}

</script>
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
					<form class="form-inline" role="form" action="empinsert" id='fileForm'
						method="post" enctype="multipart/form-data">

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
									style="padding-left: 50px">

					<img src='${pageContext.request.contextPath}/resources/test/No1.jpg' style="height: 140px; width: 130px" alt='직원사진' id='empimg'>
							<input type="file"id='fileup' name='imgfile' onchange="readURL(this);"></td>
								<td colspan="2" align="left"><font size=4>사 원 번 호 :
								</font> <input type="text" class="form-control" size="15" name='e_code'
									placeholder="필수입력사항입나디." id='code' maxlength="10" required="required">&nbsp;&nbsp;
									<button type="button" onclick="multicheck()">중복검사</button></td>
								<td colspan="2" align="left"><font size=4>사 원 이 름 :
								</font> <input type="text" class="form-control" size="15" name='e_name'
									placeholder="필수입력사항입나디." id='name' maxlength="15" required="required"></td>
							</tr>
							<tr>
								<td colspan="2" align="left"><font size=4>주 민 번 호 :
								</font>
								 <input type="text" class="form-control" size="15"
									name='e_idnum' placeholder="필수입력사항입나디." id='pnum'
									maxlength="14" required="required"></td>
								<td colspan="2" align="left"><font size=4>입 사 일 : </font> <input
									type="text" class="form-control" size="15" name='e_indate'
									placeholder="필수입력사항입나디." id='hire' maxlength="30" required="required"></td>
							</tr>
							<tr>
								<td colspan="2" align="left"><font size=4>이 메 일 : </font> <input
									type="text" class="form-control" size="15" name='e_email'
									maxlength="50" id='email'></td>
								<td colspan="2" align="left"><font size=4>전 화 번 호 :
								</font> <input type="text" class="form-control" size="15"
									name='e_phone' placeholder="필수입력사항입나디." id='phone'
									maxlength="13" required="required"></td>
							</tr>
							<tr>
								<td colspan="2" align="left"><font size=4>은 행 명 : </font> <input
									id='bname' type="text" class="form-control" size="15"
									name='e_bankname' maxlength="15"></td>
								<td colspan="2" align="left"><font size=4>계 좌 번 호 :
								</font> <input type="text" class="form-control" size="15" id='bnum'
									name='e_banknum' maxlength="20"></td>
							</tr>
							<tr>
								<td colspan="5" align="center"><font size=4>주 소: </font> <input
									type="text" class="form-control" size="95" name='e_address'
									placeholder="필수입력사항입나디." id='address' maxlength="100" required="required"></td>
							</tr>
							<tr>
								<td colspan="5" align="center"><font size=4>비 고: </font> <input
									id='bigo' type="text" class="form-control" size="95"
									name='e_bigo' maxlength="100"></td>
							</tr>
							<tr>
								<td colspan="2" align="right"><font size=4>기 본 급 :</font><input
									placeholder="필수입력사항입나디." type="text" class="form-control"
									size="20" name='e_basicpay' id='pay' maxlength="9" required="required"></td>
								<td colspan="3" align="center"><font size=4>재 직 상 태
										:</font><input type="text" class="form-control" size="8" id='state'
									name='e_state' placeholder="재직1 퇴사 2" id='state' maxlength="1" required="required"></td>
							</tr>
							<tr>
								<td colspan="2" align="right"><font size=4>직 급 : </font> <input
									id='rank' type="text" class="form-control" size="20"
									name='rank_name' maxlength="15"></td>
								<td colspan="3" align="center"><font size=4>부 서 명 :
								</font> <input type="text" class="form-control" size="20"
									maxlength="15" id='dept' name='dept_name'></td>
							</tr>
							<tr align="center">
								<td colspan="4"><input type="button" onclick="test()"
									class="btn btn-danger btn-lg" value="직 원 등 록"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


