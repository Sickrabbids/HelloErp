<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<!-- jQuery -->
<script src="resources/Bootstrap/vendor/jquery/jquery.min.js"></script>


<title>Insert title here</title>

<style type="text/css">
html, body {
	overflow: hidden;
	width: 680px;
	height: 680px;
	left: 700;
	top: 50";
}

.test {
	overflow: hidden;
}

.imgcl {
	display: block;
	text-align: center;
}

.imgcldiv {
	margin-top: 40px;
	margin-left: 25px;
	margin-right: 25px;
	float: left;
}

.formdiv1 {
	margin-top: 30px;
	margin-left: 10px;
	margin-right: 10px;
	float: left;
}

.formdiv2 {
	margin-top: 30px;
	margin-left: 10px;
	float: left;
	display: inline-block;
}

.formdiv3 {
	margin-top: 40px;
	margin-left: 10px;
	margin-right: 10px;
	display: inline-block;
}

.formdiv4 {
	margin-left: 10px;
	margin-right: 10px;
}

.b1 {
	float: left
}
</style>

</head>
<body>



	<!--상단 제목-->
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header" id='title'>&ensp;</h1>
		</div>
	</div>
	<!--상단 제목 _END -->

	<!-- /.row -->

	<div class="row">

		<div class="col-lg-12">
			<!--서버로 값보내는 from-->
			<form action="#" enctype="multipart/form-data" method="post" id="frm">

				<div class="panel-body">
					<div class="row">


						<div class="col-lg-6 test">



							<div class="form-group imgcldiv" style="width: 150px">
								<label for='filePoster' class="imgcl" style="margin-top: 10px">
									<img id='tt' class="count" src="resources/Img/first.png" width="146px"
									height="140px">
								</label> <input type="file" class="count" id='filePoster' style='display: none'
									onchange="fileInfo(this)" accept="image/*" name='files' />

							</div>

							<!--품목코드 규격 input-->
							<br>
							<div class="form-group formdiv1">
								<label>&ensp;품목코드</label> <input class="form-control count"
									name="GOD_CODE">
								<p class="help-block">&emsp;</p>
								<label>&ensp;규격</label> <input class="form-control count"
									name="GOD_STANDARD">

							</div>
							<!--품목코드 규격 input END-->


							<!--품명 단위 input-->

							<div class="form-group formdiv2">
								<label>&ensp;품명</label> <input class="form-control count"
									name="GOD_NAME">
								<p class="help-block">&emsp;</p>


								<label>&ensp;단위</label> <input class="form-control count"
									name="GOD_UNIT">


							</div>
							<!--품명 단위 input END-->

						</div>

					</div>
				</div>

				<div class="form-group">

					<!--단가 input-->
					<div class="form-group formdiv1" style="margin-top: 1px;">
						<label>&ensp;단가</label> <input class="form-control count"
							name="GOD_PRICE">


					</div>
					<!--단가 규격 input END-->


					<!--안전재고 input-->
					<div class="form-group formdiv1" style="margin-top: 1px;">
						<label>&ensp;안전재고</label> <input class="form-control count"
							name="GOD_SAFTESTOCK">


					</div>
					<!--단가 규격 input END-->

					<!--종류 input-->
					<div class="form-group formdiv3" style="margin-top: 1px;">
						<label>&ensp;종류</label> <input class="form-control count"
							name="GOD_KIND">
					</div>
					<!--종류 input END-->
				</div>

				<div class="form-group formdiv4">
					<label>비고 </label>
					<textarea class="form-control count" rows="3" style="width: 628px;"
						name="GOD_BIGO"></textarea>
				</div>
				<input type="hidden" id="GOD_ORICODE" >
			</form>
			<br>
			<div class="col-md-1" style="float: left">

				<!--                         <table style="margin-left: 204px;"> -->
				<table>

					<tr>
						<td><h2 style="padding: 5px 0px;">
								재고량 : <small><input type="number" name="GOD_STOCK" class="count"
									style="width: 120px; hight: 30px;" min="0"></small>
							</h2></td>
						<td>
						<input type="button" id="update"
							onclick="submit('update')" class="btn btn-primary b1"
							style="display: none; margin-right: 10px; margin-left: 267px"
							value="수정" /> 
							<a href="#" id="delete" onclick="submit('delete')"
							class="btn btn-primary b1" style="display: none">삭제</a> <input
							type="button" id="insert" onclick="submit('insert')"
							class="btn btn-primary b1"
							style="width: 105px; margin-left: 280px" value="등록" /></td>



						<td style="padding-left: 10px"></td>
					</tr>

				</table>

			</div>

		</div>
	</div>

	<!-- rol end -->



</body>
<script>
	window.onload = function() {
	
	/* 	if(${getout}){
			window.opener.location.reload();
			window.close();
		}else{
			alert("???");
		} */
		
		
		var gson = ${test1};
		var count = document.getElementsByClassName('count');
		console.log(gson["title"]);
		$('#title').html("&ensp;&ensp;" + gson["title"]);
		if (gson["title"] === "제품정보") {
			$('#insert').css("display", "none");
			$('#update').css("display", "inline-block");
		 	$('#GOD_ORICODE').attr("name","GOD_ORICODE");
			$('#delete').css("display", "inline-block");
			/* $('#delete').attr(
					"href",
					"materialReForm?GOD_CODE=" + gson["GOD_CODE"]
							+ "&connectType=delete"); */
		}

	/* 	if (gson["connectType"] === "수정성공") {
			console.log(gson["title"]);
			alert("수정성공");
			location.href = "materialInfoGodFrom?GOD_CODE=" + gson["recode"];
		}
 */
		for ( var index in gson) {
			if (index === "GOD_PHOTO") {
				console.log("온다!!!");

				$('#tt').attr("src","image/"+ gson[index]);
				console.log(gson["GOD_CODE"]);
			}
			for (var i = 0; i < count.length; i++) {
				if (count[i].getAttribute('name') === index) {
						count[i].value = gson[index];
					if(index==="GOD_CODE"){
						console.log(gson[index]);
						$('#GOD_ORICODE').val(gson[index]);
					}
					
										}
				}
			}
		}

/* 	 function submit(connectType) {
		if (connectType == "update") {
			$('#frm').attr("action", "material_U_I_D?connectType=update");
	
		} else if (connectType == "delete") {
			$('#frm').attr("action", "material_U_I_D?connectType=delete");
			$('#frm').submit();
			
		} else if (connectType == "insert") {
			$('#frm').attr("action", "material_U_I_D?connectType=insert");
			alert("고고싱?");
			$('#frm').submit();
		}

	}  */
	
	function submit(connectType) {
		var formData= new FormData($('#frm')[0]);
		$.ajax({
		type:"POST",
		url: "material_U_I_D?connectType="+connectType,
		processData: false,
		contentType: false,
		data:formData,
		success:function(data){
			window.opener.location.reload();
			window.close();
		},
		error:function (err){
			
		} 
			
			
		});
	}

	var file = document.getElementById('filePoster');
	function fileInfo(f) {
		var file = f.files;
		if (file[0].size > 10240 * 1024) {

			alert("파일사이즈가 10MB 초과");
			$('#filePoster').replaceWith($('#filePoster').clone(true));

			return;
		} else if (file[0].type.indexOf('image')) {
			$('#filePoster').replaceWith($('#filePoster').clone(true));
			alert("이미지파일을 넣어주세요");
			$('#filePoster').val("");
			return;
		}

		$('#filePoster').replaceWith($('#filePoster').clone(true));

		var reader = new FileReader();
		reader.onload = function(rst) {
			var a = rst.target.result;
			$('#tt').attr('src', a);
		}
		reader.readAsDataURL(file[0]);
	}
</script>


</html>