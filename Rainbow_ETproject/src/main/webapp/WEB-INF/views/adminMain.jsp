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
${m_id}
<input type="button" name="logOut" value="로그아웃" onclick="logOut()" />
		${listHtml}
</body>
<script>
	
		function logOut(){
		location.href="logOut";
	}
		
		/* $(document).ready(function(data){
		
		$.ajax({	
			 type : 'post',
		     url : 'memberInfo',
		     dataType : 'json',
		     success : function(data) {			    	 
		    	 console.log(data);
		     },
            error : function(error) {
					alert("error");
					console.log(error);
				}
			 
		 });//ajax 끝
		}) */
</script>
</html>