<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>ErpMain</title>

<!-- Bootstrap Core CSS -->
<link href="resources/Bootstrap/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="resources/Bootstrap/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/Bootstrap/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="resources/Bootstrap/vendor/font-awesome/css/font-awesome.min.css"
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
}

#bor {
	padding: 20px;
}

.table th {
	
}

.table td {
	vertical-align: middle;
}

#test {
	vertical-align: middle;
}

.hi {
	display: none;
}
/* #tt{
vertical-align:middle;
	text-align: center;
} */
</style>
<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav>
		<jsp:include page="menuInclude/Navigation.jsp" />
		</nav>
		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12" id='main'>






						<div class="form-group" id='bor'>
							<select class="form-control">
								<option>이름</option>
								<option>사번</option>
							</select> <input type="text" class="form-control"> <input
								type='submit' class="btn btn-primary " value='검색'>
						</div>


						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<span class="glyphicon glyphicon-tags"></span> &nbsp;&nbsp;직원명단
								</h3>
							</div>
							<form action="test1" method="post" onsubmit="return abc()">
								<table class="table" id='tta'>
									<thead>
										<tr>
											<th>선택</th>
											<th>행추가</th>
											<th>사번</th>
											<th>이름</th>
											<th>직급</th>
											<th>부서</th>
											<th>부서번호</th>
										</tr>
									</thead>
									<tbody id='test'>

										<tr>
											<td class="a"><input type="checkbox" class='a'>

											</td>
											<td>
												<button type='button' class='btn btn-primary btn-xs'
													onclick="add()">
													<span class='glyphicon glyphicon-plus'></span>
												</button>
											</td>

											<td><input type='text' name='a' value='0A-15-23'
												class='t'>0000</td>
											<td><input type="text" class='hi' value='훈짱'><a
												href="#">훈짱</a>111</td>
											<td><input type='text' name='b' value='' class='t'>222</td>
											<td><input type='text' name='c' value='' class='t'>333</td>
											<td><input type='text' name='d' value='' class='t'>444</td>
										</tr>

									</tbody>
								</table>
							</form>
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
							<!-- 	<div class="col-md-1">
								<a href="javascript:popupOpen();" class="btn btn-primary"
									style="margin: 40px">등록</a>
							</div>
							-->
							<div class="col-md-1">
								설마여기?ㅋㅋㅋ <a href="#" class="btn btn-primary"
									style="margin: 40px" onclick='abc()'>등록</a>
							</div>


							<script type="text/javascript">
								function popupOpen() {
									var popUrl = "empinsert"; //팝업창에 출력될 페이지 URL
									var popOption = "width=1200, height=900, resizable=no, scrollbars=no, status=no;"; //팝업창 옵션(optoin)
									window.open(popUrl, "", popOption);
								}
								function abc1() {
									/* 체크박스 a input 박스 t */
									console.log("시작");
									var a = document
											.getElementsByClassName('a');

									/* $("#test").text(text); */
									$('.a')
											.each(
													function(index) {
														var tt = $(this).is(
																":checked"); /* 체크녀석 확인후 담기 */

														if (tt) {
															var trNum = $(this)
																	.closest(
																			'tr')
																	.prevAll().length;
															console
																	.log('trNum : '
																			+ trNum);
															var text = $(
																	"#tta tr td input")
																	.eq(0)
																	.val();
															console.dir(text);
															var td = $(this)
																	.closest(
																			'tr')
																	.prevAll().cells[1];
															console
																	.log('도막사라무=='
																			+ td
																					.val());
														}
													});
								}

								function abc() {
									var rowData = new Array();

									var gson = new Array();
									var checkbox = $("input[class=a]:checked");

									checkbox.each(function(i) {
										var tr = checkbox.parent().parent().eq(
												i);
										var td = tr.children();
										var tdArr = new Object();

										var a = td.eq(2).find(
												'input[type="text"]').val();
										var b = td.eq(3).find(
												'input[type="text"]').val();
										var c = td.eq(4).find(
												'input[type="text"]').val();
										var d = td.eq(5).find(
												'input[type="text"]').val();
										var e = td.eq(6).find(
												'input[type="text"]').val();
										tdArr.a = a;
										tdArr.b = b;
										tdArr.c = c;
										tdArr.d = d;
										tdArr.e = e;

/* 										console.log(tdArr); */

										rowData.push(tdArr);
								/* 		console.log(rowData); */
										
									});
									
										
										var test= JSON.stringify(rowData);
								/* 		console.log(test);								
										alert(typeof(test));
										 */
										$.ajax({
											type:"POST",
											url :"test",
											data: {test:test},
											dataType:"html",
											success: function (gogo){
												console.log("?????");
												 console.log(gogo)
												 
												alert(gogo);	
											},
											error: function(error){
												console.log("/////");
												console.log(error)
												alert(error)
											}
										});
										
										
										}
								
								/* 	$(document).ready(function() {
								    	$("#btn").on("click", function() {
								       		var text = $("#tbl tr td input").eq(1).val();
								        	$("#test").text(text);
								        });
								    });
								
								
								$('.clickBtn').bind('click', function() { 
									var trNum = $(this).closest('tr').prevAll().length; 
									console.log('trNum : ' + trNum); 
									});
								 */
								 
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
	<script src="resources/Bootstrap/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="resources/Bootstrap/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="resources/Bootstrap/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="resources/Bootstrap/dist/js/sb-admin-2.js"></script>
	<script>
		function add() {
			var tr = $(this);
			console.log(tr);
			var my_tbody = document.getElementById('test');
			var row = my_tbody.insertRow(0);
			var cell0 = row.insertCell(0);
			var cell1 = row.insertCell(1);
			var cell2 = row.insertCell(2);
			var cell3 = row.insertCell(3);
			var cell4 = row.insertCell(4);
			var cell5 = row.insertCell(5);
			var cell6 = row.insertCell(6);
			cell0.innerHTML = "<input type='checkbox'class='a' >";
			cell1.innerHTML = "<button type='button'  class='btn btn-primary btn-xs' onclick='add()'><span class='glyphicon glyphicon-plus'></span></button>";
			cell2.innerHTML = "<input type='text' name='a' value='' class='t'>";
			cell3.innerHTML = "<input type='text' name='b' value='' class='t'>";
			cell4.innerHTML = "<input type='text' name='c' value='' class='t'>";
			cell5.innerHTML = "<input type='text' name='d' value='' class='t'>";
			cell6.innerHTML = "<input type='text' name='e' value='' class='t'>";
		}
	</script>
</body>

</html>
