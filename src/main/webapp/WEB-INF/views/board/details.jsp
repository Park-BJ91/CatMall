<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>

	<link rel="stylesheet" href="/resources/board/detail.css">

<script src="https://cdn.ckeditor.com/ckeditor5/36.0.1/classic/ckeditor.js"></script>	

<meta charset="UTF-8">
<title>Insert title here</title>

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

<h1>조회 페이지</h1>
	<div class="input_wrap">
		<label>게시판 번호</label>
		<input name="bno" readonly="readonly" value='<c:out value="${pageInfo.bno}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 제목</label>
		<input name="title" readonly="readonly" value='<c:out value="${pageInfo.title}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 내용</label>
		<textarea rows="3" name="content" id="c" readonly="readonly"><c:out value="${pageInfo.content}"/></textarea>
	</div>
	<div class="input_wrap">
		<label>게시판 작성자</label>
		<input name="writer" readonly="readonly" value='<c:out value="${pageInfo.writer}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 등록일</label>
		<input name="regdater" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.create_DT}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 수정일</label>
		<input name="updateDate" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.update_DT}"/>' >
	</div>
	
		<div class="btn_wrap">
			<a class="btn" id="main_btn">메인 페이지</a> 
	<c:if test="${user.name == pageInfo.writer}">
						
			<a class="btn" id="modify_btn">수정 하기</a>
	</c:if>	
		</div>	
	<form id="detailForm" action="/board/modify" method="get">
		<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno}"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"></c:out>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount}"></c:out>'>
		<input type="hidden" name="keyword" value="${cri.keyword }">
		<input type="hidden" name="type" value="${cri.type }">
	</form>

<script>

$(document).ready(function(){
	let name = '<c:out value="${user}"/>';
	
	console.log(name);
	
});
	


	let detailF = $("#detailForm");
	
	$("#main_btn").on("click",function(){
		
		detailF.find("#bno").remove();
		detailF.attr("action","/board/main");
		detailF.submit();		
		
	});
	
	$("#modify_btn").on("click", function(){
		detailF.attr("action","/board/modify");
		detailF.submit();
	});	
	
	

	ClassicEditor
	.create( document.querySelector( '#c' ))
	.then(editor => {
		editor.enableReadOnlyMode('#c');
	})
	.catch( error => {
	    console.error( error );
	} );
	
	
	
</script>	
</body>


</html>