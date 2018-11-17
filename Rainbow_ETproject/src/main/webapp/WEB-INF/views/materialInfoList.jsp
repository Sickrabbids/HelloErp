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

<title>materialInfoList</title>

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
</style>
<body>

	<div id="wrapper">
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
									<span class="glyphicon glyphicon-tags"></span> &nbsp;&nbsp;자재/생산 목록
								</h3>
							</div>
							<form action="test1" method="post" onsubmit="return abc()">
								<table class="container-fluid" id='tta'>
									<thead>
										<tr>
											<th>사진</th>
											<th>코드(상세보기)</th>
											<th>품명</th>
											<th>안전재고</th>
											<th>총재고</th>
											<th>단가</th>
											<th>총액</th>
											<th>분류</th>
										</tr>
									</thead>

									<tbody id='GODMATEREAL' >

									</tbody>
								</table>
							</form>
							<div class="col-md-4"></div>
							<div class="col-md-5" style="margin: 20px">
								<nav>
									<ul class="pagination" id="pagging">
								
								
										
		 							</ul>
								</nav>

							</div>

							<div class="col-md-1">
								<a href="#" class="btn btn-primary" style="margin: 40px"
									onclick='addMater()'>등록</a>	
							</div>
							<script type="text/javascript">
													
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
		
window.onload = function () {
		
		$('#pagging').html("${pagging}");
		
		var $S_Json= ${s_json}
		materList($S_Json);
		
		var a=$('.vavava');
		console.log(a);
		for(var i=0;i<a.length;i++){
			console.log(i+"=번째"+a[i].text);
		}
		
	 	$('.vavava').click(function(){
	 		var a=$(this).text();
			alert("진짜됨???"+a);
			window.open("materialInfoGodFrom?GOD_CODE="+encodeURI(a), "품목정보", "width=650, height=700, left=680, top=50,status=0,location=no,menubar=no  ");
		}); 
	}

	function addMater(){
		
		window.open("materialInfoGodFrom?connectType=add", "품목등록", "width=650, height=700, left=680, top=50,status=no,location=no,menubar=no,toolbar=no,scrollbars=no");
		
	}
	

	function paging(pageNum){

		$.ajax({
			url: "materialInfoListAjax",
			type: "POST",
			data: {"pageNum":pageNum},
			success: function(result){
				console.log(typeof(result));
				console.log(result);
	
				 materList(JSON.parse(result));
				
			},
			error: function (err){
			console.log("에러!!"+err);				
			}
			         });
	}

	function materList($S_Json){
		var my_tbody = document.getElementById('GODMATEREAL');
		$('#GODMATEREAL').children().remove();
		 var makerow="";
				for(var index in $S_Json){
	
				makerow +="<tr class='testtt'>";				
				makerow +="<td><input type='text' value="+$S_Json[index]['MA_ORI_PHOTO']+" ></td>";
				makerow +='<td><a href="#" class=\'vavava\' >'+$S_Json[index]['GOD_CODE']+'</a></td>';
				makerow +="<td><input type='text' value="+$S_Json[index]['GOD_NAME']+" ></td>";
				makerow +="<td><input type='text' value="+$S_Json[index]['GOD_SAFTESTOCK']+" ></td>";
				makerow +="<td><input type='text' value="+$S_Json[index]['GOD_STOCK']+" ></td>";
				makerow +="<td><input type='text' value="+$S_Json[index]['GOD_PRICE']+" ></td>";
				makerow +="<td><input type='text' value='"+$S_Json[index]['HAB']+"'></td>";
				var test=$S_Json[index]['GOD_KIND'];
				if(test==1){
				makerow +="<td><input type='text' value='자재'></td>"
	
				}
				else if(test==2){
				makerow +="<td><input type='text' value='식자재'></td>"
	
				}
				else if(test==3){
				makerow +="<td><input type='text' value='생산품'></td>"
	
				}
				makerow +="</tr>";
				}
			my_tbody.innerHTML = makerow;
	}
		
		 	function add() {
				var tr = $(this);
				console.log(tr);
				var my_tbody = document.getElementById('GODMATEREAL');
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
