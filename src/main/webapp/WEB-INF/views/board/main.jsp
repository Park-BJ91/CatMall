<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    

<!DOCTYPE html>
<html>

<head>

		<script
		src="https://code.jquery.com/jquery-3.4.1.js"
		integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
		crossorigin="anonymous"></script>
	
	
		<link rel="stylesheet" href="/resources/board/main.css">
		
		<link rel="shortcut icon" href="/resources/fav/favicon.ico">
	
	    <meta charset="UTF-8">
	    <meta name="description" content="Ogani Template">
	    <meta name="keywords" content="Ogani, unica, creative, html">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	    <title>게시판</title>
	
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
	    
	    <style>
	     .pageInfo{
	     list-style : none;
	     display: inline-block;
	     margin: 50px 0 0 100px;      
		 }
		 .pageInfo li{
		 float: left;
		 font-size: 20px;
		 margin-left: 18px;
		 padding: 7px;
		 font-weight: 500;
		 }
		 a:link {color:black; text-decoration: none;}
		 a:visited {color:black; text-decoration: none;}
		 a:hover {color:black; text-decoration: underline;}
		 
		 .active1{
	     background-color: #cdd5ec;
	  	 }
	  	 
	  	   .search_area{
		    display: inline-block;
		    margin-top: 30px;
		    margin-left: 260px;
		  }
		  .search_area input{
		    height: 30px;
		    width: 250px;
		  }
		  .search_area button{
		    width: 100px;
		    height: 36px;
		  }
		  .search_area select{
		  	height: 35px;
		  }
    
    </style>
    
    
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>



 	<%@include file="../include/header.jsp" %>
 	
	<div class="container">
		<nav class="header__menu">
			<div class="col-lg-6">
				<ul>
				  <li>
				    <a href="/board/enroll">게시물 등록</a>
				  </li>
				</ul>				
			</div>	
		</nav>
		
				<div class="table_wrap">
					<table>
						<thead>
							<tr>
								<th class="bno_width">번호</th>
								<th class="title_width">제목</th>
								<th class="writer_width">작성자</th>
								<th class="regdate_width">작성일</th>
								<th class="updatedate_width">수정일</th>
							</tr>
						</thead>
						
						<c:forEach items="${list}" var="list">
							<tr>
								<td><c:out value="${list.bno}"></c:out></td>
								<td>
									<a class="move" href='<c:out value="${list.bno}"/>'>
										<c:out value="${list.title}"></c:out>
									</a>	
								</td>
								<td><c:out value="${list.writer}"></c:out></td>
								<td><c:out value="${list.create_DT}"></c:out></td>
								<td><c:out value="${list.update_DT}"></c:out></td>
							</tr>
						</c:forEach>	
					</table>
					
					
					<div class="pageInfo_wrap" >
						<div class="pageInfo_area">
						
						<div class="search_wrap">
					        <div class="search_area">
					            <select name="type">
					                <option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>--</option>
					                <option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>제목</option>
					                <option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>내용</option>
					                <option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>작성자</option>
					                <option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':'' }"/>>제목 + 내용</option>
					                <option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':'' }"/>>제목 + 작성자</option>
					                <option value="TCW" <c:out value="${pageMaker.cri.type eq 'TCW'?'selected':'' }"/>>제목 + 내용 + 작성자</option>
					            </select>    
					            <input type="text" name="keyword" value="${pageMaker.cri.keyword }">
					            <button id="search_btn">Search</button>
					        </div>
					    </div>  
						
							<ul id="pageInfo" class="pageInfo">
						
							<!-- 이전페이지 버튼 -->
                			<c:if test="${pageMaker.prev}">
                    			<li class="pageInfo_btn previous"><a href="${pageMaker.startPage-1}">Previous</a></li>
                			</c:if>
						
			                <!-- 각 번호 페이지 버튼 -->
			                <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
			                    <li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active1":"" }"><a href="${num}">${num}</a></li>
			                </c:forEach>

                			
                			<!-- 다음페이지 버튼 -->
                			<c:if test="${pageMaker.next}">
                    			<li class="pageInfo_btn next"><a href="${pageMaker.endPage + 1 }">Next</a></li>
               				</c:if>
               				
               				  
                			</ul>
						</div>
					</div>
					
					<form id="moveForm" method="get">
        				<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
       					<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
       					<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
       					<input type="hidden" name="type" value="${pageMaker.cri.type }"> 
					</form>
					
				</div>
 	
 	</div>
 	
 	



    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>게시판</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            <span>게시판</span>
                        </div>
                    </div>
                </div>
            </div>
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

let moveForm = $("#moveForm");

$(".move").on("click", function(e){
    e.preventDefault();
    
    moveForm.append("<input type='hidden' name='bno' value='"+ $(this).attr("href")+ "'>");
    moveForm.attr("action", "/board/details");
    moveForm.submit();
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

$(".pageInfo a").on("click", function(e){
	 
    e.preventDefault();
    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
    moveForm.attr("action", "/board/main");
    moveForm.submit();
    
});

$("#search_btn").on("click", function(e){
    e.preventDefault();
    let type = $(".search_area select").val();
    let keyword = $("input[name='keyword']").val();
    
    console.log(type);
    
    moveForm.find("input[name='type']").val(type);
    moveForm.find("input[name='keyword']").val(keyword);
    moveForm.find("input[name='pageNum']").val(1);
    moveForm.submit();
});
	

</script>


</body>

</html>