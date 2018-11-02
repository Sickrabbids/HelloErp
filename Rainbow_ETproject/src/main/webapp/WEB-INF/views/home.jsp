<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Bootstrap 4</title>
    
    <!-- 부트스트랩 불러오기 -->
    <link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
    <!-- ============ -->
    
  </head>
  <body>
  	<a href="#" class="btn btn-primary btn-lg" role="button">안녕</a>
  	
  
    <div class="container">
      <div class="row">
        <div class="col-4">
          <h1>Lorem</h1>
        </div>
        <div class="col-4">
          <h1>Ipsum</h1>
        </div>
        <div class="col-4">
          <h1 data-toggle="tooltip" data-placement="bottom" title="Tooltip">Dolor</h1>
        </div>
      </div>
    </div>
   
   	<!-- 부트스트랩 불러오기 -->
 	 <script src="resources/Js/jquery-3.3.1.min.js"></script>
    <script src="resources/Bootstrap/js/bootstrap.min.js"></script> 
    <!-- ============ -->
   
   <script>
      $( function () {
        $('[data-toggle="tooltip"]').tooltip()
      } );
    </script>
    
    
 </body>
</html>