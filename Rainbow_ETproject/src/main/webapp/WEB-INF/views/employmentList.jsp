<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Bootstrap Admin Theme</title>

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

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<style>
#main {
	padding-top: 5%;
	margin-left: 5%;
}

#bor {
	padding: 20px;
}

.table th {
	text-align: left;
}

.table td {
	vertical-align: middle;
}

#test {
	vertical-align: middle;
}

#tt {
	vertical-align: middle;
	text-align: left;
}
</style>
<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">RB-erp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
			</div>
			<!-- /.navbar-header -->
			<ul class="nav navbar-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">인사<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">근태 현황</a></li>
						<li><a href="#">직원 등록</a></li>
						<li><a href="#">직원 리스트 </a></li>
						<li><a href="#">퇴사자 리스트</a></li>
						<li><a href="#">부서항목 관리</a></li>
						<li><a href="#">직급항목 관리</a></li>
						<li><a href="#">달력 보기(휴가등록)</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">급여<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">수당항목 관리 </a></li>
						<li><a href="#">직원 급여명세서 리스트</a></li>
						<li><a href="#">월급여대장 관리</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">자재/생산품<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">자재/생산품 등록</a></li>
						<li><a href="#">자재/생산품 리스트</a></li>
						<li><a href="#">입고/출고 관리</a></li>
						<li><a href="#">자재 발주서 등록</a></li>
						<li><a href="#">자재 발주서 리스트</a></li>
						<li><a href="#">폐기 관리</a></li>
						<li><a href="#">생산요청 등록</a></li>
						<li><a href="#">생산요청 리스트</a></li>
						<li><a href="#">자재요청 등록</a></li>
						<li><a href="#">자재요청 리스트</a></li>
						<li><a href="#">생산일지 달력</a></li>
						<li><a href="#">자재용 달력</a></li>
						<li><a href="#">이용자 달력</a></li>
					</ul></li>
			</ul>


			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"></i>내정보</a></li>
						<li><a href="#"><i class="fa fa-gear fa-fw"></i>회원탈퇴</a></li>
						<li class="divider"></li>
						<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>로그아웃</a></li>
					</ul> <!-- /.dropdown-user --></li>
				<!-- /.dropdown -->
			</ul>
			<!--사이드바  -->
			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<!-- 	<li><a href="index.html"><i class="fa fa-dashboard fa-fw"></i>
								Dashboard</a></li> -->
						<li><a href="#"><i class="glyphicon glyphicon-briefcase"></i>
								인사<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="flot.html">근태 현황</a></li>
								<li><a href="morris.html">직원 등록</a></li>
								<li><a href="morris.html">직원 리스트</a></li>
								<li><a href="morris.html">퇴사자 리스트</a></li>
								<li><a href="morris.html">부서항목 관리</a></li>
								<li><a href="morris.html">직급항목 관리</a></li>
								<li><a href="morris.html">달력 보기(휴가등록)</a></li>
							</ul> <!-- /.nav-second-level --></li>
						<!-- <li><a href="tables.html"><i class="fa fa-table fa-fw"></i>
								</a></li>
						 -->
						<!-- <li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>
								</a></li>
					 -->
						<li><a href="#"><i class="glyphicon glyphicon-usd"></i>급여<span
								class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="panels-wells.html">수당항목 관리</a></li>
								<li><a href="buttons.html">직원 급여명세서 리스트</a></li>
								<li><a href="notifications.html">월급여대장 관리</a></li>
							</ul> <!-- /.nav-second-level --></li>
						<li><a href="#"><i class="glyphicon glyphicon-plane"></i>
								자재/생산품<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="#">자재/생산품 등록</a></li>
								<li><a href="#">자재/생산품 리스트</a></li>
								<li><a href="#">입고/출고 관리</a></li>
								<li><a href="#">자재 발주서 등록</a></li>
								<li><a href="#">자재 발주서 리스트</a></li>
								<li><a href="#">폐기 관리</a></li>
								<li><a href="#">생산요청 등록</a></li>
								<li><a href="#">생산요청 리스트</a></li>
								<li><a href="#">자재요청 등록</a></li>
								<li><a href="#">자재요청 리스트</a></li>
								<li><a href="#">입고/출고 관리</a></li>
								<li><a href="#">생산일지 달력</a></li>
								<li><a href="#">자재용 달력</a></li>
								<li><a href="#">이용자 달력</a></li>
								<!-- <li class="active"><a href="#"><i
								class="fa fa-files-o fa-fw"></i> Sample Pages<span
								class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a class="active" href="blank.html">Blank Page</a></li>
								<li><a href="login.html">Login Page</a></li>
							</ul> /.nav-second-level</li> -->
							</ul>
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>
		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-10" id='main'>





						<form class="form-inline" role="form">
							<div class="form-group" id='bor'>
								<select class="form-control">
									<option>이름</option>
									<option>사번</option>
								</select> <input type="text" class="form-control"> <input
									type='submit' class="btn btn-primary " value='검색'>
							</div>
						</form>


						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<span class="glyphicon glyphicon-tags"></span> &nbsp;&nbsp;직원명단
								</h3>
							</div>
							<table class="table" id='tt'>
								<thead>
									<tr>
										<!-- 	<th>행추가</th> -->
										<th>사번</th>
										<th>이름</th>
										<th>직급</th>
										<th>부서</th>
									</tr>
								</thead>
								<tbody id='test'>
									<!-- <tr>
										<td><button class='btn btn-primary btn-xs'onclick="add_row()"><span class='glyphicon glyphicon-arrow-up'></span></button><br /><button class='btn btn-primary btn-xs' onclick="add_drow()"><span class='glyphicon glyphicon-arrow-down'></span></button></td>
										<td>사번</td>
										<td><a href="#">원장선생님</a></td>
										<td>대장</td>
										<td>1949-10-02</td>
										<td>0A-15-01</td>
									</tr>
 -->

									<c:forEach var="board" items="${test}">
										<tr>
											<!-- <td><button class='btn btn-primary btn-xs'onclick="add_row()"><span class='glyphicon glyphicon-arrow-up'></span></button><br /><button class='btn btn-primary btn-xs' onclick="add_drow()"><span class='glyphicon glyphicon-arrow-down'></span></button></td> -->
											<td>${board.e_code}</td>
											<td><a href='empInfo?e_code=${board.e_name}' onclick="popupOpen2()">${board.e_name}</a></td>
											<td>${board.rank_name}</td>
											<td>${board.dept_name}</td>
										</tr>
									</c:forEach>
								</tbody>

<%-- 'empInfo?e_code=${board.e_name}' --%>


								</tbody>
							</table>
							<div class="col-md-4"></div>
							<div class="col-md-5" style="margin: 20px">
								<nav>
									<ul class="pagination">
										<li><a href="#" aria-label="Previous"> <span
												aria-hidden="true">&laquo;</span>
										</a></li>
										<li><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">5</a></li>
										<li><a href="#" aria-label="Next"> <span
												aria-hidden="true">&raquo;</span>
										</a></li>
									</ul>
								</nav>

							</div>
							<div class="col-md-1">
								<a href="javascript:popupOpen();" class="btn btn-primary"
									style="margin: 40px">등록</a>
							</div>








							<script type="text/javascript">
								function popupOpen() {
									window.name='employmentList'
									var popUrl = "empinsertForm"; //팝업창에 출력될 페이지 URL

									var popOption = "width=1200, height=900, resizable=no, scrollbars=no, status=no;"; //팝업창 옵션(optoin)

									openWin=window.open(popUrl, "", popOption);

								}
								function sendtest() {
									openWin.document.get
									
								}
							</script>




							<script type="text/javascript">
								function popupOpen2() {
									
									var popUrl = "empinsertForm"; //팝업창에 출력될 페이지 URL

									var popOption = "width=1200, height=900, resizable=no, scrollbars=no, status=no;"; //팝업창 옵션(optoin)

									window.open(popUrl, "", popOption);

								}
							</script>







						</div>









					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="resources/test/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="resources/test/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="resources/test/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="resources/test/dist/js/sb-admin-2.js"></script>
	<script>
		function add_row() {
			var tr = $(this);
			console.log(tr);
			var my_tbody = document.getElementById('test');
			var row = my_tbody.insertRow(0);
			var cell1 = row.insertCell(0);
			var cell2 = row.insertCell(1);
			var cell3 = row.insertCell(2);
			var cell4 = row.insertCell(3);
			var cell5 = row.insertCell(4);
			cell1.innerHTML = "<td><button class='btn btn-primary btn-xs' onclick='add_row()'><span class='glyphicon glyphicon-arrow-up'></span></button><br/><button class='btn btn-primary btn-xs' onclick='add_drow()'><span class='glyphicon glyphicon-arrow-down'></span></button>	</td>";
			cell2.innerHTML = "사번";
			cell3.innerHTML = "<a href='#'>된당</a>";
			cell4.innerHTML = "테스트";
			cell5.innerHTML = "테스트";
		}
		function add_drow() {
			var my_tbody = document.getElementById('test');

			var row = my_tbody.insertRow(my_tbody.rows.length); // 하단에 추가 */
			var cell1 = row.insertCell(0);
			var cell2 = row.insertCell(1);
			var cell3 = row.insertCell(2);
			var cell4 = row.insertCell(3);
			var cell5 = row.insertCell(4);
			cell1.innerHTML = "<td><button class='btn btn-primary btn-xs' onclick='add_row()'><span class='glyphicon glyphicon-arrow-up'></span></button><br/><button class='btn btn-primary btn-xs' onclick='add_drow()'><span class='glyphicon glyphicon-arrow-down'></span></button>	</td>";
			cell2.innerHTML = "사번";
			cell3.innerHTML = "<a href='#'>된당</a>";
			cell4.innerHTML = "테스트";
			cell5.innerHTML = "테스트";
		}
		
		
		
	function aj(){	
		// 미리 팝업을 띄워놓고. 
		var w = window.open("about:blank","_blank");


		// ajax process
		$.ajax({
			url:"url주소",
			method:"POST",
			data:formData,
			dataType:"html",
			success: eventSuccess,
			error: function(xhr, status, error) {alert(error);}
		});
	}
		function eventSuccess(data)
		{
			//여기서 팝업된 창의 주소를 변경하자.
			w.location.href = "팝업주소";
		}
		
	</script>
	
	
	
</body>

</html>
