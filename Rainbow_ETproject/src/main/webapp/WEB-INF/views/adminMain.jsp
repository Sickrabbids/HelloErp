<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${m_id}
<input type="button" name="logOut" value="로그아웃" onclick="logOut()" />
</body>
<script>
	function logOut(){
		location.href="logOut";
	}
</script>
</html>