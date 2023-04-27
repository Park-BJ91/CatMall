<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<link rel="shortcut icon" href="/resources/fav/favicon.ico">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
		
		
	
		<meta charset="utf-8">
		<title>Join Page</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="colorlib.com">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="/resources/join/fonts/material-design-iconic-font/css/material-design-iconic-font.css">

		<!-- DATE-PICKER -->
		<link rel="stylesheet" href="/resources/join/vendor/date-picker/css/datepicker.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="/resources/join/css/style.css">
		
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
                    			<input type="text" name="email" class="form-control" placeholder="Email">
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

const joinForm = $("#join_form").val();

$("#join_btn").on("click",function(){

	
});

</script>		
		       
                
                	


</body>
</html>