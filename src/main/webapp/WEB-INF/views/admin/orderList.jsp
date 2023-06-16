<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/admin/orderList.css">

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

<body>

	    <div class="wrapper">
        	<div class="wrap">

				<%@include file="../include/adminHeader.jsp" %>
				
                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>주문 현황</span></div>
					<div class="author_table_wrap">
						<!-- 게시물 O -->
						<c:if test="${listCheck != 'empty' }">
	                    	<table class="order_table">
	                    	<colgroup>
	                    		<col width="21%">
	                    		<col width="20%">
	                    		<col width="20%">
	                    		<col width="20%">
	                    		<col width="19%%">
	                    	</colgroup>
	                    		<thead>
	                    			<tr>
	                    				<td class="th_column_1">주문 번호</td>
	                    				<td class="th_column_2">주문 아이디</td>
	                    				<td class="th_column_3">주문 날짜</td>
	                    				<td class="th_column_4">주문 상태</td>
	                    				<td class="th_column_5">취소</td>
	                    			</tr>
	                    		</thead>
	                    		<c:forEach items="${list}" var="list">
	                    		<tr>
	                    			<td><c:out value="${list.order_ID}"></c:out> </td>
	                    			<td><c:out value="${list.user_NO}"></c:out></td>
	                    			<td><fmt:formatDate value="${list.order_DT}" pattern="yyyy-MM-dd"/></td>
	                    			<td><c:out value="${list.order_STATE}"/></td>
	                    			<td>
	                    				<c:if test="${list.order_STATE == '배송준비' }">
	                    					<button class="delete_btn" data-order_ID="${list.order_ID}">취소</button>
	                    				</c:if>	
	                    			</td>
	                    		</tr>
	                    		</c:forEach>
	                    	</table> 					
						</c:if>
						
                		<!-- 게시물 x -->
                		<c:if test="${listCheck == 'empty'}">
                			<div class="table_empty">
                				등록된 작가가 없습니다.
                			</div>
                		</c:if> 						
                			
                    </div> 
                    
                     <!-- 검색 영역 -->
                    <div class="search_wrap">
                    	<form id="searchForm" action="/admin/orderList" method="get">
                    		<div class="search_input">
                    			<input type="text" name="keyword" value='<c:out value="${pageMarker.cri.keyword}"></c:out>'>
                    			<input type="hidden" name="pageNum" value='<c:out value="${pageMarker.cri.pageNum }"></c:out>'>
                    			<input type="hidden" name="amount" value='${pageMarker.cri.amount}'>
                    			<button class='btn search_btn'>검 색</button>
                    		</div>
                    	</form>
                    </div>                 
                                       
                </div>
                
                    <!-- 페이지 이동 인터페이스 영역 -->
                    <div class="pageMarker_wrap" >
                    
	                    <ul class="pageMarker">
	                    
	                    	<!-- 이전 버튼 -->
	                    	<c:if test="${pageMarker.prev}">
	                    		<li class="pageMarker_btn prev">
	                    			<a href="${pageMarker.startPage - 1}">이전</a>
	                    		</li>
	                    	</c:if>
	                    	
	                    	<!-- 페이지 번호 -->
	                    	<c:forEach begin="${pageMarker.startPage}" end="${pageMarker.endPage}" var="num">
	                    		<li class="pageMarker_btn ${pageMarker.cri.pageNum == num ? "active":""}">
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
                    
					<form id="moveForm" action="/admin/orderList" method="get">
						<input type="hidden" name="pageNum" value="${pageMarker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMarker.cri.amount}">
						<input type="hidden" name="keyword" value="${pageMarker.cri.keyword}">
					</form>
					
					<form id="deleteForm" action="/admin/orderCancel" method="post">
                    	<input type="hidden" name="order_ID">
						<input type="hidden" name="pageNum" value="${pageMarker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMarker.cri.amount}">
						<input type="hidden" name="keyword" value="${pageMarker.cri.keyword}">
						<input type="hidden" name="user_NO" value="${user.user_NO}">						
                    </form>
					
		</div>			                                    
 	</div>
 
 
        <!-- Js Plugins -->
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/jquery.nice-select.min.js"></script>
    <script src="/resources/js/jquery-ui.min.js"></script>
    <script src="/resources/js/jquery.slicknav.js"></script>
    <script src="/resources/js/mixitup.min.js"></script>
    <script src="/resources/js/owl.carousel.min.js"></script>
    <script src="/resources/js/main.js"></script> 
 


<script>

let searchForm = $('#searchForm');
let moveForm = $('#moveForm');

/* 작거 검색 버튼 동작 */
$("#searchForm button").on("click", function(e){
	
	e.preventDefault();
	
	/* 검색 키워드 유효성 검사 */
	if(!searchForm.find("input[name='keyword']").val()){
		alert("키워드를 입력하십시오");
		return false;
	}
	
	searchForm.find("input[name='pageNum']").val("1");
	
	searchForm.submit();
	
});


/* 페이지 이동 버튼 */
$(".pageMarker_btn a").on("click", function(e){
	
	e.preventDefault();
	
	console.log($(this).attr("href"));
	
	moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	
	moveForm.submit();
	
});

$(".delete_btn").on("click", function(e){
	
	e.preventDefault();
	
	let id = $(this).data("order_id");
	
	$("#deleteForm").find("input[name='order_ID']").val(id);
	$("#deleteForm").submit();
});

</script>

</body>
</html>