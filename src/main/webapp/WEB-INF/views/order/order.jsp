<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>

<head>

	
	<link rel="stylesheet" href="/resources/main/index.css">
	<link rel="stylesheet" href="/resources/order/order.css">

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
  
   <!-- 다음주소 -->
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<style type="text/css">
	.ico_payment {
    overflow: hidden;
    vertical-align: top;
    background-size: 210px 50px;
	}
	
	.top_payment{
		background-color: yellow;
	}
	
	
	</style>
    
    
</head>

<body>


	
	</div>

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
					<div class="content_subject"><span>장바구니</span></div>
						<div class="content_main">
							<!-- 회원 정보 -->
							<div class="member_info_div">
								<table class="table_text_align_center memberInfo_table">
									<tbody>
										<tr>
											<th style="width: 25%;">주문자</th>
											<td style="width: *">${userInfo.name} | ${userInfo.email}</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 배송지 정보 -->
							<div class="addressInfo_div">
								<div class="addressInfo_button_div">
									<button class="address_btn address_btn_1" onclick="showAdress('1')" style="background-color: #3c3838;">상용자 정보 주소록</button>
									<button class="address_btn address_btn_2" onclick="showAdress('2')">직접 입력</button>
								</div>
								<div class="addressInfo_input_div_wrap">
									<div class="addressInfo_input_div addressInfo_input_div_1" style="display: block">
										<table>
											<colgroup>
												<col width="25%">
												<col width="*">
											</colgroup>
											<tbody>
												<tr>
													<th>이름</th>
													<td>
														${userInfo.name}
													</td>
												</tr>
												<tr>
													<th>주소</th>
													<td>
														${userInfo.zic} ${userInfo.addr1}<br>${userInfo.addr2}
														<input class="selectAddress" value="T" type="hidden">
														<input class="addressee_input" value="${userInfo.name}" type="hidden">
														<input class="address1_input" type="hidden" value="${userInfo.zic}">
														<input class="address2_input" type="hidden" value="${userInfo.addr1}">
														<input class="address3_input" type="hidden" value="${userInfo.addr2}">										
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									
									<div class="addressInfo_input_div addressInfo_input_div_2">
										<table>
											<colgroup>
												<col width="25%">
												<col width="*">
											</colgroup>
											<tbody>
												<tr>
													<th>이름</th>
													<td>
														<input class="addressee_input">
													</td>
												</tr>
												<tr>
													<th>주소</th>
													<td>
														<input class="selectAddress" value="F" type="hidden">
														<input class="address1_input" readonly="readonly"> <a class="address_search_btn" onclick="execution_daum_address()">주소 찾기</a><br>
														<input class="address2_input" readonly="readonly"><br>
														<input class="address3_input" readonly="readonly">
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
														
							<!-- 상품 정보 -->
								<div class="orderGoods_div">
		<!-- 상품 종류 -->
		<div class="goods_kind_div">
					주문상품 <span class="goods_kind_div_kind"></span>종류<span class="goods_kind_div_count"></span>개
				</div>
				<!-- 상품 테이블 -->
				<table class="goods_subject_table">
					<colgroup>
						<col width="15%">
						<col width="45%">
						<col width="40%">
					</colgroup>
					<tbody>
						<tr>
							<th>이미지</th>
							<th>상품 정보</th>
							<th>판매가</th>
						</tr>
					</tbody>
				</table>
				<table class="goods_table">
					<colgroup>
						<col width="15%">
						<col width="45%">
						<col width="40%">
					</colgroup>					
					<tbody>
						<c:forEach items="${orderList}" var="ol">
							<tr>
								<td>
									<div class="image_wrap">
										<c:if test="${ol.img_PATH != null}">
							            	<img src="/resources/admin/img/${ol.img_PATH}/${ol.img_NM}">
							            </c:if>
							            
							            <c:if test="${ol.img_PATH == null}">
							           		<img src="/resources/admin/img/NoImg.png">	                    					
							           	</c:if>
							         </div>  	 
								</td>
								<td>${ol.goods_NM}</td>
								<td class="goods_table_price_td">
									<fmt:formatNumber value="${ol.salePrice}" pattern="#,### 원" /> | 수량 ${ol.amount}개
									<br><fmt:formatNumber value="${ol.totalPrice}" pattern="#,### 원" />
									<input type="hidden" class="individual_bookPrice_input" value="${ol.price}">
									<input type="hidden" class="individual_salePrice_input" value="${ol.salePrice}">
									<input type="hidden" class="individual_bookCount_input" value="${ol.amount}">
									<input type="hidden" class="individual_totalPrice_input" value="${ol.salePrice * ol.amount}">
									<input type="hidden" class="individual_bookId_input" value="${ol.goods_NO}">
								</td>
							</tr>							
						</c:forEach>
		
					</tbody>
				</table>
			</div>
							
							
							<!-- 주문 종합 정보 -->
							<div class="total_info_div">
								<!-- 가격 종합 정보 -->
								<div class="total_info_price_div">
									<ul>
										<li>
											<span class="price_span_label">상품 금액</span>
											<span class="totalPrice_span">100000</span>원
										</li>
										<li>
											<span class="price_span_label">배송비</span>
											<span class="delivery_price_span">100000</span>원
										</li>

										<li class="price_total_li">
											<strong class="price_span_label total_price_label">최종 결제 금액</strong>
											<strong class="strong_red">
												<span class="total_price_red finalTotalPrice_span">
													1500000
												</span>원
											</strong>
										</li>
									</ul>
								</div>
								<!-- 버튼 영역 -->
								<div class="total_info_btn_div">
									<a class="order_btn">결제하기</a>
								</div>
							</div>
							
							<!-- kakaoPay -->
							<div class="top_payment">
								<div class="ad_payment">
									<span class="ico_payment ico_paylogo">
										<img src="/resources/order/kakaopayF.png"><span>카카오 결제하기</span>
									</span>
								</div>
							</div>				
							
							
						</div><!-- content main -->
						
			<!-- 주문 요청 form -->
			<form class="order_form" action="/order/order" method="post">
				<!-- 주문자 회원번호 -->
				<input name="user_NO" value="${userInfo.user_NO}" type="hidden">
				<!-- 주소록 & 받는이-->
				<input name="name" type="hidden">
				<input name="zic" type="hidden">
				<input name="Addr1" type="hidden">
				<input name="Addr2" type="hidden">

			<!-- 상품 정보 -->
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
	
	
	
	/* 주문 조합정보란 최신화 */
	setTotalInfo();
	
	log.console(orderNumber);
	
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

/* 주소입력란 버튼 동작(숨김, 등장) */
function showAdress(className){
	/* 컨텐츠 동작 */
	/* 모두 숨기기 */
	$(".addressInfo_input_div").css('display', 'none');
	/* 컨텐츠 보이기 */
	$(".addressInfo_input_div_" + className).css('display', 'block');		
	
	/* 버튼 색상 변경 */
	/* 모든 색상 동일 */
	$(".address_btn").css('backgroundColor', '#555');
	/* 지정 색상 변경 */
	$(".address_btn_"+className).css('backgroundColor', '#3c3838');	
	
	/* selectAddress T/F */
	/* 모든 selectAddress F만들기 */
	$(".addressInfo_input_div").each(function(i, obj){
		$(obj).find(".selectAddress").val("F");
	});
	/* 선택한 selectAdress T만들기 */
	$(".addressInfo_input_div_" + className).find(".selectAddress").val("T");
	
}

/* 다음 주소 연동 */
function execution_daum_address(){
 		console.log("동작");
	   new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	            
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
                 	// 추가해야할 코드
                    // 주소변수 문자열과 참고항목 문자열 합치기
                      addr += extraAddr;
                
                } else {
                	addr += ' ';
                }
 
             	// 제거해야할 코드
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                $(".address1_input").val(data.zonecode);
                $(".address2_input").val(addr);				
                // 커서를 상세주소 필드로 이동한다.
                $(".address3_input").attr("readonly", false);
                $(".address3_input").focus();	 
	            
	            
	        }
	    }).open();  	
	
}


/* 총 주문 정보 세팅(배송비, 총 가격, 물품 수, 종류) */
function setTotalInfo(){

	let totalPrice = 0;				// 총 가격
	let totalCount = 0;				// 총 갯수
	let totalKind = 0;				// 총 종류
	let deliveryPrice = 0;			// 배송비
	let finalTotalPrice = 0; 		// 최종 가격(총 가격 + 배송비)	
	
	$(".goods_table_price_td").each(function(index, element){
		// 총 가격
		totalPrice += parseInt($(element).find(".individual_totalPrice_input").val());
		// 총 갯수
		totalCount += parseInt($(element).find(".individual_bookCount_input").val());
		// 총 종류
		totalKind += 1;

	});	

	/* 배송비 결정 */
	if(totalPrice >= 30000){
		deliveryPrice = 0;
	} else if(totalPrice == 0){
		deliveryPrice = 0;
	} else {
		deliveryPrice = 3000;	
	}
	
	finalTotalPrice = totalPrice + deliveryPrice;	
	
	
	
	/* 값 삽입 */
	// 총 가격
	$(".totalPrice_span").text(totalPrice.toLocaleString());
	// 총 갯수
	$(".goods_kind_div_count").text(totalCount);
	// 총 종류
	$(".goods_kind_div_kind").text(totalKind);
	// 배송비
	$(".delivery_price_span").text(deliveryPrice.toLocaleString());	
	// 최종 가격(총 가격 + 배송비)
	$(".finalTotalPrice_span").text(finalTotalPrice.toLocaleString());		
	

}

/* 주문 요청 */
$(".order_btn").on("click", function(){

	/* 주소 정보 & 받는이*/
	$(".addressInfo_input_div").each(function(i, obj){
		if($(obj).find(".selectAddress").val() === 'T'){
			
			$("input[name='name']").val($(obj).find(".addressee_input").val());
			$("input[name='zic']").val($(obj).find(".address1_input").val());
			$("input[name='Addr1']").val($(obj).find(".address2_input").val());
			$("input[name='Addr2']").val($(obj).find(".address3_input").val());
			
		}
	});
	
	/* 상품정보 */
	let form_contents = ''; 
	$(".goods_table_price_td").each(function(index, element){
		let goods_NO = $(element).find(".individual_bookId_input").val();
		let amount = $(element).find(".individual_bookCount_input").val();
		let goods_NO_INPUT = "<input name='orders[" + index + "].goods_NO' type='hidden' value='" + goods_NO + "'>";
		form_contents += goods_NO_INPUT;
		let amount_INPUT = "<input name='orders[" + index + "].amount' type='hidden' value='" + amount + "'>";
		form_contents += amount_INPUT;
	});	
	$(".order_form").append(form_contents);	
	
	/* 서버 전송 */
	$(".order_form").submit();
	
});

$(".top_payment").click(function(){
	$.ajax({
		type : "post",
		url : "/order/kakaoPay",
		dataType : 'json',
		success : function(data){
			//alert(data.tid);
			var box = data.next_redirect_pc_url
			window.open(box);
			
		},
		error : function(error){
			alert(error);			
			}
		
		
		});		
	
});



</script>    



</body>

</html>