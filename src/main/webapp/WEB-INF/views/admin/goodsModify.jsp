<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/admin/goodsModify.css">

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
                    <div class="admin_content_subject"><span>상품 수정</span></div>
                    	<div class="admin_content_main">
                    	
                    	<form action="/admin/goodsModify" method="post" id="modifyForm">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 이름</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input class="goodsNM" name="goods_NM" value="${goodsInfo.goods_NM}">
                    				<span class="ck_warn bookName_warn">상품 이름을 입력해주세요.</span>
                    			</div>
                    		</div>           
                  
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>책 카테고리</label>
                    			</div>
                    			<div class="form_section_content">
                    				<div class="cate_wrap">
                    					<span>대분류</span>
                    					<select class="cate0">
                    						<option selected value="none">선택</option>
                    					</select>
                    				</div>
                    				
                    				<div class="cate_wrap">
                    					<span>중분류</span>
                    					<select class="cate1" name="cate_NO">
                    						<option selected value="none">선택</option>
                    					</select>
                    				</div>
                    				
                    				<span class="ck_warn cateCode_warn">카테고리를 선택해주세요.</span>                  				                    				
                    			</div>
                    		</div>          
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 가격</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="price" value="${goodsInfo.price}">
                    				<span class="ck_warn bookPrice_warn">상품 가격을 입력해주세요.</span>
                    			</div>
                    		</div>               
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 재고</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="stock" value="${goodsInfo.stock}">
                    				<span class="ck_warn bookStock_warn">상품 재고를 입력해주세요.</span>
                    			</div>
                    		</div>          
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 할인율</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input id="discount_interface" maxlength="2" value="0">
                    				<input name="discount" type="hidden" value="${goodsInfo.discount}">
                    				<span class="step_val">할인 가격 : <span class="span_discount"></span></span>
                    				<span class="ck_warn bookDiscount_warn">1~99 숫자를 입력해주세요.</span>
                    			</div>
                    		</div>          		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>소개</label>
                    			</div>
                    			<div class="form_section_content bit">
                    				<textarea name="intro" id="Intro_textarea">${goodsInfo.intro}</textarea>
                    				<span class="ck_warn bookIntro_warn">상품 소개를 입력해주세요.</span>
                    			</div>
                    		</div>        		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>설명</label>
                    			</div>
                    			<div class="form_section_content bct">
                    				<textarea name="contents" id="contents_textarea">${goodsInfo.contents}</textarea>
                    				<span class="ck_warn bookContents_warn">상품 설명 입력해주세요.</span>
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
                    			
                    			<div class="form_section_content">
									<input type="file" id ="fileItem" name='img_NM' style="height: 45px;">
									<div id="uploadResult">
										
									</div>
                    			</div>
                    		</div>
                    		
                    		<input type="hidden" name='goods_NO' value="${goodsInfo.goods_NO}">
                   		</form>
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn">취 소</button>
	                    		<button id="modifyBtn" class="btn modify_btn">수 정</button>
	                    		<button id="deleteBtn" class="btn delete_btn">삭 제</button>
	                    	</div> 
                    </div>  
                	<form id="moveForm" action="/admin/goodsManage" method="get" >
 						<input type="hidden" name="pageNum" value="${cri.pageNum}">
						<input type="hidden" name="amount" value="${cri.amount}">
						<input type="hidden" name="keyword" value="${cri.keyword}">
						<input type="hidden" name='goods_NO' value="${goodsInfo.goods_NO}">
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
	
	/* 수정 버튼 */
	$("#modifyBtn").on("click", function(e){
			
			e.preventDefault();
			
			/* 유효성 검사 */

			/* 체크 변수 */
			let goodsNmCk = false;
			let cateNoCk = false;
			let priceCk = false;
			let stockCk = false;
			let discountCk = false;
			let introCk = false;
			let contentsCk = false;

			/* 체크 대상 변수 */
			let goodsNM = $("input[name='goods_NM']").val();
			let cateNO = $("select[name='cate_NO']").val();
			let price = $("input[name='price']").val();
			let stock = $("input[name='stock']").val();
			let discount = $("input[name='discount']").val();
			let intro = $(".bit p").html();
			let contents = $(".bct p").html();


			if(goodsNM){
				$(".bookName_warn").css('display','none');
				goodsNmCk = true;
			} else {
				$(".bookName_warn").css('display','block');
				goodsNmCk = false;
				$(".goodsNM").focus();
			}


			if(cateNO != 'none'){
				$(".cateCode_warn").css('display','none');
				cateNoCk = true;
			} else {
				$(".cateCode_warn").css('display','block');
				cateNoCk = false;
				$(".cate0").focus();
			}	

			if(price != 0){
				$(".bookPrice_warn").css('display','none');
				priceCk = true;
			} else {
				$(".bookPrice_warn").css('display','block');
				priceCk = false;
			}	

			if(stock != 0){
				$(".bookStock_warn").css('display','none');
				stockCk = true;
			} else {
				$(".bookStock_warn").css('display','block');
				stockCk = false;
			}		

			if(!isNaN(discount)){
				$(".bookDiscount_warn").css('display','none');
				discountCk = true;
			} else {
				$(".bookDiscount_warn").css('display','block');
				discountCk = false;
			}	

			if(intro != '<br data-cke-filler="true">'){
				$(".bookIntro_warn").css('display','none');
				introCk = true;
			} else {
				$(".bookIntro_warn").css('display','block');
				introCk = false;
			}	

			if(contents != '<br data-cke-filler="true">'){
				$(".bookContents_warn").css('display','none');
				contentsCk = true;
			} else {
				$(".bookContents_warn").css('display','block');
				contentsCk = false;
			}

			if(goodsNmCk && cateNoCk && priceCk && stockCk && discountCk && introCk && contentsCk ){
				//alert('통과');
						
				$("#modifyForm").submit();
				
				
				
			} else {
				return false;
			}
			
		});
	
	
	
});


ClassicEditor
.create(document.querySelector('#Intro_textarea'))
.catch(error=>{
	console.error(error);
});


ClassicEditor
.create(document.querySelector('#contents_textarea'))
.catch(error=>{
console.error(error);
});

/* 취소 버튼 */
$("#cancelBtn").on("click", function(e){
	e.preventDefault();
	$("#moveForm").submit();
});

/* 삭제 버튼 */
$("#deleteBtn").on("click", function(e){
	e.preventDefault();
	let moveForm = $("#moveForm");
	moveForm.find("input").remove();
	moveForm.append('<input type="hidden" name="goods_NO" value="${goodsInfo.goods_NO}">');
	moveForm.attr("action", "/admin/goodsDelete");
	moveForm.attr("method", "post");
	moveForm.submit();
});








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
		

for(let i = 0; i < cateList.length; i++){
	if(cateList[i].cate_PR == 0){
		
		cateSelect0.append("<option value='"+cateList[i].cate_NO+"'>" + cateList[i].cate_NM + "</option>");
		
	}
}

/* 중분류 <option> 태그 */
$(cateSelect0).on("change",function(){
	
	let selectVal1 = $(this).find("option:selected").val();	
	
	cateSelect1.children().remove();
		
	cateSelect1.append("<option value='none'>선택</option>");
	
				
		
	for(let i = 0; i < cateList.length; i++){
		if(selectVal1 == cateList[i].cate_PR){
			
			cateSelect1.append("<option value='"+cateList[i].cate_NO+"'>" + cateList[i].cate_NM + "</option>");	
			
		}
		
	}// for
	
});// 카테고리 끝

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

/* 이미지 업로드 */
$("input[type='file']").on("change", function(e){
	
	/* 이미지 존재시 삭제 */
	if($(".imgDeleteBtn").length > 0){
		deleteFile();
	}
	
	let formData = new FormData();
	let fileInput = $('input[name="img_NM"]');
	let fileList = fileInput[0].files;
	let fileObj = fileList[0];
	
/* 	if(!fileCheck(fileObj.name, fileObj.size)){
		return false;
	} */
	
	for(let i=0; i<fileList.length; i++){
		
		formData.append("uploadFile",fileObj);
		
		$.ajax({
			url : '/admin/uploadAjax',
			processData : false,	//processData : 서버로 전송할 데이터를 queryStirng 형태로 변환할지 여부
			contentType : false,
			data : formData,		//서버로 전송할 데이터
			type : 'post',
			dataType : 'json',		//서버로부터 반환받을 데이터 타입
			success : function(result){
				showUploadImage(result);
				
			},
			error : function(result){
				alert("이미지 파일이 아닙니다.");
				
			}
			
		});
		
	}
	
});

/* 이미지 출력 */
function showUploadImage(uploadResultArr){
	
	/* 전달받은 데이터 검증 */
	if(!uploadResultArr || uploadResultArr.length == 0){return}
	
	let uploadResult = $("#uploadResult");
	
	let obj = uploadResultArr[0];
	
	let str = "";
	
	
	
	let fileCallPath = encodeURIComponent(obj.img_PATH.replace(/\\/g, '/') + "/s_" + obj.img_NM);
	
	str += "<div id='result_card'>";
	str += "<img src='/admin/display?img_NM=" + fileCallPath +"'>";
	str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
	str += "<input type='hidden' name='img_PATH' value='"+obj.img_PATH+"'>";
	str += "<input type='hidden' name='uuid' value='"+obj.uuid+"'>";
	str += "</div>";		
	
	uploadResult.append(str);     
    
}



/* 이미지 삭제 버튼 동작 */
$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
	
	deleteFile();
	
});

/* 파일 삭제 메서드 */
function deleteFile(){
	
	let targetFile = $(".imgDeleteBtn").data("file");
	
	let targetDiv = $("#result_card");
	
	$.ajax({
		url: '/admin/deleteFile',
		data : {img_NM : targetFile},
		dataType : 'text',
		type : 'POST',
		success : function(result){
			console.log(result);
			
			targetDiv.remove();
			$("input[type='file']").val("");
			
		},
		error : function(result){
			console.log(result);
			alert("파일을 삭제하지 못하였습니다.")
		}
   });
	
}












</script>
</body>
</html>
