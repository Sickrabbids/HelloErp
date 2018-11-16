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
	<%-- ${listHtml} --%>
	<table>
		<tr>
			<td>회사상호</td>
			<td>담당자</td>
			<td>담당자 전화번호</td>
			<td>수금일</td>
			<td>수금여부</td>
		</tr>
	</table>
	<table id="rList">

	</table>
	<table id="paging">
	
	</table>

</body>
<script>
	
	$(document).ready(
			
			function pagingList() {
				var page = 1;
				console.log("누구냐넌?"+page);
				$.ajax({
					contentType : 'application/json; charset=UTF-8',
					type : 'post',
					url : 'L_paging',
					/* async: false,  */
					data : {'page' : page },
					datatype : "json",
					success : function(data) {
						
						console.log(data);
						var paging = "";
						paging +='<tr>'
						
						for(var page=data.startPage; page<=data.endPage; page++){
							/* if(data.page>1){
								 paging+='<td>'
									    +'[이전]'
									    +'</td>'
							} */
							paging +='<td>'	
									+'<a href="#" onclick="memberList(\''+page+'\'); return false;">' + page + '</a>' /*onclick="memberList(\''+page+'\'); return false;"  */
									+'</td>'
										
						}
						if(data.endPage<=10){
							paging+='<td>'
								   +'<a href="#">'
								   +'[다음]'
								   +'</a>'
								   +'</td>'
						}
						paging +='</tr>'
						
						$("#paging").html(paging);
						
					},
					error : function(error) {
						
						console.log(error);
					}

				});

			}
			
	);
	
	
function memberList(page){
		
	 	console.log("이건가저건가요건가?"+page);  
		$.ajax({
			contentType : 'application/json; charset=UTF-8',
			type : 'post',
			url : 'L_paging?page='+page, 
			datatype : "json",
			success : function(data) {
				var pageNum = {};
				console.log(data.list);
				var rList = "";
				for ( var index in data.list) {

					var serch = "";
					serch += data.list[index]['m_id'];
					rList += '<tr>' + '<td>'
							+ '<a href="#" onclick="listLink(\''+ serch + '\'); return false;">'
							+ data.list[index]['m_cname'] + '</a></td>'
							+ '<td>' + data.list[index]['m_cmname']
							+ '</td>' + '<td>'
							+ data.list[index]['m_cmphone'] + '</td>'
							+ '</tr>'
				 }
				$("#rList").html(rList);
			
			},
			error: function(error){
				console.log(error);
			}
		}); 

	} 

	function listLink(m_id) {

		console.log(typeof m_id);
		console.log("이것을 못찾는가?" + m_id);
		window.open("memberInfo?m_id=" + m_id, "memberInfo",
				"height=600, width=800");
		
				$.ajax({
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

	function logOut() {
		location.href = "logOut";
	}
</script>
</html>