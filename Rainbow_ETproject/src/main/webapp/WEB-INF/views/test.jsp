<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<form id="form1" runat="server">
		<input type='file' onchange="readURL(this);" /> <img id="blah"
			src="#" alt="your image" />
	</form>


</body>
<script type="text/javascript">
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>





<!-- <a href="javascript:popupOpen();" >테스트</a>

<div id='te'>


</div>
<script type="text/javascript">
function popupOpen(){
$('#te').load('employmentList');	
}
</script> -->
</body>
</html>