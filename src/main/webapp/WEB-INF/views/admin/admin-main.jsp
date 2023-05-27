<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>관리자 페이지</title>
    
    <link rel="stylesheet" href="../resources/admin/main.css">

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




</head>
<body>


    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i></li>
                                <li>방문해 주셔서 감사합니다</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                   
                    	<!--  Login -->
                        <div class="header__top__right">

                            <div class="header__top__right__auth">
                                 <c:if test="${user == null}">
				                	<a href="/user/login"><i class="fa fa-user"></i> Login &nbsp;&nbsp;&nbsp;&nbsp;</a>
				                </c:if>
				                
				                <c:if test="${user != null}">
				                	<c:if test="${user.grade ==  1}">
				                		<a href="/admin/main"><i class="fa fa-user-circle">Admin</i></a>
				                	</c:if>
				                		<a id="logout_btn"><i class="fa fa-user-times"></i>Logout</a>
				                </c:if>    
                            </div>
                            
                            <div class="header__top__right__auth">
                            	<c:if test="${user == null}">
				                	<a href="/user/join"><i class="fa fa-user-plus"></i> Join</a>
				           		</c:if>
				            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
                   <div class="admin_top_wrap">
                <span>관리자 페이지</span>
                
            </div>
            <!-- contents-area -->
            <div class="admin_wrap">
                <!-- 네비영역 -->
                <div class="admin_navi_wrap">
                  <ul>
                      <li >
                          <a class="admin_list_01" href="/admin/goodsEnroll">상품 등록</a>
                      </li>
                      <li>
                          <a class="admin_list_02" href="/admin/goodsManage">상품 관리</a>
                      </li>
                      <li>
	                      <a class="admin_list_06" href="/admin/orderList">주문 현황</a>                            
	                  </li>                                                                                             
                  </ul>
                </div>
               </div> 
        
        <!--  
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="/resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="/main/index">홈으로</a></li>
                            <li><a href="./shop-grid.html">상품</a></li>
                            <li><a href="#">상품 주문 관련</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">주문 상세 페이지</a></li>
                                    <li><a href="./shoping-cart.html">장바구니</a></li>  
                                </ul>
                            </li>
                            <li><a href="/board/main">게시판</a></li>
                            <li><a href="/company/contact">회사 위치</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                          
                           <c:if test="${user.grade == 3}">
                            	<li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                           </c:if> 	
                        </ul>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
        -->
    </header>
    <!-- Header Section End -->
    
    
    
    
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