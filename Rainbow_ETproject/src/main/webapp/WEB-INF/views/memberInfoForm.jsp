<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/Js/jquery-3.3.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="resources/L_Validation/jquery.validate.min.js"></script> 
<!-- Bootstrap Core JavaScript -->
<script src="resources/test/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="resources/test/vendor/metisMenu/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="resources/test/dist/js/sb-admin-2.js"></script>

<!-- Bootstrap Core CSS -->
<link href="resources/test/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="resources/test/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/test/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="resources/test/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">


</head>
<body>
	<form> 
		<div class="col-md-12" style="margin: 20px" id="memberList">
			<table class="table table-striped">
				<tr>
					<td>회사명</td>
					<td><input type="text" name="m_cname" value="${mb.m_cname}"></td>
				</tr>
				<tr>
					<td>대표자</td>
					<td><input type="text" name="m_cboss" value="${mb.m_cboss}"></td>
				</tr>
				<tr>
					<td>업종</td>
					<td><input type="text" name="m_cubusiness" value="${mb.m_cubusiness}"></td>
				</tr>
				<tr>
					<td>종목</td>
					<td><input type="text" name="m_ckind" value="${mb.m_ckind}"></td>
				</tr>
				<tr>
					<td>사업자등록번호</td>
					<td><input type="text" name="m_cno" value="${mb.m_cno}"></td>
				</tr>
				<tr>
					<td>회사전화번호</td>
					<td><input type="text" name="m_cphone" value="${mb.m_cphone}"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="m_caddress" style="width:400px"
						value="${mb.m_caddress}"></td>
				</tr>
				<tr>
					<td>ID</td>
					<td><input type="text" name="m_id" value="${mb.m_id}" readonly="readonly"></td>
					
				</tr>
				<tr>
					<td>PASSWORD</td>
					<td><input type="text" name="m_pwd" value="${mb.m_pwd}" readonly="readonly"></td>
				</tr>
				<tr>
					<td>관리자</td>
					<td><input type="text" name="m_cmname" value="${mb.m_cmname}"></td>
				</tr>
				<tr>
					<td>관리자전화번호</td>
					<td><input type="text" name="m_cmphone" value="${mb.m_cmphone}"></td>
				</tr>
				<tr>
					<td>관리자 이메일</td>
					<td><input type="text" name="m_cmemail" value="${mb.m_cmemail}"></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="submit" value="수정" onclick="memberUpdate();" /></td>
				</tr>
			</table>
		</div>
 	</form>
</body>
<script>
	function memberUpdate(){
		var data = {};
		
		data["m_id"] = $('input[name=m_id]').val();
		data["m_pwd"] = $('input[name=m_pwd]').val();
		data["m_cno"] = $('input[name=m_cno]').val();
		data["m_cname"] = $('input[name=m_cname]').val();
		data["m_cubusiness"] = $('input[name=m_cubusiness]').val();
		data["m_ckind"] = $('input[name=m_ckind]').val();
		data["m_caddress"] = $('input[name=m_caddress]').val();
		data["m_cphone"] = $('input[name=m_cphone]').val();
		data["m_cboss"] = $('input[name=m_cboss]').val();
		data["m_cmname"] = $('input[name=m_cmname]').val();
		data["m_cmphone"] = $('input[name=m_cmphone]').val();
		data["m_cmemail"] = $('input[name=m_cmemail]').val();
		console.log(data);
		 $.ajax({
			contentType:'application/json; charset=UTF-8',
			type : 'post',
			url : 'L_memberUpdate_s',
			data : JSON.stringify(data),
			dataType : 'json',
			success : function(data){
				console.log(data);
				if(data===true){
					opener.location.reload(); 
				} 
				alert('수정완료');
			},error: function(error){
				alert("다시입력해주세요.");
				console.log(error);
			}
			
		});
	
	}
	
	$(function(){
		$("form").validate({
			sumbitHandler:function(){
				var f = confim("정보수정을 완료 하시겠습니까?");
				if(f){
					return true;
				}else{
					return false;
				}
			},
			rules:{
				 
				 m_pwd :{ required : true, minlength:4, maxlength :20,  /*not null 20*/},
				 
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
				 
				 m_pwd :{ required : "필수로 입력하세요", maxlength :"최대 {0}글자까지입니다.",  /*not null 20*/},			 
				 
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
	
	</script>
</html>