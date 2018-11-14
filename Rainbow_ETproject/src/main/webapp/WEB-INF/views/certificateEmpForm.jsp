<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@page a4sheet{size:21.0cm 29.7cm}
#a4{page:a4sheet;page-break-after:always}
</style>
</head>
<body>
이름:<input type="text" name='e_name' value='${eDto.e_name}' ><br>
주민번호:<input type="text" name='e_idnum' value='${eDto.e_idnum}'><br>
주소:<input type="text" name='e_address'value='${eDto.e_address}' ><br>
사업자등록번호:<input type="text" name='m_cno'value='${eDto.m_cno}'><br>
직급:<input type="text" name='rank_name'value='${eDto.rank_name}'><br>
부서명<input type="text" name='dept_name'value='${eDto.dept_name}'><br>
 전화번호:<input type="text" name='e_phone' value='${eDto.e_phone}'><br>
입사일:<input type="text" name='e_indate'value='${eDto.e_indate}'><br>
회사명<input type="text" name='m_cname'value='${eDto.m_cname}'><br>
 대표:<input type="text" name='m_cboss'value='${eDto.m_cboss}'>
 </body>
</html>



