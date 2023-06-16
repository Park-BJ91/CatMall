<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/admin/goodsDetail.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
 integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
 
 <script src="https://cdn.ckeditor.com/ckeditor5/36.0.1/classic/ckeditor.js"></script>


    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/style.css" type="text/css">

 
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
</head>
<body>
 
    <div class="wrapper">
        <div class="wrap">
        
    

		<%@include file="../include/adminHeader.jsp" %>
		
		         <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>상품 상세</span></div>
                    	<div class="admin_content_main">
                    	
                    	
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 이름</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="goods_NM" value="<c:out value="${goodsInfo.goods_NM}"/>"disabled>
                    			</div>
                    		</div>
                    		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>등록 날짜</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input value="<fmt:formatDate value='${goodsInfo.create_DT}' pattern='yyyy-MM-dd'/>" disabled>
                    			</div>
                    		</div>
                                 
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>카테고리</label>
                    			</div>
                    			<div class="form_section_content">                    			
	                    			<div class="cate_wrap">
										<span>대분류</span>
											<select class="cate0" disabled>
												<option selected value='<c:out value="${goodsInfo.cate_PR}"></c:out>'>${goodsInfo.cate_PRNM}</option>
											</select>
									</div>
									
									<div class="cate_wrap">
										<span>중분류</span>
											<select class="cate1" name="cate_NO" disabled="disabled">
												<option selected value='<c:out value="${goodsInfo.cate_NO}"></c:out>'>${goodsInfo.cate_NM}</option>
											</select>
									</div>
                    			</div>
                    		</div>
                    		          
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 가격</label>
                    			</div>
                    			
                    			<div class="form_section_content">
                    				<input name="price" value="<c:out value="${goodsInfo.price}"/>" disabled>
                    			</div>
                    		</div>
                    		               
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 재고</label>
                    			</div>
                    			
                    			<div class="form_section_content">
									<input name="stock" value="<c:out value="${goodsInfo.stock}"/>" disabled>
                    			</div>
                    		</div>
                    		          
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 할인율</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input id="discount_interface" maxlength="2" value="<c:out value="${goodsInfo.discount}"/>" disabled>
                    			</div>
                    		</div>
                    		          		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>소개</label>
                    			</div>
                    			<div class="form_section_content bit">
                    				<textarea name="intro" id="intro_textarea" disabled>${goodsInfo.intro}</textarea>
                    			</div>
                    		</div>
                    		        		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>설명</label>
                    			</div>
                    			<div class="form_section_content bct">
                    				<textarea name="contents" id="contents_textarea" disabled>${goodsInfo.contents}</textarea>
                    			</div>
                    		</div>
                    		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 이미지</label>
                    					<c:if test="${goodsInfo.img_PATH != null}">
                    						<img src="/resources/admin/img/${goodsInfo.img_PATH}/${goodsInfo.img_NM}">
                    					</c:if>
                    					<c:if test="${goodsInfo.img_PATH == null}">
                    						<img src="/resources/admin/img/NoImg.png">	                    					
                    					</c:if>                    					
                    			</div>                  			
                    		</div>
        
                    		
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn">상품 목록</button>
	                    		<button id="modifyBtn" class="btn enroll_btn">수정 </button>
	                    	</div> 
                    </div>
                    
                    <form id="moveForm" action="/admin/goodsManage" method="get" >
 						<input type="hidden" name="pageNum" value="${cri.pageNum}">
						<input type="hidden" name="amount" value="${cri.amount}">
						<input type="hidden" name="keyword" value="${cri.keyword}">
                	</form>
                      
                </div>
             
	
  
        


        
    </div>    <!-- class="wrap" -->
</div>    <!-- class="wrapper" -->


        <!-- Js Plugins -->
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>

    <script src="/resources/js/jquery-ui.min.js"></script>
    <script src="/resources/js/jquery.slicknav.js"></script>
    <script src="/resources/js/mixitup.min.js"></script>
    <script src="/resources/js/owl.carousel.min.js"></script>

    
    
<script>


$(document).ready(function(){
	
	/* 할인율 값 삽입 */
	let discount = '<c:out value="${goodsInfo.discount}"/>' * 100;
	$("#discount_interface").attr("value", discount);
	

	
});


ClassicEditor
.create( document.querySelector( '#intro_textarea' ))
.then(editor => {
	editor.enableReadOnlyMode('#intro_textarea');
})
.catch( error => {
    console.error( error );
} );

ClassicEditor
.create( document.querySelector( '#contents_textarea' ))
.then(editor => {
	editor.enableReadOnlyMode('#contents_textarea');
})
.catch( error => {
    console.error( error );
} );









/* 카테고리 */ 
//JSON 데이터를 Javascript트로 객체로 변환
let cateList = JSON.parse('${cateList}');

let cateSelect0 = $(".cate0"); 	//대분류
let cateSelect1 = $(".cate1");	//중분류	
		
/*
$(document).ready(function(){

	console.log(cateList);
});
		
*/
		cateSelect0.append("<option value='"+cateList.cate_NO+"'>" + cateList.cate_NM + "</option>");
		
	


/* 중분류 <option> 태그 */
$(cateSelect0).on("change",function(){
	
	let selectVal1 = $(this).find("option:selected").val();	
	
	cateSelect1.children().remove();
	
	cateSelect1.append("<option value='none'>선택</option>");
	
				
		
	for(let i = 0; i < cateList.length; i++){
		if(selectVal1 == cateList[i].cate_PR){
			
			cateSelect1.append("<option value='"+cateList[i].cate_PR+"'>" + cateList[i].cate_NM + "</option>");	
			
		}
		
	}// for
	
});// 카테고리 끝

/* 목록 이동 버튼 */
$("#cancelBtn").on("click", function(e){
	e.preventDefault();
	$("#moveForm").submit();	
});	

/* 수정 페이지 이동 */
$("#modifyBtn").on("click", function(e){
	e.preventDefault();
	let addInput = '<input type="hidden" name="goods_NO" value="${goodsInfo.goods_NO}">';
	$("#moveForm").append(addInput);
	$("#moveForm").attr("action", "/admin/goodsModify");
	$("#moveForm").submit();
});	

$("#logout_btn").on("click",function(){		
	$.ajax({
		type : "get",
		url : "/user/logout",
		cache : false,
		success : function(date){
			alert("로그아웃");
			window.location.reload(true);
		}
		
		
		
	});//ajax
	
});




</script>
</body>
</html>
