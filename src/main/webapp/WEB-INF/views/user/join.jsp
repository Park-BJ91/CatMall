<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
		<link rel="shortcut icon" href="/resources/fav/favicon.ico">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

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
	
	.inner {
    padding: 25px 120px;
    background: #fff;
    height: 800px;
    
    }
    .zic-w{
    	width: 30%;
    }
    
    .addr1-w{
	    height: 30px;
	    border: none;
	    border-bottom: 1px solid #333;
	    width: 150%;
	    background: none;
	    font-weight: 600;
    }
    .addr2-w{
    	    height: 30px;
    border: none;
    border-bottom: 1px solid #333;
    background: none;
    font-weight: 600; 
    	width: 150%;
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
                    	
                    	<!-- 이름 --> 
                    	<div class="form-row form-group">
                    		<div class="form-holder">
                    			<input type="text" id="name" name="name" class="form-control" placeholder="Name">
                    		</div>
                    		
                    		
                    	</div>
                    	
                    	<!-- 비밀번호 -->
                    	<div class="form-row">
                    		<div class="form-holder"> 
                    			<input type="password" id="pwd" name="pwd" class="form-control" placeholder="Password">
                    			<i class="zmdi zmdi-lock-open small"></i>
                    		</div>
                    	</div>
                    	
                    	<!-- 이메일 -->
                    	<div class="form-row">
                    		<div class="form-holder">
                    			<input type="text" id="email" name="email" class="form-control email_input" placeholder="Email">                    			                			
                    			    <span class="email_input_re_1">사용 가능한 메일 입니다.</span>
									<span class="email_input_re_2">메일이 이미 존재합니다.</span>
                    			<i class="zmdi zmdi-email small"></i>                  					   			
                    		</div>
                    	</div>
                    	
                    	
                    	<div class="form-row">
                    		<input id="auth_input" type="text" disabled required style="width:100px;">
                    		<span id="auth_btn" class="btn btn-secondary btn-sm">인증번호 발송</span>              	
                    	</div>
                    	
                    	<div class="form-row">
                    		<span id="auth_check" class="btn btn-secondary btn-sm">인증번호 확인</span> 
                    	</div>
                    	
                    	
                    	<!-- 주소 -->
                    	<div class="form-row">
                    		<div class="form-holder zic-w">
                    			<input name="zic" class="form-control zic" placeholder="우편번호" readonly="readonly">                    			                                
                    		</div>
                    		<div>
                    			<span id="zic" class="btn btn-secondary btn-sm" onclick="findAddr()">주소 찾기</span> 
                    		</div>
                    			
                    	</div>
                    	
                    	<div class="form-row">
                    		<div class="form-holder">
                    			<input id="addr1" name="addr1" class="form-control addr1-w" readonly="readonly">
                    		</div>
                    	</div>
                    	
                    	<div class="form-row">
                    		<div class="form-holder">
                    			<input id="addr2" name="addr2" class="form-control addr2-w" placeholder="상세 주소를 입력해 주세요">
                    		</div>
                    	</div>
                    	
	                <div>
	                	<button type="button" id="join_btn" class="btn btn-secondary btn-lg" onclick="return join()">가입하기</button>
	                </div>                
                    	
                    </div>
                </section>
            </form>	
		</div>

<script>
var code ='';

function join(){

	if($("#name").val() == ""){
		alert("이름을 입력해주세요.");
		$("#name").focus();
		return false;
	} 
	if($("#pwd").val() == ""){
		alert("비밀번호를 입력해주세요.");
		$("#pwd").focus();
		return false;
	} 
	if($("#email").val() == ""){
		alert("이메일을 입력해주세요.");
		$("#email").focus();
		return false;
	}
	if($("#addr1").val() == ""){
		alert("주소를 입력해주세요.");
		$("#zic").focus();
		return false;
	}
	if($("#auth_input").val() != code){
		alert("인증번호를 확인해주세요.")
		return false;
	}

	
	
	$("#join_form").attr("action","/user/join");
	$("#join_form").attr("method","post");
	$("#join_form").submit();
	
}
	



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

$("#auth_btn").on("click",function(){
	

	
	var email = $(".email_input").val();
	
	$.ajax({
		type : "GET",
		url : "authCheck?email=" + email,
		cache : false,
		success : function(data){
			if(data == "error"){
				alert("이메일 주소를 확인해주세요.");
				
			}else{
				alert("인증번호가 발송 되었습니다.");
				$('#auth_input').attr("disabled",false);
				
				code = data;
			}
		} 
		
		
	}); //ajax
});

$('#auth_check').on("click",function(){
	
	var inputCode = $("#auth_input").val();

	
	if(inputCode == code){
		alert("인증 되었습니다.");
	}else{
		alert("인증번호를 다시 확인해 주세요.");
	}
	
	
	
});


function findAddr() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                addr += extraAddr;
            
            } else {
                addr +='';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            $(".zic").val(data.zonecode);
            $(".addr1-w").val(addr);
            // 커서를 상세주소 필드로 이동한다.
          $(".addr2-w").focus();
        }
    }).open();
}








</script>		
		                    

</body>
</html>