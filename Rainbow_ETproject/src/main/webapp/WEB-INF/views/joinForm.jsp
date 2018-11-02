<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/Js/jquery-3.3.1.min.js"></script> 
</head>
<body>
	<form action=" " >
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="m_id" value="" /></td><!-- onkeydown="inputIdCheck();" -->
				<td><input type="button" value="중복확인" onclick="openIdCheck();" /></td>
				<!-- <td><input type="hidden" name="idDuplication" onclick="idUncheck;" /></td> -->
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="m_pwd"  value="" /></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="text" name="m_cheack" value="" /></td>
			</tr>
			<tr>
				<td>사업자 등록 번호</td>
				<td><input type="text" name="m_cno" value="" /></td>
			</tr>	
			<tr>
				<td>회사명</td>
				<td><input type="text" name="m_cname" value="" /></td>
			</tr>		
			<tr>
				<td>업태</td>
				<td><input type="text" name="m_cbusiness" value="" /></td>
			</tr>
			<tr>
				<td>종목</td>
				<td><input type="text" name="m_ckind" value="" /></td>
			</tr>
			<tr>
				<td>회사주소</td>
				<td><input type="text" name="m_caddress" value="" /></td>
			</tr>
			<tr>
				<td>회사 전화번호</td>
				<td><input type="text" name="m_cphone" value="" /></td>
			</tr>
			<tr>
				<td>대표자</td>
				<td><input type="text" name="m_cboss" value="" /></td>
			</tr>
			<tr>
				<td>담당자</td>
				<td><input type="text" name="m_cmanager" value="" /></td>
			</tr>		
			<tr>
				<td>담당자 이메일</td>
				<td><input type="text" name="m_cmemail" value="" /></td>
			</tr>			
			<tr>
				<td>담당자 전화번호</td>
				<td><input type="text" name="m_cmphone" value="" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="회원가입"></td>
				<td><input type="button" value="취소" /></td>
			</tr>
		</table>
	</form>
</body>
	<script>
		function openIdCheck() {
			//alert("aaa");
			
			var m_id =$('input[name=m_id]').val();
			
			if(m_id==null || m_id==""){
				alert("아이디를 입력해주세요");
			}else{
			$.ajax({	
				 type : 'post',
			     url : 'L_memberIdMatching_s',
			     data : { "m_id" : m_id },
			     dataType : 'text',
			     success : function(data) {			    	 
			    	 console.log(data);
			    	 if(data=="0"){
			    		 alert("사용가능한아이디 입니다.");
			    	 }else if(data=="1"){
			    		 alert("중복된아이디 입니다.");
			    	 } 
			     },
                 error : function(error) {
						alert("error");
						console.log(error);
					}
				 
			 });//ajax 끝
			 
			}
		} 
	</script>
</html>