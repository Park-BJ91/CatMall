<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
		<link rel="shortcut icon" href="/resources/fav/favicon.ico">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
		
		<script
  src="https://code.jquery.com/jquery-3.6.4.js"
  integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
  crossorigin="anonymous"></script>
	
		<meta charset="utf-8">
		<title>Join Page</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="colorlib.com">
		
		<!-- JOIN PAGE CSS  -->
		<link rel="stylesheet" href="/resources/user/join.css">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="/resources/join/fonts/material-design-iconic-font/css/material-design-iconic-font.css">

		<!-- DATE-PICKER -->
		<link rel="stylesheet" href="/resources/join/vendor/date-picker/css/datepicker.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="/resources/join/css/style.css">
		
		
		<style>
	.email_input_re_1{
		color : green;
		display : none;
	}
	/* 중복아이디 존재하는 경우 */
	.email_input_re_2{
		color : red;
		display : none;
	}
		
		</style>
		
		
</head>
	<body>
		<div class="wrapper">
            <form id="join_form">
        		<!-- SECTION 1 -->
                <h4></h4>
                <section>
                    <div class="inner">
                    	<a href="#" class="avartar">
                    		<img src="/resources/join/images/join.png" alt="">
                    	</a> 
                    	<div class="form-row form-group">
                    		<div class="form-holder">
                    			<input type="text" name="name" class="form-control" placeholder="Name">
                    		</div>
                    		
                    		
                    	</div>
                    	<div class="form-row">
                    		<div class="form-holder"> 
                    			<input type="password" name="pwd" class="form-control" placeholder="Password">
                    			<i class="zmdi zmdi-lock-open small"></i>
                    		</div>
                    	</div>
                    	<div class="form-row">
                    		<div class="form-holder">
                    			<input type="text" name="email" class="form-control email_input" placeholder="Email">
                    			    <span class="email_input_re_1">사용 가능한 메일 입니다.</span>
									<span class="email_input_re_2">메일이 이미 존재합니다.</span>
                    			<i class="zmdi zmdi-email small"></i>
                    		</div>
                    	</div>
                    	
                    	
                    	<div class="form-row">
                    		<div class="form-holder">
                    			<input name="addr1" class="form-control addr1" placeholder="Address" readonly="readonly">
                                <i class="zmdi zmdi-map small"></i>
                    		</div>
                    	</div>
                    	
                    	<div class="form-row">
                    		<div class="form-holder">
                    			<input name="addr2" class="form-control addr2" readonly="readonly">
                    		</div>
                    	</div>
                    	
                    	<div class="form-row">
                    		<div class="form-holder">
                    			<input name="addr3" class="form-control addr3" readonly="readonly">
                    		</div>
                    	</div>
                    	
                    	
                    </div>
                </section>
	                <div>
	                	<button type="button" id="join_btn" class="btn btn-secondary btn-lg">가입하기</button>
	                </div>                
            </form>
		</div>

<script>


$("#join_btn").on("click",function(){
	
	$("#join_form").attr("action","/user/join");
	$("#join_form").attr("method","post");
	$("#join_form").submit();
	

	
});


$('.email_input').on("propertychange change keyup paste input", function(){

	//console.log("keyup 테스트");
	
	var email = $(".email_input").val();
	var data = {email : email}  //Controller pass data  email : data(.email_input)
	
	$.ajax({
		type : "post",
		url : "/user/emailCK",
		data : data,
		success : function(result){
			if(result != 'fail'){
				$(".email_input_re_1").css("display","inline-block");
				$(".email_input_re_2").css("display","none");
			}else{
				$(".email_input_re_2").css("display","inline-block");
				$(".email_input_re_1").css("display","none");
				
			}
			
			
		}
		
	});//ajax
	

});// function 종료

</script>		
		       
                
                	


</body>
</html>