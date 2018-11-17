<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>index </title>

<script src="resources/Js/jquery-3.3.1.min.js"></script> 
<script type="text/javascript" src="resources/L_Validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="resources/L_Validation/additional-methods.min.js"></script>
<script type="text/javascript" src="resources/L_Validation/messages_ko.min.js"></script>	

<!-- Bootstrap -->
<script src="resources/Bootstrap/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="resources/Bootstrap/vendor/metisMenu/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="resources/Bootstrap/dist/js/sb-admin-2.js"></script>


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

<style type="text/css">
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
	width: 100%;
}


#fot2{
height: 10%;
}


#fot {                /*풋터 */
	position: absolute;
	left: 0;
	height:8%;
	bottom: 0;
	width: 100%;
	padding: 15px 0;
	text-align: center;
	color: white;
}

</style>
</head>
<body>

		<nav>
		<jsp:include page="menuInclude/MainNavigation.jsp" />
		</nav>

	<div class="container" id="car1">
		<div id="carousel-example-generic" class="carousel slide"
			align="center" > 
		
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
	
			<div class="carousel-inner" align="center" id="rr">
				<!-- class="carousel-inner" : 없으면 이미지 3장이 모두 세로로 배치된다.  -->
				<div class="item active">
					<img src='<!--경로 -->' alt="First slide" id="cimg">
					
				</div>
				<div class="item">
					<img src='' alt="Second slide" id="cimg">
				
				</div>
				<div class="item">
					<img src='' alt="Third slide" id="cimg">
					
				</div>
			</div>
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				data-slide="prev"> <span class="icon-prev"></span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				data-slide="next"> <span class="icon-next"></span>
			</a>
		</div>
	</div>
	
	<script>

		$('.carousel').carousel({
		    interval: 10000
		}); 
		
	</script> 
	<nav class="navbar navbar-default navbar-fixed-bottom" id="fot2">
	
		<div class="container">
			
			<div class="row">
				<div class="col-sm-3" style="text-align: center;"></div>
				<div class="col-sm-6" style="text-align: center;">
					<h5>Copyright &copy; 2018</h5>
					<h5>저작권자</h5>
				</div>
				<div class="col-sm-3" style="text-align: center;">
					<h4>기업정보</h4>
					기업명(유) l 대표자: 나대박 l<br /> 사업자등록번호: 101-5555-123123
				</div>

			</div>
		</div>
	</nav>

	<script>
	</script>
</body>
</html>