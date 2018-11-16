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

<!-- <script src="resources/L_Validation/additional-methods.min.js"></script>
<script src="resources/L_Validation/jquery.validate.min.js"></script>
<script src="resources/L_Validation/messages_ko.min.js"></script> -->

<style>
.container {
	margin-top: 10%;
}

#fileup {
	margin-top: 10px;
	margin-left: -30px;
}
</style>
</head>
<body>
	<script type="text/javascript">

	window.onload=function()
	{
		onejo=document.getElementById('code').value;
	 	$('#hideonejo').val(onejo);
		$('#rehi2').hide();
		$("#rehi").hide();
		var re2="${re}";
		if(re2=='퇴직'){
		$('#tir').html('복직');	
		$('#proven').html('퇴직증명서');
		$("#rehi").show();
		$('#rehi2').show();
		}
	}


function retire(code,state){
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();
	if(dd<10) {
	    dd='0'+dd
	} 
	if(mm<10) {
	    mm='0'+mm
	} 
	today = yyyy+'-'+mm+'-'+dd;
	var reday=today+'일부로 복직'
	var e_state=state;
	var e_code=code;
	var reason='복직';
	console.log(e_code);
	if(e_state==1){
	reason=prompt('퇴직사유를 입력해주세요', '개인사유');
	reday=prompt('퇴직일을 입력해주세요', today);
	}
	console.log(reason);
	console.log(reday);
	$.ajax({
		type : 'POST',
		url : 'retire?e_code=' + e_code+"&state="+e_state+"&reason="+reason+"&reday="+reday,
		dataType : 'html',
		success : function(data) {
		/* 	  alert(data); */
			  console.log(data.re_date);
			  console.log(data.re_reason);
			  var redate=data.re_data
			  window.opener.location.reload();
        	  location.reload(true);
        	  $('#rereason').val(data.re_data);
        	  $('#reday').val('re_date');
		},
		error : function(error) {
			console.log(error);
		}
	}); 

}
function popupOpen(code) {
	var e_code=code
	console.log(e_code);
	window.name = 'empInfo'
	var popUrl = "certificateEmpForm?e_code="+e_code; //팝업창에 출력될 페이지 URL
	var popOption = "width=1200, height=900, resizable=no, scrollbars=no, status=no;"; //팝업창 옵션(optoin)
	openWin = window
			.open(popUrl, "", popOption);

}
 $('#code').change(function(){
		trust=0;
	});

/* window.onload=function(){
	onejo=document.getElementById('code').value;
 	$('#hideonejo').val(onejo);
 } */


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
			 var hide=document.getElementById('hideonejo').value;    
			 if(code==hide){
				 alert('현재 사용중인 사번입니다.');
				 trust=1;
			 }
			 else if(result!=0){
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


	function formcheck(){
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
		}else if (pay == "" || pay == null) {
			alert("기본급은 반드시 입력해주세요");
			document.getElementById('pay').focus();
			return false;
		}else if (trust!=1) {
			alert("중복검사는 반드시 하시기 바랍니다.");
			document.getElementById('code').focus();
			return false;
		}else if (trust!=1) {
			alert("중복검사는 반드시 하시기 바랍니다.");
			document.getElementById('code').focus();
			return false;
		}
		
		alert('성공');
		/*  var formData = new FormData($("#fileForm")[0]);
	        $.ajax({
	            type : 'post',
	            url : 'fileUpload',
	            data : formData,
	            processData : false,
	            contentType : false,
	            success : function(html) {
	                alert("파일 업로드하였습니다.");
	            },
	            error : function(error) {
	                alert("파일 업로드에 실패하였습니다.");
	                console.log('test');
	                console.log(error);
	                console.log(error.status);
	            }
	        });

 */
		
		return
	}
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader(); 
			reader.onload = function (e) { 
				$('#imfplace').attr('src', e.target.result); }
			reader.readAsDataURL(input.files[0]); } }
	function update(){
        /*  var form = $('#reform')[0];
         var formData = new FormData(form);
         formData.append("fileObj", $("#FILE_TAG")[0].files[0]);
         formData.append("fileObj2", $("#FILE_TAG2")[0].files[0]); */

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
		}else if (pay == "" || pay == null) {
			alert("기본급은 반드시 입력해주세요");
			document.getElementById('pay').focus();
			return false;
		}else if (trust!=1) {
			alert("중복검사는 반드시 하시기 바랍니다.");
			document.getElementById('code').focus();
			return false;
		}else if (trust!=1) {
			alert("중복검사는 반드시 하시기 바랍니다.");
			document.getElementById('code').focus();
			return false;
		}
    var hide=document.getElementById('hideonejo').value;     
	 console.log(hide);
          /* var params = jQuery("#reform").serialize(); */  
          var formData = new FormData($("#reform")[0]); 
          $.ajax({
              type : 'post',
              url : 'update',
              data : formData,
              dataType : 'html',
              processData : false,
              contentType : false,
               success : function(data) {
             	  alert(data);
             	  window.opener.location.reload();
             	 /*  self.close(); */
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
					<form class="form-inline" role="form" action="empinsert"
						id='reform' method="post" 
						enctype="multipart/form-data" >

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
									style="padding-left: 50px"><input type=file name='file1'
									style='display: none;' onchange="readURL(this);"> <input
									type='text' name='file2' id='file2' style='display: none;'>
									<img src='${pic}' border='0'
									onclick='document.all.file1.click(); document.all.file2.value=document.all.file1.value'
									id='imfplace' style="height: 140px; width: 130px">  <%-- <img src='${pic}'
									style="height: 140px; width: 130px" id='imfplace'><input type="file"
									id='fileup' name='imgfile' onchange="readURL(this);"> --%> </td>
								<td colspan="2" align="left"><font size=4>사 원 번 호 :
								</font> <input type="text" class="form-control" size="15" name='e_code'
									placeholder="필수입력사항입나디." id='code' maxlength="10"
									value='${eDto.e_code}'>
									<button type="button" onclick="multicheck()">중복검사</button> <input
									type="hidden" id='hideonejo' name='onejo'></td>
								<td colspan="2" align="left"><font size=4>사 원 이 름 :
								</font> <input type="text" class="form-control" size="15" name='e_name'
									placeholder="필수입력사항입나디." id='name' maxlength="15"
									value='${eDto.e_name}'></td>
							</tr>
							<tr>
								<td colspan="2" align="left"><font size=4>이 메 일 : </font> <input
									type="text" class="form-control" size="15" name='e_email'
									maxlength="50" id='email' value='${eDto.e_email}'></td>
								<td colspan="2" align="left"><font size=4>전 화 번 호 :
								</font> <input type="text" class="form-control" size="15"
									name='e_phone' placeholder="필수입력사항입나디." id='phone'
									maxlength="13" value='${eDto.e_phone}'></td>
							</tr>
							<tr>
								<td colspan="2" align="left"><font size=4>은 행 명 : </font> <input
									id='bname' type="text" class="form-control" size="15"
									name='e_bankname' maxlength="15" value='${eDto.e_bankname}'></td>
								<td colspan="2" align="left"><font size=4>계 좌 번 호 :
								</font> <input type="text" class="form-control" size="15" id='bnum'
									name='e_banknum' maxlength="20" value='${eDto.e_banknum}'></td>
							</tr>
							<tr>
								<td colspan="2" align="left"><font size=4>입 사 일 : </font> <input
									type="text" class="form-control" size="15" name='e_indate'
									placeholder="필수입력사항입나디." id='hire' maxlength="30"
									value='${eDto.e_indate}' ></td>

								<td colspan="2" align="left"><font size=4>주 민 번 호 :
								</font> <input type="text" class="form-control" size="15"
									value='${eDto.e_idnum}' name='e_idnum' placeholder="필수입력사항입나디."
									id='pnum' maxlength="14"></td>
							<tr id='rehi'>
								<td  align='center' style="vertical-align: middle;"></td>
								<td colspan="2" align="left"><font size=4>퇴 사 일 : </font>
									<input id='reday' type="text" class="form-control" size="15"
									name='endday' maxlength="15" value='${redate}'  ></td>
								<td colspan="2" align="left" id='rebtn' >
								</td>
							</tr>
							<tr id='rehi2'> 	
									<td colspan="5" align="center"><font size=4>퇴직사유: </font> <input
									type="text" class="form-control" size="95" name='endreason'
									 id='rereason' maxlength="450"  value='${reason}'
									></td></tr>
							<tr>
								<td colspan="5" align="center"><font size=4>주 소: </font> <input
									type="text" class="form-control" size="95" name='e_address'
									placeholder="필수입력사항입나디." id='address' maxlength="100"
									value='${eDto.e_address}'></td>
							</tr>
							<tr>
								<td colspan="5" align="center"><font size=4>비 고: </font> <input
									id='bigo' type="text" class="form-control" size="95"
									name='e_bigo' maxlength="100" value='${eDto.e_bigo}'></td>
							</tr>
							<tr>
								<td colspan="2" align="right"><font size=4>기 본 급 :</font><input
									placeholder="필수입력사항입나디." type="text" class="form-control"
									size="20" name='e_basicpay' id='pay' maxlength="9"
									value='${eDto.e_basicpay}'></td>
								<td colspan="3" align="center"><font size=4>재 직 상 태
										:</font><input type="text" class="form-control" size="8" id='state'
									name='e_state' placeholder="재직1 퇴사 2" id='state' maxlength="1"
									value='${eDto.e_state}' readonly="readonly"></td>
							</tr>
							<tr>
								<td colspan="2" align="right"><font size=4>직 급 : </font> <input
									id='rank' type="text" class="form-control" size="20"
									name='rank_name' maxlength="15" value='${eDto.rank_name}'></td>
								<td colspan="3" align="center"><font size=4>부 서 명 :
								</font> <input type="text" class="form-control" size="20"
									maxlength="15" id='dept' name='dept_name'
									value='${eDto.dept_name}'></td>
							</tr>
							<tr align="right">
								<td colspan="4">
								<a href="javascript:popupOpen('${eDto.e_code}','${eDto.e_state}');"
									class="btn btn-danger btn-lg" style="margin: 40px" id='proven'>재직증명서</a>
									<input type="button" role="button"
									class="btn btn-danger btn-lg" value="수 정" onclick="update()"
									id='upup'> <a
									href="javascript:retire('${eDto.e_code}','${eDto.e_state}');"
									class="btn btn-danger btn-lg" style="margin: 40px" id='tir'>퇴사</a>
								</td>
							</tr>



						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


