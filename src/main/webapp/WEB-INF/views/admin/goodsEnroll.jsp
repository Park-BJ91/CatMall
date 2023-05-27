<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/admin/goodsEnroll.css">
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
        
        <img src="/resources/img/banner/banner-1.jpg">

		<%@include file="../include/adminHeader.jsp" %>
		
		         <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>상품 등록</span></div>
                    	<div class="admin_content_main">
                    	
                    	<form action="/admin/goodsEnroll" method="post" id="enrollForm">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 이름</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="goods_NM">
                    				<span class="ck_warn bookName_warn">상품 이름을 입력해주세요.</span>
                    			</div>
                    		</div>
                                 
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>카테고리</label>
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
									<select class="cate1">
										<option selected value="none">선택</option>
									</select>
								</div>
                    			</div>
								<span class="ck_warn cateCode_warn">카테고리를 선택해주세요.</span>  
                    		</div>
                    		          
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 가격</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="price" value="0">
                    				<span class="ck_warn bookPrice_warn">상품 가격을 입력해주세요.</span>
                    			</div>
                    		</div>
                    		               
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 재고</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="stock" value="0">
                    				<span class="ck_warn bookStock_warn">상품 재고를 입력해주세요.</span>
                    			</div>
                    		</div>
                    		          
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 할인율</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input id="discount_interface" maxlength="2" value="0">
									<input name="discount" type="hidden" value="0">
									<span class="step_val">할인 가격 : <span class="span_discount"></span></span>
                    				<span class="ck_warn bookDiscount_warn">1~99 숫자를 입력해주세요.</span>
                    			</div>
                    		</div>
                    		          		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>소개</label>
                    			</div>
                    			<div class="form_section_content bit">
                    				<textarea name="Intro" id="Intro_textarea"></textarea>
	                    			<span class="ck_warn bookIntro_warn">상품 소개를 입력해주세요.</span>
                    			</div>
                    		</div>
                    		        		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>설명</label>
                    			</div>
                    			<div class="form_section_content bct">
                    				<textarea name="contents" id="contents_textarea"></textarea>
                    				<span class="ck_warn bookContents_warn">상품 설명을 입력해주세요.</span>
                    			</div>
                    		</div>
                    		
                    		<input type="file" >업로드
                    		
                   		</form>
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn btn-info btn-lg btn-block">취 소</button>
	                    		<button id="enrollBtn" class="btn btn-info btn-lg btn-block enroll_btn">등 록</button>
	                    	</div> 
                    </div>  
                </div>
                <div class="clearfix"></div>

  
        


        
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


	let enrollForm = $("#enrollForm");
	
/* 취소 버튼 */
$("#cancelBtn").click(function(){
	
	location.href="/admin/goodsManage"
	
});

/* 상품 등록 버튼 */
$("#enrollBtn").on("click",function(e){
	
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
	}


	if(cateNO != 'none'){
		$(".cateCode_warn").css('display','none');
		cateNoCk = true;
	} else {
		$(".cateCode_warn").css('display','block');
		cateNoCk = false;
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
		enrollForm.submit();
		
	} else {
		return false;
	}
	
});

/* 할인율 Input 설정 */
$("#discount_interface").on("propertychange change keyup paste input", function(){
	
	let userInput = $("#discount_interface");
	let discountInput = $("input[name='discount']");
	
	let discountRate = userInput.val();					// 사용자가 입력할 할인값
	let sendDiscountRate = discountRate / 100;			// 서버에 전송할 할인값
	let goodsPrice = $("input[name='price']").val();			// 원가
	/* 상품 가격 * (1 - (할인율/100)) */
	let discountPrice = goodsPrice * (1 - sendDiscountRate);	// 할인가격
	
	if(!isNaN(discountRate)){
		
		$(".span_discount").html(discountPrice);	
		discountInput.val(sendDiscountRate);	
	
	}
});
/* 상품가격 수정시 할인율 재반영 */
$("input[name='price']").on("change", function(){
	
	let userInput = $("#discount_interface");
	let discountInput = $("input[name='discount']");
	
	let discountRate = userInput.val();					// 사용자가 입력한 할인값
	let sendDiscountRate = discountRate / 100;			// 서버에 전송할 할인값
	let goodsPrice = $("input[name='price']").val();			// 원가
	let discountPrice = goodsPrice * (1 - sendDiscountRate);		// 할인가격
	
	if(!isNaN(discountRate)){
		
		$(".span_discount").html(discountPrice);
	
	}
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
			
			cateSelect1.append("<option value='"+cateList[i].cate_PR+"'>" + cateList[i].cate_NM + "</option>");	
			
		}
		
	}// for
	
});// 카테고리 끝




</script>
</body>
</html>
