<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>

<head>

	
	
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>회사 위치</title>

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
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    


	<%@include file="../include/header.jsp" %>
	


    <!-- Contact Section Begin -->
 
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_phone"></span>
                        <h4>전화번호</h4>
                        <p>02-1111-2222</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_pin_alt"></span>
                        <h4>주소</h4>
                        <p>강서구 화곡동 24-34</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_clock_alt"></span>
                        <h4>영업 시간</h4>
                        <p>10:00 am to 22:00 pm</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_mail_alt"></span>
                        <h4>Email</h4>
                        <p>portfolio@naver.com</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
     
    <!-- Contact Section End -->
    
    <!-- 카카오 지도 api -->
    
    <div id="map" style="width:1380px;height:400px;"></div>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8c3c34d6e8646632565a0a812260cfe2"></script>



    	<script>
    	// 이미지 지도에 표시할 마커입니다
    	var marker = {
    	    position: new kakao.maps.LatLng(37.54761735006799, 126.84738193394456), 
    	    text: '서울 강서구 화곡동 회사위치.' // text 옵션을 설정하면 마커 위에 텍스트를 함께 표시할 수 있습니다
    	};

    	var staticMapContainer  = document.getElementById('map'), // 이미지 지도를 표시할 div
    	    staticMapOption = { 
    	        center: new kakao.maps.LatLng(37.54761735006799, 126.84738193394456), // 이미지 지도의 중심좌표
    	        level: 3, // 이미지 지도의 확대 레벨
    	        marker: marker // 이미지 지도에 표시할 마커
    	    };

    	// 이미지 지도를 생성합니다
    	var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
	</script>
    
    



    
    <%@include file="../include/footer.jsp" %>

	
	

    <!-- Js Plugins -->
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/jquery.nice-select.min.js"></script>
    <script src="/resources/js/jquery-ui.min.js"></script>
    <script src="/resources/js/jquery.slicknav.js"></script>
    <script src="/resources/js/mixitup.min.js"></script>
    <script src="/resources/js/owl.carousel.min.js"></script>
    <script src="/resources/.js/main.js"></script>
    
    




</body>

</html>