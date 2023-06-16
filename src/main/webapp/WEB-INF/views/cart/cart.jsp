<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>

<head>

	<link rel="stylesheet" href="/resources/goods/search.css">
	<link rel="stylesheet" href="/resources/main/index.css">
	<link rel="stylesheet" href="/resources/cart/page.css">

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
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form id="searchForm" action="/main/search" method="get">
                                <div class="hero__search__categories">
	                                <select name="type" style="width: 140px;font-size: 15px; border : none">
	                					<option value="T">상품 이름</option>
	                					<option value="C">상품 종류</option>
	                				</select>
                                </div>
                                <input type="text" name="keyword" placeholder="검색어를 입력해주세요" value='<c:out value="${pageMarker.cri.keyword}"></c:out>'>
                                <button class="site-btn search_btn">SEARCH</button>
                            </form>
                        </div>
                    </div>
							<div class="content_area">
											<div class="content_subject"><span>장바구니</span></div>
			<!-- 장바구니 리스트 -->
			<div class="content_middle_section"></div>
			<!-- 장바구니 가격 합계 -->
			<!-- cartInfo -->
			<div class="content_totalCount_section">

			
					<!-- 체크박스 전체 여부 -->
				<div class="all_check_input_div">
					<input type="checkbox" class="all_check_input input_size_20" checked="checked"><span class="all_chcek_span">전체선택</span>
				</div>
				
				<table class="subject_table">
					<caption>표 제목 부분</caption>
					<tbody>

						<tr>
							<th class="td_width_1"></th>
							<th class="td_width_2"></th>
							<th class="td_width_3">상품명</th>
							<th class="td_width_4">가격</th>
							<th class="td_width_4">수량</th>
							<th class="td_width_4">합계</th>
							<th class="td_width_4">삭제</th>
						</tr>
					</tbody>
				</table>
				<table class="cart_table">
					<caption>표 내용 부분</caption>
					<tbody>
						<c:forEach items="${cartInfo}" var="ci">
							<tr>
								<td class="td_width_1 cart_info_td">
									<input type="checkbox" class="individual_cart_checkbox input_size_20" checked="checked">
									<input type="hidden" class="individual_bookPrice_input" value="${ci.price}">
									<input type="hidden" class="individual_bookCount_input" value="${ci.amount}">
									<input type="hidden" class="individual_totalPrice_input" value="${ci.price * ci.amount - (ci.price* (ci.discount * ci.amount))}">
									<input type="hidden" class="individual_bookId_input" value="${ci.goods_NO}">							
								</td>								
								<td class="td_width_2">
									<c:if test="${ci.img_PATH != null}">
                    					<img src="/resources/admin/img/${ci.img_PATH}/${ci.img_NM}">
                    				</c:if>
                    				<c:if test="${ci.img_PATH == null}">
                    					<img src="/resources/admin/img/NoImg.png">	                    					
                    				</c:if> 
								</td>
								<td class="td_width_3">${ci.goods_NM}</td>
								<td class="td_width_4 price_td">
									<del>정가 : <fmt:formatNumber value="${ci.price}" pattern="#,### 원" /></del><br>
									<div class="discount_price">
										판매가 : <span class="discount_price_number" style="color: red;">
										<fmt:formatNumber value="${ci.price - (ci.price*ci.discount)}" pattern="#,### 원" /></span> 
										[<fmt:formatNumber value="${ci.discount*100}" pattern="###" />% 
										<fmt:formatNumber value="${ci.price*ci.discount}" pattern="#,### 원" /> 할인]</div>		
								</td>
								<td class="td_width_4 table_text_align_center">
									<div class="table_text_align_center quantity_div">
										<input type="text" value="${ci.amount}" class="quantity_input">	
										<button class="quantity_btn plus_btn">+</button>
										<button class="quantity_btn minus_btn">-</button>
									</div>
									<a class="quantity_modify_btn" data-goods_NO="${ci.goods_NO}">변경</a>
								</td>
								<td class="td_width_4 table_text_align_center">
									<fmt:formatNumber value="${ci.price * ci.amount - (ci.price * (ci.discount *ci.amount))}" pattern="#,### 원" />
								</td>
								<td class="td_width_4 table_text_align_center">
								<button class="delete_btn" data-goods_NO="${ci.goods_NO}">삭제</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<table class="list_table">
				</table>
			</div>
			<!-- 가격 종합 -->
			<div class="content_total_section">
				<div class="total_wrap">
					<table>
						<tr>
							<td>
								<table>
									<tr>
										<td>총 상품 가격</td>
										<td>
											<span class="totalPrice_span"></span> 원
										</td>
									</tr>
									<tr>
										<td>배송비</td>
										<td>
											<span class="delivery_price"></span>원
										</td>
									</tr>									
									<tr>
										<td>총 주문 상품수</td>
										<td><span class="totalKind_span"></span>종류 &nbsp&nbsp<span class="totalCount_span"></span>개</td>
									</tr>
								</table>
							</td>
							<td>
								<table>
									<tr>
										<td></td>
										<td></td>
									</tr>
								</table>							
							</td>
						</tr>
					</table>
					<div class="boundary_div">구분선</div>
					<table>
						<tr>
							<td>
								<table>
									<tbody>
										<tr>
											<td>
												<strong>총 결제 예상 금액</strong>
												<span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>												
												<span class="finalTotalPrice_span"></span> 원
											</td>
										</tr>
									</tbody>
								</table>
							</td>

						</tr>
					</table>
				</div>
			</div>
			<!-- 구매 버튼 영역 -->
			<div class="content_btn_section">
				<a class="order_btn">주문하기</a>
			</div>
			
						<!-- 수량 조정 form -->
			<form action="/cart/update" method="post" class="quantity_update_form">
				<input type="hidden" name="amount" class="update_bookCount">
				<input type="hidden" name="user_NO" value="${user.user_NO}">
				<input type="hidden" name="goods_NO" class="update_goods_NO">
			</form>
			
						<!-- 삭제 form -->
			<form action="/cart/delete" method="post" class="quantity_delete_form">
				<input type="hidden" name="goods_NO" class="delete_goods_NO">
				<input type="hidden" name="user_NO" value="${user.user_NO}">
			</form>
			
						<!-- 주문 form -->
			<form action="/order/order/${user.user_NO}" method="get" class="order_form">

			</form>
							

											
		</div><!-- content_area -->
				
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
/* 	// 검색 타입 selected
	const selectedType = '<c:out value="${pageMarker.cri.type}"/>';
	if(selectedType != ""){
		$("select[name='type']").val(selectedType).attr("selected", "selected");	
	} */
	 setTotalInfo();
	
	
	
});	

/* 체크여부에따른 종합 정보 변화 */
$(".individual_cart_checkbox").on("change", function(){
	/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
	setTotalInfo($(".cart_info_td"));
});

/* 체크박스 전체 선택 */
$(".all_check_input").on("click", function(){

	/* 체크박스 체크/해제 */
	if($(".all_check_input").prop("checked")){
		$(".individual_cart_checkbox").attr("checked", true);
	} else{
		$(".individual_cart_checkbox").attr("checked", false);
	}
	
	/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
	setTotalInfo($(".cart_info_td"));	
	
});

	
	function setTotalInfo(){
	
	/* 종합 정보 섹션 정보 삽입 */
	let totalPrice = 0;				// 총 가격
	let totalCount = 0;				// 총 갯수
	let totalKind = 0;				// 총 종류
	let deliveryPrice = 0;			// 배송비
	let finalTotalPrice = 0; 		// 최종 가격(총 가격 + 배송비)	
	
	$(".cart_info_td").each(function(index, element){
		
/* 		 접근한 <td> 객체에 있는 'individual_totalPrice_input' <input> 태그에 값을 totalPrice 변수의 값에 더해줍니다.
		 모든 상품 <td> 객체를 순회하게 되면 totalPrice는 모든 상품의 가격이 더해져서 '총 상품 가격'이 구해지게 됩니다.
		 ※parseInt() 메서드를 사용한 이유는 <input> 태그의 값을 얻어오면 그 값은 'string' 타입으로 인식이 되어서 이를 int 타입으로 변경해주기 위함입니다. */
		
		 
		if($(element).find(".individual_cart_checkbox").is(":checked") === true){
			// 총 가격
			totalPrice += parseInt($(element).find(".individual_totalPrice_input").val());
			// 총 갯수
			totalCount += parseInt($(element).find(".individual_bookCount_input").val());
			// 총 종류
			totalKind += 1;
		}
	
		
	
		
		/* 배송비 결정 */
		if(totalPrice >= 30000){
			deliveryPrice = 0;
		} else if(totalPrice == 0){
			deliveryPrice = 0;
		} else {
			deliveryPrice = 3000;	
		}	
		
		/* 최종 가격 */
		finalTotalPrice = totalPrice + deliveryPrice;
		
		/* 값 삽입 */
		// 총 가격
		$(".totalPrice_span").text(totalPrice.toLocaleString());
		// 총 갯수
		$(".totalCount_span").text(totalCount);
		// 총 종류
		$(".totalKind_span").text(totalKind);
		// 배송비
		$(".delivery_price").text(deliveryPrice);	
		// 최종 가격(총 가격 + 배송비)
		$(".finalTotalPrice_span").text(finalTotalPrice.toLocaleString());
		
	});
	
	
	}
		
/* 수량버튼 */
$(".plus_btn").on("click", function(){
	let quantity = $(this).parent("div").find("input").val();
	$(this).parent("div").find("input").val(++quantity);
});

$(".minus_btn").on("click", function(){
	let quantity = $(this).parent("div").find("input").val();
	if(quantity > 1){
		$(this).parent("div").find("input").val(--quantity);		
	}
});

/* 수량 수정 버튼 */
$(".quantity_modify_btn").on("click", function(){
	
	let goods_NO = $(this).data("goods_no");
 	let amount = $(this).parent("td").find("input").val();
	
	
 	$(".update_goods_NO").val(goods_NO);
	$(".update_bookCount").val(amount); 
	$(".quantity_update_form").submit();
	
});


/* 장바구니 삭제 버튼 */
$(".delete_btn").on("click", function(){
	
		
	let goods_NO = $(this).data("goods_no");
	
	$(".delete_goods_NO").val(goods_NO);
	$(".quantity_delete_form").submit();
});


/* 주문 페이지 이동 */	
$(".order_btn").on("click", function(){
	
	let form_contents ='';
	let orderNumber = 0;
	
	$(".cart_info_td").each(function(index, element){
		
		if($(element).find(".individual_cart_checkbox").is(":checked") === true){	//체크여부
			
			let goods_NO = $(element).find(".individual_bookId_input").val();
			let amount = $(element).find(".individual_bookCount_input").val();
			
			let goods_NO_INPUT= "<input name='orders[" + orderNumber + "].goods_NO' type='hidden' value='" + goods_NO + "'>";
			form_contents += goods_NO_INPUT;
			
			let amount_INPUT= "<input name='orders[" + orderNumber + "].amount' type='hidden' value='" + amount + "'>";
			form_contents += amount_INPUT;
			
			orderNumber += 1;
			
		}
	});	

	$(".order_form").html(form_contents);
	$(".order_form").submit();
	
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


</script>    



</body>

</html>