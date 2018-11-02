<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta name="viewprot" content="width=device-width , initial-scale=1"
	charset="UTF-8">
<title>첫 페이지 </title>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  -->

<script src="resources/Js/jquery-3.3.1.min.js"></script> 
<script type="text/javascript" src="resources/L_Validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="resources/L_Validation/additional-methods.min.js"></script>
<script type="text/javascript" src="resources/L_Validation/messages_ko.min.js"></script>	

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

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


#mo {  	 /*로그인 모달창  */
	margin-top: 70%;
	align-content: center;
	align-items: center;
	align-self: center;
}

#car1 {         /*케러셀*/
	width: 65%;
	height: 65%;
}

.modal {		/*모달전체  */
	text-align: center;
	align-content: center;
	align-items: center;
	align-self: center;
}



#two {        /*모달 바디 */
	border: 20%;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default" id="nav">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">로고 or 상호</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a data-target="#modal2" data-toggle="modal">로그인<span
							class="sr-only"></span></a></li>
					<li><a href="provisionForm">회원가입</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container" id="car1">
		<div id="carousel-example-generic" class="carousel slide"
			align="center" > 
			<!--
            id="carousel-example-generic" 없으면 다음 페이지로 안넘어간다.
            class="carousel":이미지 양쪽의 화살표 보이게 하는것
                (화살표 없어도 그 부근 클릭하면 넘어간다.이 줄 없으면 아래 동그란 인티케이터도 안나타난다.) 
                 slide 없으면 슬라이드 효과 없이 그냥 이미지가 나타난다. 
                -->

			<!-- Indicators(이미지 하단의 동그란것->class="carousel-indicators") -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
			<!-- 
                위의 data-slide-to가 0 2 2이면 두번째 동그라미 클릭해도 3번째 이미지가 나온다. 
                0 2 5이면 세번째 동그라미 클릭해도 아무 반응이 없다. 
                Indicators는 이미지 갯수와 같게 만들어야 한다. 
            -->
			<!-- Carousel items -->
			<div class="carousel-inner" align="center" id="rr">
				<!-- class="carousel-inner" : 없으면 이미지 3장이 모두 세로로 배치된다.  -->
				<div class="item active">
					<img src='<!--경로 -->' alt="First slide" id="cimg">
					 <!-- <div class="carousel-caption">
                        <h3></h3>
                     </div>  --> 
				</div>
				<div class="item">
					<img src='' alt="Second slide" id="cimg">
						<!-- <div class="carousel-caption">
                        <h3></h3>
                     </div>  -->
				</div>
				<div class="item">
					<img src='' alt="Third slide" id="cimg">
						<!-- <div class="carousel-caption">
                        <h3></h3>
                     </div>  -->
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
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- 	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> -->
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<!-- 아래 코드 없어도 잘 된다. 
    => 아래 코드(1)자리가 없으면 자동 순환이 안된다. 1의 자바스크립트 코드가 반드시 있어야 한다.  -->
	<script>
		/* $('.carousel').carousel() /* 1 */ 

		
		 
		$('.carousel').carousel({
		    interval: 300
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

	<div class="row" align="center">
		<div class="modal" id="modal2" tabindex="-1">
			<div class="modal-dialog modal-sm">
				<div class="modal-content" id="mo" align="center">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>


					</div>
					<div class="modal-body" style="margin-left: -4%;">
						<div class="container" align="center" id="two">
							<div class="row" align="center">
								<div class="col-md-3 ml-3" align="center">
									<div class="panel panel-primary" align="center">
										<div class="panel-heading" align="center">
											<h3 class="panel-title">
												<span class="glyphicon glyphicon-tags"></span> 로그인
											</h3>
										</div>
										<div class="panel-body" align="center">
											<div class="media"></div>
										</div>
										<!--  form action="login" onSubmit="login();return"-->
											<table class="table">
												<tr align="center">
													<td><input type="text" class="form-control" name='m_id' id='m_id'
														placeholder="아이디를 입력해주세요"></td>
												</tr>
												<tr align="center">
													<td><input type="password" class="form-control" name='m_pwd' id='m_pwd'
														placeholder="비밀번호를 입력해주세요"></td>
												</tr>
												<tr align="center">
													<td><input type="button" onclick="login();"
														class="btn btn-primary btn-sm btn-block" value="로 그 인"></td>
												</tr>
												<tr align="center">

													<td><a href="provisionForm">회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp; <a
														href="#">아이디/비밀번호 찾기</a></td>
												</tr>

											</table>
										<!--/form-->
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		function login(){
		
			var m_id =$('input[name=m_id]').val();
			var m_pwd = $('input[name=m_pwd]').val();
			
			 $.ajax({
						type:'post',
						url:'logIn',
						data:{"m_id":m_id, "m_pwd":m_pwd}, 
						dataType:'text',
						success:function(data){	
							console.log(data)	
							 if(data=="0"){
					    		alert("아이디 또는 패스워드가 다릅니다.");
					    	 }else if(data=="1"){
					    		 location.href="adminMain";
					    	 }else {
					    		 location.href="erpMain"; 
					    	 }  
						}, 
						error:function(error){
							alert("error");
						console.log(error);				
					}
						
					}); 
					
			  } 
				
	</script>
		
		
</body>
</html>