<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>

<head>

	<link rel="stylesheet" href="../resources/goods/search.css">
	<link rel="stylesheet" href="../resources/main/index.css">

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
											<!-- 게시물 o -->
								<c:if test="${listCheck != 'empty'}">
									<div class="list_search_result">
										<table class="type_list">
											<colgroup>
												<col width="110">
												<col width="*">
												<col width="120">
												<col width="120">
												<col width="120">
											</colgroup>
											<tbody id="searchList>">
												<c:forEach items="${list}" var="list" >
													<tr>
														<td class="image">
															<c:if test="${list.img_PATH != null}">
					                    						<img src="/resources/admin/img/${list.img_PATH}/${list.img_NM}">
					                    					</c:if>
					                    					<c:if test="${list.img_PATH == null}">
					                    						<img src="/resources/admin/img/NoImg.png">	                    					
					                    					</c:if>   															
														</td>
														<td class="detail">
															<div class="category">
																${list.cate_NM}
															</div>
															<div class="title">
																<a href="/main/goodsDetail/${list.goods_NO}">
																	${list.goods_NM}
																</a>	
															</div>												
														</td>
														<td class="info">
															<div class="rating">
																평점(추후 추가)
															</div>
														</td>
														<td class="price">
															<div class="org_price">
																<div>
																	<fmt:formatNumber value="${list.price}" pattern="#,### 원" />
																</div>
															</div>
															<div class="sell_price">
																<strong>
																	<fmt:formatNumber value="${list.price * (1-list.discount)}" pattern="#,### 원" />
																</strong>
															</div>
														</td>
														<td class="option"></td>
													</tr>
												</c:forEach>
											</tbody>
										
										</table>
									</div>
									
													<!-- 페이지 이동 인터페이스 -->
				<div class="pageMarker_wrap">
					<ul class="pageMarker">
	                			
						<!-- 이전 버튼 -->
						<c:if test="${pageMarker.prev }">
	               			<li class="pageMarker_btn prev">
	               				<a href="${pageMarker.startPage -1}">이전</a>
	               			</li>
						</c:if>
	               			
	               		<!-- 페이지 번호 -->
	               		<c:forEach begin="${pageMarker.startPage }" end="${pageMarker.endPage }" var="num">
	               			<li class="pageMarker_btn ${pageMarker.cri.pageNum == num ? 'active':''}">
	               				<a href="${num}">${num}</a>
	               			</li>	
	               		</c:forEach>
	               		
	                   	<!-- 다음 버튼 -->
	                   	<c:if test="${pageMarker.next}">
	                   		<li class="pageMarker_btn next">
	                   			<a href="${pageMarker.endPage + 1 }">다음</a>
	                   		</li>
	                   	</c:if>
					</ul>
				</div>
				
				<form id="moveForm" action="/main/search" method="get" >
					<input type="hidden" name="pageNum" value="${pageMarker.cri.pageNum}">
					<input type="hidden" name="amount" value="${pageMarker.cri.amount}">
					<input type="hidden" name="keyword" value="${pageMarker.cri.keyword}">
					<input type="hidden" name="type" value="${pageMarker.cri.type}">
					<input type="hidden" name="cate_NO" value="<c:out value="${pageMaker.cri.cate_NO}"/>">
				</form>
									
									
								</c:if>
								<!-- 게시물 x -->
								<c:if test="${listCheck == 'empty'}">
									<div class="table_empty">
										검색결과가 없습니다.
									</div>
								</c:if>							
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