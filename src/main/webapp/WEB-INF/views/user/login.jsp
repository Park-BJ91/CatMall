<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="shortcut icon" href="/resources/fav/favicon.ico">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<style type="text/css">
.bg-image-vertical {
position: relative;
overflow: hidden;
background-repeat: no-repeat;
background-position: right center;
background-size: auto 100%;
}

@media (min-width: 1025px) {
.h-custom-2 {
height: 50%;
}
}

/* 로그인 실패시 경고글 */
.login_warn{
    margin-top: 30px;
    text-align: center;
    color : red;
}

</style>

<script
  src="https://code.jquery.com/jquery-3.6.4.js"
  integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
  crossorigin="anonymous"></script>


</head>
<body>

<section class="vh-100">
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-3 text-black">

        <div class="px-5 ms-xl-4">
          <i class="fas fa-crow fa-2x me-3 pt-5 mt-xl-4" style="color: #709085;"></i>
          <span class="h1 fw-bold mb-0"><img alt="" src="/resources/img/logo.png"> </span>
        </div>

        <div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">
		  
		  
		  <!--  Form  -->
          <form style="width: 23rem;" id="login_form" method="post">

            <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px; color: #00c4ff">로그인</h3>

            <div class="form-outline mb-4">
              <input name="email" type="email" id="email" class="form-control form-control-lg" />
              <label class="form-label" for="form2Example18">이메일 주소</label>
            </div>

            <div class="form-outline mb-4">
              <input name="pwd" type="password" id="pwd" class="form-control form-control-lg" />
              <label class="form-label" for="form2Example28">비밀번호</label>
            <c:if test = "${result == 0 }">
                <div class = "login_warn">이메일 또는 비밀번호를 확인해주세요.</div>
            </c:if>
            </div>
            
            
<!--             <p class="small mb-5 pb-lg-2"><a class="text-muted" href="#!">Forgot password?</a></p>
            <p>Don't have an account? <a href="#!" class="link-info">Register here</a></p> -->
			
			
			<!-- LOGIN  -->
            <div class="pt-1 mb-4">
              <button id="login_btn"class="btn btn-info btn-lg btn-block" type="button">Login</button>              
            </div>
			
			
			<!-- JOIN  -->
            <div class="d-flex align-items-center justify-content-center pb-4">              
              <button onclick="location.href ='/user/join'" type="button" class="btn btn-info btn-lg btn-block">회원 가입</button>
            </div>
            
          </form>


        </div>

      </div>
      <div class="col-sm-6 px-0 d-none d-sm-block">
        <img src="/resources/img/login.png"
          alt="Login image" class="w-100 vh-100" style="object-fit: cover; object-position: left;">
      </div>
    </div>
  </div>
</section>

<script>
var form = $("#login_form");

$("#login_btn").on("click",function(){
	form.attr("action","/user/login.do");
	form.submit();
	
	
});

$('#email,#pwd').on('keypress', function(e){
	  if(e.keyCode == '13'){
	  	$('#login_btn').click();
	  }
});




</script>


</body>
</html>