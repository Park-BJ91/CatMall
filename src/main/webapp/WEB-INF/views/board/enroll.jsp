<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"
 integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous">
</script>

<script src="https://cdn.ckeditor.com/ckeditor5/36.0.1/classic/ckeditor.js"></script>


	<meta charset="UTF-8">

	<title>게시판 등록</title>
	
<style type="text/css">

.ck.ck-editor{
	max-width: 500px;
}
.ck-editor__editable {
    min-height: 400px;
}
</style>


</head>
<body>
<form method="post" id="enroll_form">
	<div class="input_wrap">
		<label>Title</label>
		<input name="title" id="t">
	</div>
	
	<div class="intput_wrap">
		<label>Content</label>
		<textarea rows="3" cols="8" name="content" id="c"></textarea>	
	</div>

	<div class="input_wrap">
		<label>Writer</label>
		<input name="writer" id="w" value='<c:out value="${user.name}"></c:out>'readonly="readonly">
	</div>
	
	<button id="btn">등록하기</button>


</form>

<script>

var tChk = false;
var cChk = false;
var wChk = false;






$(document).ready(function(){
	
	$("#btn").on("click",function(){
		
		var title = $("#t").val();
		var context = $("#c").val();
		var writer = $("#w").val();
		
		if(title ==""){
			alert("제목을 입력해 주세요.");
			tChk = false;
		}else{
			tChk = true;
		}
		
		
		if(writer ==""){
			alert("작성자를 입력해 주세요.");
			wChk = false;
		}else{
			wChk = true;
		}
		
		
		if(tChk&&wChk){ 
									
						
			$("#enroll_form").attr("action","/board/enroll");
			$("#enroll_form").submit();
			
			alert("등록 되었습니다.");
			
		}
		
		return false;
		
	}); //btn
	
});//doc

ClassicEditor
.create( document.querySelector( '#c' ) )
.catch( error => {
    console.error( error );
} );


</script>



</body>
</html>