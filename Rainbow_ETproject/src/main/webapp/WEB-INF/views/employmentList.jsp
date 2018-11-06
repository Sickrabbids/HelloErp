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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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

<style>
#bor {
	margin-top: 3%;
	margin-right: 9%;
	margin-bottom: -10px;
}

#main {
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
</head>
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
					<div class="form-group row pull-right" id='bor'>
						<div class='col-xs-4'>
							<select class="form-control" id='selectBox'>
								<option value='name'>이름</option>
								<option value='code'>사번</option>
							</select>
						</div>
						<div class='col-xs-5'>
							<input type="text" class="form-control" id='search'
								onkeyup="searchData();">
						</div>
						<input type="button" class="btn btn-primary "
							onclick="searchData();" value='검색'>

					</div>
					<div class="col-lg-10" id='main'>




						<!-- +"&type="+encodeURIComponent(document.getElementById('select').options[document.getElementById('select').selectedIndex].value]) -->
						<script>
					/* 		function searchData2() {
								var target = document
										.getElementById("selectBox");
								alert('선택된 옵션 text 값='
										+ target.options[target.selectedIndex].text);
								alert('선택된 옵션 value 값='
										+ target.options[target.selectedIndex].value);

							} */

							var request = new XMLHttpRequest();
							function searchData() {
								var target = document
										.getElementById("selectBox");
								var sb = target.options[target.selectedIndex].value;
								request.open(
												"post",
												"./ajempsearchData?data="
														+ encodeURIComponent(document
																.getElementById('search').value)
														+ '&type='
														+ encodeURIComponent(sb),
												true);
								request.onreadystatechange = searchProcess;
								request.send(null);
							}
							function searchProcess() {
								var table = document.getElementById('test');
								table.innerHTML = '';
								if (request.readyState == 4
										&& request.status == 200) {
									/*  var data=JSON.parse(request.responseText); */
									var data = eval('(' + request.responseText
											+ ')');
									var result = data.result;
									/* var data=eval('('+request.responseText+')'); */
									var list = '';
									for (var i = 0; i < result.length; i++) {
										var row = table.insertRow(0);
										/* for(var j=0;j<result[i].length;j++){
											console.log(result[i][j].e_code);
											list+='<tr>'
												+'<td>'+data[i].result[i][j].e_code+'</td>'
												+'<td>'+data[i].result[i][j].e_name+'</td>'
												+'<td>'+data[i].result[i][j].e_rank_name+'</td>'
												+'<td>'+data[i].result[i][j].e_dept_name+'</td></tr>';
										 }
										table.innerHTML=list;
										 */

										for (var j = 0; j < result[i].length; j++) {
											var cell = row.insertCell(j);
											cell.innerHTML = result[i][j].value;
										}
									}
								}
							}

							/* 	var list='';	
							for(var i=0;i<=data.length;i++){
								console.log(data[i].e_code);
								list+='<tr>'
									+'<td>'+data[i].e_code+'</td>'
									+'<td>'+data[i].e_name+'</td>'
									+'<td>'+data[i].e_rank_name+'</td>'
									+'<td>'+data[i].e_dept_name+'</td></tr>';
								}
							$('#test').html(list);
								
							} */
						</script>



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
											<td><a href='#' onclick="empAjInfo('${board.e_name}')">${board.e_name}</a></td>
											<td>${board.rank_name}</td>
											<td>${board.dept_name}</td>
										</tr>
									</c:forEach>
								</tbody>

								<%-- 'empInfo?e_code=${board.e_name}' --%>


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
									window.name = 'employmentList'
									var popUrl = "empinsertForm"; //팝업창에 출력될 페이지 URL
									var popOption = "width=1200, height=900, resizable=no, scrollbars=no, status=no;"; //팝업창 옵션(optoin)
									openWin = window
											.open(popUrl, "", popOption);

								}
								function sendtest() {
									openWin.document.get
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
	function popupOpen() {
		window.name = 'employmentList'
		var popUrl = "empinsertForm"; //팝업창에 출력될 페이지 URL
		var popOption = "width=1200, height=900, resizable=no, scrollbars=no, status=no;"; //팝업창 옵션(optoin)
		openWin = window
				.open(popUrl, "", popOption);
	}
	
	function empAjInfo(name){
		var e_name=name;
		$.ajax({
			type:'POST',
			url:'ajempInfo?e_name='+e_name,
			dataType:'json',
			success:function(data){
				console.log(data);
				 e_code=data.e_code;
				console.log(e_code);
				
				
				
				var openWin;
				var popUrl = "empinsertForm"; //팝업창에 출력될 페이지 URL
				var popOption = "width=1200, height=900, resizable=no, scrollbars=no, status=no;"; //팝업창 옵션(optoin)
				var openWin = window.open(popUrl, "", popOption); 
				
				
				   openWin.document.getElementById('code').value=data.e_code; 
				    openWin.document.getElementById('name').value=data.e_name; 
				  openWin.document.getElementById('pnum').value=data.e_idnum; 
				  openWin.document.getElementById('hire').value=data.e_indate; 
				  openWin.document.getElementById('email').value=data.e_email;
				  openWin.document.getElementById('phone').value=data.e_phone;
				  openWin.document.getElementById('bname').value=data.e_bankname;
				  openWin.document.getElementById('bnum').value=data.e_banknum;
				  openWin.document.getElementById('address').value=data.e_address;
				  openWin.document.getElementById('bigo').value=data.e_bigo;
				  openWin.document.getElementById('pay').value=data.e_basicpay;
				  openWin.document.getElementById('state').value=data.e_state;
				  openWin.document.getElementById('rank').value=data.rank_name;
				  openWin.document.getElementById('dept').value=data.dept_name;   
	 			  },
			error:function(error){
			 	console.log(error); 
			}
		});
		
		   openWin.document.getElementById('code').value=e_code;  
	}
	

	
	
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
	</script>
</body>
</html>
