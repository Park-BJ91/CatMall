<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">




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
				                		<a href="/admin/admin-main"><i class="fa fa-user-circle">Admin</i></a>
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
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="/main/index"><img src="/resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="/main/index">홈으로</a></li>
                            <li><a href="#">상품 주문 관련</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="/admin/orderList">주문 상세 페이지</a></li>
                                    <li><a href="/cart/cart/${user.user_NO}">장바구니</a></li>  
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
                           <!-- <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>	-->
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
    
    
    

</body>
</html>