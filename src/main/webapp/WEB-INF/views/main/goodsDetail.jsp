<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>

<head>

	<link rel="stylesheet" href="/resources/goods/goodsDetail.css">
	

	<link rel="shortcut icon" href="/resources/fav/favicon.ico">

    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cat Mall</title>
    
    

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/style.css" type="text/css">
    
  <script
  src="https://code.jquery.com/jquery-3.6.4.js"
  integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
  crossorigin="anonymous"></script>
    
    
</head>

<body>

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

	<%@include file="../include/header.jsp"%>		


    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="navi_bar_area">

					
						<div class="dropdown">
						    <button class="dropbtn">사료 
						      <i class="fa fa-caret-down"></i>
						    </button>
						    <div class="dropdown-content">
						    	<a href="/main/search?type=C&cate_NO=6">다이어트 사료</a>
						    	<a href="/main/search?type=C&cate_NO=7">인도어 사료</a>
						    	<a href="/main/search?type=C&cate_NO=8">알러지 사료</a>
						    	<a href="/main/search?type=C&cate_NO=9">헤어볼 사료</a>      		      		      
						    </div>			
						</div>
						<div class="dropdown">
						    <button class="dropbtn">습식 
						      <i class="fa fa-caret-down"></i>
						    </button>
						    <div class="dropdown-content">
						    	<a href="/main/search?type=C&cate_NO=10">참치맛</a>
						    	<a href="/main/search?type=C&cate_NO=11">연어맛</a>
						    	<a href="/main/search?type=C&cate_NO=12">고등어맛</a>
						    	<a href="/main/search?type=C&cate_NO=13">새우맛</a>     		      		      
						    </div>			
						</div>
						<div class="dropdown">
						    <button class="dropbtn">장난감 
						      <i class="fa fa-caret-down"></i>
						    </button>
						    <div class="dropdown-content">
						    	<a href="/main/search?type=C&cate_NO=14">꼬챙이</a>
						    	<a href="/main/search?type=C&cate_NO=15">낚시대</a>
						    	<a href="/main/search?type=C&cate_NO=16">캣닢인형</a>
						    	<a href="/main/search?type=C&cate_NO=17">터널</a>	      		      		      
						    </div>			
						</div>
						<div class="dropdown">
						    <button class="dropbtn">화장실 
						      <i class="fa fa-caret-down"></i>
						    </button>
						    <div class="dropdown-content">
						    	<a href="/main/search?type=C&cate_NO=18">자동 화장실</a>
						    	<a href="/main/search?type=C&cate_NO=19">후드형 화장실</a>
						    	<a href="/main/search?type=C&cate_NO=20">평판형 화장실</a>      		      		      
						    </div>			
						</div>
						<div class="dropdown">
						    <button class="dropbtn">목욕 
						      <i class="fa fa-caret-down"></i>
						    </button>
						    <div class="dropdown-content">
						    	<a href="/main/search?type=C&cate_NO=21">샴푸</a>
						    	<a href="/main/search?type=C&cate_NO=22">린스</a>
						    	<a href="/main/search?type=C&cate_NO=23">물티슈</a>
						    	<a href="/main/search?type=C&cate_NO=24">빗</a> 		      		      
						    </div>			
						</div>
						
                    </div>
                </div>
                <div class="col-lg-9">

                    
                    
					<div class="content_area">
						<div class="line">
						</div>			
						<div class="content_top">
							<div class="ct_left_area">
								<c:if test="${goodsInfo.img_PATH != null}">
					            	<img src="/resources/admin/img/${goodsInfo.img_PATH}/${goodsInfo.img_NM}">
					            </c:if>
					            
					            <c:if test="${goodsInfo.img_PATH == null}">
					           		<img src="/resources/admin/img/NoImg.png">	                    					
					           	</c:if> 			
							</div>
							<div class="ct_right_area">
								<div class="title">
									<h1 class="title2">
										${goodsInfo.goods_NM}
									</h1>
								</div>

								<div class="line">
								</div>	
								<div class="price">
									<div class="sale_price">정가 : <fmt:formatNumber value="${goodsInfo.price}" pattern="#,### 원" /></div>
									<div class="discount_price">
										판매가 : <span class="discount_price_number"><fmt:formatNumber value="${goodsInfo.price - (goodsInfo.price*goodsInfo.discount)}" pattern="#,### 원" /></span> 
										[<fmt:formatNumber value="${goodsInfo.discount*100}" pattern="###" />% 
										<fmt:formatNumber value="${goodsInfo.price*goodsInfo.discount}" pattern="#,### 원" /> 할인]</div>							
								</div>
		
								<div class="line">
								</div>	
								<div class="button">						
									<div class="button_quantity">
										주문수량
										<input type="text" class="quantity_input" value="1">
										<span>
											<button class="plus_btn">+</button>
											<button class="minus_btn">-</button>
										</span>
									</div>
									<div class="button_set">
										<a class="btn_cart">장바구니 담기</a>
										<a class="btn_buy">바로구매</a>
									</div>
								</div>
							</div>
						</div>
						<div class="line">
						</div>				
						<div class="content_middle">
							<div class="book_intro">
								${goodsInfo.intro}
							</div>
							<div class="book_content">
								${goodsInfo.contents }
							</div>
						</div>
						<div class="line">
						</div>				
						<div class="content_bottom">
							<div class="reply_subject">
								<h2>리뷰</h2>
							</div>
							
							<c:if test="${user.user_NO != null }">
								<div class="reply_button_wrap">
									<button>리뷰쓰기</button>
								</div>
							</c:if> 
							
											<div class="reply_not_div">
								
							</div>
							<ul class="reply_content_ul">
							
			
							</ul>
							<div class="repy_pageInfo_div">
								<ul class="pageMaker">
							
								</ul>
							</div>	
						</div>
								<!-- 주문 form -->
 						<form action="/order/order/${user.user_NO}" method="get" class="order_form">
							<input type="hidden" name="orders[0].goods_NO" value="${goodsInfo.goods_NO}">
							<input type="hidden" name="orders[0].amount" value="">
						</form>	 
			
					</div>
				
                </div><!-- col 9 -->
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

 

    <section class="featured spad">
        <div class="container">	
	</div>
	</section>






	<%@include file="../include/footer.jsp" %>

    <!-- Js Plugins -->
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/jquery-ui.min.js"></script>
    <script src="/resources/js/jquery.slicknav.js"></script>
    <script src="/resources/js/mixitup.min.js"></script>
    <script src="/resources/js/owl.carousel.min.js"></script>
    <script src="/resources/js/main.js"></script>
    
<script>
$(document).ready(function(){
	// 검색 타입 selected
	const selectedType = '<c:out value="${pageMarker.cri.type}"/>';
	if(selectedType != ""){
		$("select[name='type']").val(selectedType).attr("selected", "selected");	
	}
	
	console.log('${user.user_NO}');
	
	
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


/* 페이지 이동 버튼 */
const moveForm = $('#moveForm');

$(".pageMarker_btn a").on("click", function(e){
	
	e.preventDefault();
	
	moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	
	moveForm.submit();
	
});

// 수량 버튼 조작
let quantity = $(".quantity_input").val();
$(".plus_btn").on("click", function(){
	if(quantity < 100){
		$(".quantity_input").val(++quantity);	
	}
});
$(".minus_btn").on("click", function(){
	if(quantity > 1){
		$(".quantity_input").val(--quantity);	
	}
});

/* 바로구매 버튼 */
$(".btn_buy").on("click", function(){
	let amount = $(".quantity_input").val();
	$(".order_form").find("input[name='orders[0].amount']").val(amount);
	$(".order_form").submit();
});




//서버로 전송할 데이터
const form = {
		
		user_NO : '${user.user_NO}',
		goods_NO : '${goodsInfo.goods_NO}',
		amount : ''
		
}

$(".btn_cart").on("click", function(e){
	e.preventDefault();

form.amount = $(".quantity_input").val();
$.ajax({
	url: '/cart/add',
	type: 'POST',
	data: form,
	success: function(result){
			cartAlert(result);
		
		}
		
	})

});

function cartAlert(result){
	if(result == 0){
		alert("장바구니에 추가를 하지 못하였습니다.");
	} else if(result == 1){
		alert("장바구니에 추가되었습니다.");
	} else if(result == 2){
		alert("장바구니에 이미 추가되어져 있습니다.");
	} else if(result == 5){
		alert("로그인이 필요합니다.");	
	}
}




</script>    

</body>

</html>