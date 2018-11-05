<%@ page language="java" contentType="text/html; charset=UTF-8"

 pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">



<title>직원 관리</title>



<link rel="stylesheet"

 href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<link rel="stylesheet"

 href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<script

 src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script

 src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>





</head>

<body>

 <div class="container">

  <div style="margin-bottom: 1%;">

   <h1>직원관리</h1>


  <div class="panel-group">

   <div class="panel panel-default">

    <div class="panel-heading">직원 입력</div>

    <div class="panel-body">

     <form role="form" action="EmployeeInsert.jsp" method="post">

      <div class="form-group">

       <label for="name">이름:</label> <input type="text"

        class="form-control" id="name" name="name"

        placeholder="이름 (30자 이내)" maxlength="30" required="required">

      </div>

      <div class="form-group">

       <label for="ssn">주민번호(뒷자리):</label>

       <input type="number"

        class="form-control " id="ssn" name="ssn"

        placeholder="주민번호 뒷자리 (NNNNNNN)"  min="1000000"  max="9999999"

        required="required">

      </div>

      <div class="form-group">

       <label for="birthday">생년월일:</label> <input type="text"

        class="form-control" id="birthday" name="birthday"

        placeholder="생년월일 (YYYY-MM-DD)" required="required">

      </div>



      <div class="form-group">

       <label for="lunar">양력음력:</label>

       <div class="radio">

        <label class="radio-inline"> <input type="radio"

         name="lunar" value="0" checked="checked">양력

        </label> <label class="radio-inline"> <input type="radio"

         name="lunar" value="1">음력

        </label>

       </div>

      </div>





      <div class="form-group">

       <label for="telephone">전화번호:</label> <input type="text"

        class="form-control" id="telephone" name="telephone"

        placeholder="전화번호 (30자 이내)" maxlength="30" required="required">

      </div>

      <div class="form-group">

       <label for="regionId">지역:</label> <select class="form-control"

        id="regionId" name="regionId">

        <option value="1">서울</option>

       </select>

      </div>

      <div class="form-group">

       <label for="departmentId">부서:</label> <select

        class="form-control" id="departmentId" name="departmentId">

        <option value="1">개발부</option>

       </select>

      </div>

      <div class="form-group">

       <label for="positionId">직위:</label> <select class="form-control"

        id="positionId" name="positionId">

        <option value="1">사원</option>

       </select>

      </div>

      <div class="form-group">

       <label for="basicPay">기본급:</label> <input type="number"

        class="form-control" id="basicPay" name="basicPay"

        placeholder="기본급 (최소 0원 이상)" required="required">

      </div>

      <div class="form-group">

       <label for="extraPay">수당:</label> <input type="number"

        class="form-control" id="extraPay" name="extraPay"

        placeholder="수당" required="required">

      </div>



      <button type="submit" class="btn btn-default">Submit</button>

     </form>



    </div>

   </div>

  </div>

 </div>


</div>
</body>

</html>


