<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        </header>
        	 <!-- top_subject_area -->
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
               
            
               
               

</body>
</html>