<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


  

 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

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
	
<title>자재및 생산품 등록 및 수정</title>

<style type="text/css">
.test{
        overflow:hidden;
    }
    
    
    .imgcl{
    display: block;
    text-align: center;
    }
    .imgcldiv{
        margin-top: 40px;
        margin-left: 25px;
        margin-right:25px; 
      
        
    float: left;    
    }
    .formdiv1{
       
        margin-top: 30px;
        margin-left: 10px;
        margin-right: 10px;
        float:left;
        
    }
    
    .formdiv2{
        
        margin-top: 30px;
        margin-left: 10px;
        float:left;
        display:inline-block;
    }
    .formdiv3{
        
        margin-top: 40px;
        margin-left: 10px;
        margin-right: 10px;
        display: inline-block;
    }
    .formdiv4{
        margin-left: 10px;
        margin-right: 10px;
    }
    .b1{
        float:left
    }
   

</style>

</head>

<body>
  
                <!--상단 제목-->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header" id='title' > &ensp;제품등록</h1>
                </div>
            </div>
            <!--상단 제목 _END -->
            
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
         
                                  <div class="panel-body">
                            <div class="row">
                               
                               
                                <div class="col-lg-6 test" >
                                    
                                       <!--서버로 값보내는 from-->
                                       <form role="form">
                                        
                                              
                                            <div class="form-group imgcldiv" style="width: 150px">
                                            <label for='filePoster' class="imgcl" style="margin-top:10px">
                                            <img id='tt' src="resources/Img/0.png" width="146px" height="140px">
                                            </label>
                                            	<input type="file" id='filePoster' style='display:none'
                                            	onchange="fileInfo(this)" accept="image/*"
                                            	name='file'
                                            	/>
                                            
                                            </div>
                                              
                                            <!--품목코드 규격 input-->
                                            <br>
                                            <div class="form-group formdiv1" >
                                            <label>&ensp;품목코드</label>
                                            <input class="form-control" name="">
                                            <p class="help-block">&emsp;</p>
                                            <label>&ensp;규격</label>
                                            <input class="form-control" name="">
                                            
                                           </div>
                                            <!--품목코드 규격 input END-->      
                                          
                                          
                                            <!--품명 단위 input-->  
                                            
                                            <div class="form-group formdiv2" >
                                            <label>&ensp;품명</label>
                                            <input class="form-control" name="" value='????'>
                                            <p class="help-block">&emsp;</p>
                                            
                                            
                                            <label>&ensp;단위</label>
                                            <input class="form-control" name="">
                                            
                                            
                                           </div>
                                              <!--품명 단위 input END--> 
                                    </form>
                                    
                                </div>
                                     
                         </div>
                    </div>
                    
                    <div class="form-group" >
                                              
                                            <!--단가 input-->
                                            <div class="form-group formdiv1" style="margin-top: 1px;" >
                                            <label>&ensp;단가</label>
                                            <input class="form-control" name="">
                                            
                                            
                                           </div>
                                            <!--단가 규격 input END-->      
                                          
                                          
                                            <!--안전재고 input-->  
                                            <div class="form-group formdiv1" style="margin-top: 1px;" >
                                            <label>&ensp;안전재고</label>
                                            <input class="form-control" name="">
                                            
                                           
                                           </div>
                                          <!--단가 규격 input END-->      
                    
                                           <!--종류 input-->  
                                       <div class="form-group formdiv3" style="margin-top: 1px;" >
                                       <label>&ensp;종류</label>
                                      <input class="form-control" name="">
                                     </div>
                                           <!--종류 input END-->      
                    </div>
                    
                    <div class="form-group formdiv4">
                                            <label>비고 </label>
                                            <textarea class="form-control" rows="3" style="width: 628px;"></textarea>
                                    
                        
                                        </div>
                                        <br>
                    
                        <!--<button style="margin-left: 585px;" > 등록 </button>-->
                        <div class="col-md-1" style="float:left">
                        <table style="margin-left: 504px;">
                            <tr>
                                <td>
                    <a href="#" class="btn btn-primary b1" onclick='abc()' style="display: none">수정</a>	
                                </td>
                                
                                
                                
                                <td style="padding-left: 10px">
                    <a href="#" class="btn btn-primary b1" onclick='abc()' style="width: 105px;">등록</a>	    
                                </td>
                            </tr>
                            
                        </table>
							
							</div>	
	                    
									
									
							
                    
                    
                    
                    
                    
                    
                </div>
    </div>

</body>

<script type="text/javascript">

/* window.onload=function(){
	var a=${}
	
} */




var file=document.getElementById('filePoster');
function fileInfo(f){
    var file=f.files;   
    if(file[0].size > 5120*1024){
        
        alert("파일사이즈가 5MB 초과");
        $('#filePoster').replaceWith($('#filePoster').clone(true));
        
     return;   
    }
    else if(file[0].type.indexOf('image')){
        $('#filePoster').replaceWith($('#filePoster').clone(true));
        alert("이미지파일을 넣어주세요");
      $('#filePoster').val("");
        return;
    }
    
     $('#filePoster').replaceWith($('#filePoster').clone(true));
    
    var reader =new FileReader();
    reader.onload=function(rst){
        var a=rst.target.result;
        $('#tt').attr('src',a);
    }
    reader.readAsDataURL(file[0]);
}
    



</script>

</html>

