<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/Js/jquery-3.3.1.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="resources/test/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="resources/test/vendor/metisMenu/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="resources/test/dist/js/sb-admin-2.js"></script>

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

<style>

	#memberList{text-align:center;}
	#rList{width:50px;}
</style>
</head>
<body>
	<nav>
		<jsp:include page="menuInclude/MainNavigation.jsp" />
	</nav>
<%-- 	${m_id}
	<input type="button" name="logOut" value="로그아웃" onclick="logOut()" /> --%>
	<%-- ${listHtml} --%>



	<div class="col-md-12" style="margin: 20px" id="memberList">
		
		
		<table class="table table-striped">
			<thead>
			<tr>
				<td>회사상호</td>
				<td>담당자</td>
				<td>담당자 전화번호</td>
				<td>수금일</td>
				<td>수금여부</td>
			</tr>
		</thead>
		<tbody id="rList">
		
		</tbody>
		</table>
			<div class="col-md-12" id="paging"></div>

	</div>

</body>
<script>

	$(document).ready(function(){
		var page=1;
		pagingList();	
		memberList(page);
	});
	
function pagingList() {
		var page = 1;
		$.ajax({
					contentType : 'application/json; charset=UTF-8',
					type : 'post',
					url : 'L_paging',
					/* async: false,  */
					data : {
						'page' : page
					},
					datatype : "json",
					success : function(data) {

						console.log(data);
						var paging = "";
						paging += '<ul class="pagination">'

						for (var page = data.startPage; page <= data.endPage; page++) {
							/* if(data.page>1){
								 paging+='<td>'
									    +'[이전]'
									    +'</td>'
							} */
							paging += '<li>'
									+ '<a href="#" onclick="memberList(\''
									+ page
									+ '\'); return false;" aria-label="Previous">'
									+ '<span aria-hidden="true">'
									+ page + '</span>' + '</a>' /*onclick="memberList(\''+page+'\'); return false;"  */
									+ '</li>'

						}
						if (data.endPage <= 10) {
							paging += '<li>' + '<a href="#">'
									+ '[다음]' + '</a>' + '</li>'
						}
						paging += '</ul>'

						$("#paging").html(paging);

					},
					error : function(error) {

						console.log(error);
					}

				});

	}


	function memberList(page) {

		$.ajax({
			contentType : 'application/json; charset=UTF-8',
			type : 'post',
			url : 'L_paging?page=' + page,
			datatype : "json",
			success : function(data) {
				var pageNum = {};
				console.log(data.list);
				var rList = "";
				for ( var index in data.list) {

					var serch = "";
					serch += data.list[index]['m_id'];
					rList += '<tr>' + '<td>'
							+ '<a href="#" onclick="listLink(\'' + serch
							+ '\'); return false;">'
							+ data.list[index]['m_cname'] + '</a></td>'
							+ '<td>' + data.list[index]['m_cmname'] + '</td>'
							+ '<td>' + data.list[index]['m_cmphone'] + '</td>'
							+ '<td>' +'<input type="text" />' + '</td>'
							+ '<td>' +'<a href="#" >'+'확인'+'</a>'+ '</td>'
							+ '</tr>'
				}
				$("#rList").html(rList);

			},
			error : function(error) {
				console.log(error);
			}
		});

	}

	function listLink(m_id) {

		window.open("memberInfo?m_id=" + m_id, "memberInfo",
				"height=600, width=800");

		$
				.ajax({
					contentType : 'application/json; charset=UTF-8',
					type : "post",
					url : "memberInfo?m_id=" + m_id,
					dataType : 'json',
					success : function(data) {
						console.log(data);
						var settings = 'toolbar=0, statuse=0, meunbar=0, scrollbars=yes, height=600, width=800';
						var target = 'memberInfoForm';
						popup = window.open('about:blank', "memberInfoForm",
								settings);

						$.load("memberInfo", function() {
							popup.location = target;
						});
					},
					error : function(error) {
						console.log(error);

					}

				});
	}
</script>
</html>