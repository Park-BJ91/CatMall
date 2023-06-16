<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>

<head>
	<link rel="shortcut icon" href="/resources/fav/favicon.ico">
	<link rel="stylesheet" href="../resources/main/index.css">

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
  
  <style type="text/css">

  
  </style>
    
    
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
	                					<option value="N">상품 종류</option>
	                					<option value="C" hidden>히든</option>
	                				</select>
                                </div>
                                <input type="text" name="keyword" placeholder="검색어를 입력해주세요">
                                <button class="site-btn search_btn">SEARCH</button>
                            </form>
                        </div>
                    </div>
                    <div class="hero__item set-bg" data-setbg="/resources/img/hero/banner.png">
                        <div class="hero__text">
                            <span>고민하지 마세요</span>
                            <h2>초보 집사<br />패키지</h2> 
                            <a href="#" class="primary-btn">구매하기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/resources/img/categories/cat-1.jpg">
                            <h5><a href="#">Fresh Fruit</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/resources/img/categories/cat-2.jpg">
                            <h5><a href="#">Dried Fruit</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/resources/img/categories/cat-3.jpg">
                            <h5><a href="#">Vegetables</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/resources/img/categories/cat-4.jpg">
                            <h5><a href="#">drink fruits</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/resources/img/categories/cat-5.jpg">
                            <h5><a href="#">drink fruits</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->


    <section class="featured spad">
        <div class="container">	
	</div>
	</section>

    <!-- Banner Begin -->
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="/resources/img/banner/banner-1.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="/resources/img/banner/banner-2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->
    
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