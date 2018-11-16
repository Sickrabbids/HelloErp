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
이름:<input type="text" name='e_name' value='${eDto.E_NAME}' ><br>
주민번호:<input type="text" name='e_idnum' value='${eDto.E_IDNUM}'><br>
주소:<input type="text" name='e_address'value='${eDto.E_ADDRESS}' ><br>
사업자등록번호:<input type="text" name='m_cno'value='${eDto.M_CNO}'><br>
직급:<input type="text" name='rank_name'value='${eDto.RANK_NAME}'><br>
부서명<input type="text" name='dept_name'value='${eDto.DEPT_NAME}'><br>
 전화번호:<input type="text" name='e_phone' value='${eDto.E_PHONE}'><br>
입사일:<input type="text" name='e_indate'value='${eDto.E_INDATE}'><br>
회사명<input type="text" name='m_cname'value='${eDto.M_CNAME}'><br>
 대표:<input type="text" name='m_cboss'value='${eDto.M_CBOSS}'>
 </body>
</html>



