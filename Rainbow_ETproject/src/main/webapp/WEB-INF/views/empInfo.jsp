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
					<form class="form-inline" role="form" action="empinsert" method="post">
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
									style="height: 150px; width: 140px">
									</td>
								<td colspan="2" align="left"><font size=4>사 원 번 호 :
								</font> <input type="text" class="form-control" size="20" name='e_code' value='${emp.e_code}'></td>
								<td colspan="2" align="left"><font size=4>사 원 이 름 :
								</font> <input type="text" class="form-control" size="20" name='e_name' value='${emp.e_name }'></td>
									
							</tr>
							<tr align="center">
								<td colspan="2" align="left"><font size=4>주민등록번호:</font> <input
									type="text" class="form-control" size="20" name='e_idnum' value='${emp.e_idnum}'></td>
								<td colspan="2" align="left"><font size=4>입 사 일 :</font> <input
									type="text" class="form-control" size="20" name='e_indate'value='${emp.e_indate}'></td>


							</tr>
							<tr align="center">
								<td colspan="2" align="left"><font size=4>부 서 :</font> <input
									type="text" class="form-control" size="20" name='dept_name'value='${emp.dept_name}'></td>
								<td colspan="2" align="left"><font size=4>이 메 일 :</font> <input
									type="text" class="form-control" size="20" name='e_email' value='${emp.e_email}'></td>

							</tr>
							<tr align="center">
								<td colspan="2" align="left"><font size=4>직 급 :</font> <input
									type="text" class="form-control" size="20" name='rank_name' value='${emp.rank_name}'></td>
								<td colspan="2" align="left"><font size=4>전 화 번 호 :</font>
									<input type="text" class="form-control" size="20"
									name='e_phone' value='${emp.e_phone}'></td>
							</tr>

							<tr align="center">
								<td colspan="1" align="left"><font size=4>상 태 :</font> <input
									type="text" class="form-control" size="8" name='e_state' placeholder="재직1 퇴사 2" value='${emp.e_state}'></td>
								<td colspan="1" align="left"><font size=4>은 행 명 :</font> <input
									type="text" class="form-control" size="20" name='e_bankname' value='${emp.e_bankname}'></td>
								<td colspan="3" align="left"><font size=4>계 좌 번 호 :</font>
									<input type="text" class="form-control" size="20"name='e_banknum' value='${emp.e_banknum}'></td>



							</tr>
							<tr>
								<td colspan="5" align="center"><font size=4>주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소&nbsp;:</font>
									<input type="text" class="form-control" size="95"
									name='e_address' value='${emp.e_address}'></td>

							</tr>
							<tr>
								<td colspan="5" align="center"><font size=4>비&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;고&nbsp;:</font>
									<input type="text" class="form-control" size="95" name='e_bigo' value='${emp.e_bigo}'></td>

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

</html>


