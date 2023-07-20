<%@  page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="try" %>
<!DOCTYPE html>
<html lang="zxx">

<!-- ● 객체배열
	   	{ buyNum(주문번호),
	   	  buySerial(주문시리얼번호)
	   	  buyCnt(주문한 상품 개수)
	  	  teaNum(상품번호),
	  	  teaName(상품이름) },
<!-- ● 객체배열
	   	{ memberName(회원이름),
	   	  memberPhone(회원연락처) },
	   paymentName(결제수단),
	   reviewDone(후기작성완료-boolean) 데이터 필요 -->
<!-- ● buyNum(주문번호),
	   buySerial(주문시리얼번호),
 	   teaName(상품이름) 데이터 없음 -->

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>주문상세페이지</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    
    <style type="text/css">
    	.checkout__form table tbody a{
    		font-size: 16px;
    		color: #1c1c1c;
    		list-style: none;
    		line-height: 36px;
    	}
    	.shoping__cart__table > #teaInfo {
    		font-size: 21px;
    		font-weight: 600;
    		border-bottom: 1px solid #e1e1e1
    	}
    	.checkout__form > h4 {
       		border-bottom: none;
    	}
    	.shoping__cart__table table tbody tr td {
       		border-bottom: none;
       		vertical-align: top;
    	}
    	.shoping__cart__table table tbody tr td input {
    		display: inline-block;
    		font-size: 17px;
    		color: #ffffff;
    		text-transform: uppercase;
    		letter-spacing: 1px;
    		border: 1px solid #b2b2b2;
    		padding: 14px 20px 12px;
    		border-radius: 25px;
    		margin: 50px;
    		background-color: #23512e;
    		margin-top: 2px;
    	}
    	.shoping__cart__table table tbody tr .shoping__cart__item {
       		padding-left: 110px;
    	}
    </style>
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <try:Humberger/>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
   	<try:Head/>
    <!-- Header Section End -->
    
    <try:Hero/>

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/orderDetail.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>주문 상세</h2>
                        <div class="breadcrumb__option">
                            <a href="main.jsp">Home</a>
                            <span>Order Detail</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shoping Cart Section Begin -->
    
    <!-- 총 가격 구하기 -->
    <c:set var="sum" value="0" />
    <c:forEach var="v" items="bdatas">
    	<c:set var="sum" value="${sum + (bdatas.teaPrice * bdatas.teaCnt)}" />
    </c:forEach>
	<%-- <c:set var="reviewDone" value="false"/> --%>
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                	<div class="checkout__form">
	                   	<form action="insertReviews.do?buySerial=${ bdatas.buySerial }" method="post">
	                   	<input type="hidden" name="buySerial" value="${ bdatas.buySerial }">
                		<h4>주문번호 : ${ buyNum }</h4><br><br><br>
                   		<div class="shoping__cart__table">
                		<h4 id=teaInfo>상품정보</h4>
	                   		<!-- 상품목록 테이블 -->
                			<table>
								<tbody>
									<c:forEach var='v' items='${ bdatas }'>
									<tr>
                                    	<td class="shoping__cart__price">
                                        	<img src="" alt="">상품이름
                                    	</td>
										<td class="shoping__cart__item">
                							<a href="orderDetail.do?num=${ v.teaNum }">${ v.teaName }</a>
                                    	</td>
										<td class="shoping__cart__item">
                							${ v.buyCnt } 개
                                    	</td>
                                    	<td class="shoping__cart__price">
                                    		<c:if test="${ reviewDone == true }">
                								<input type=submit value="후기작성">
                							</c:if>
                							<c:if test="${ reviewDone == false }">
                								<input type=submit  value="후기작성" style="background-color:transparent;  border:0px transparent solid;">
                							</c:if>
                                    	</td>
                					</tr>
                					</c:forEach>
                				</tbody>
							</table>
							<br><br><br><br>
							<!-- 받는 사람 정보 테이블 -->
							<h4 id=teaInfo>받는사람 정보</h4>
                			<table>
								<tbody>
									<tr>
                                    	<td class="shoping__cart__price">
                                        	<img src="" alt="">받는사람
                                    	</td>
										<td class="shoping__cart__item">
                							${ memberName }
                                    	</td>
                					</tr>
									<tr>
                                    	<td class="shoping__cart__price">
                                        	<img src="" alt="">연락처
                                    	</td>
										<td class="shoping__cart__item">
                							${ memberPhone }
                                    	</td>
                					</tr>
									<tr>
                                    	<td class="shoping__cart__price">
                                        	<img src="" alt="">받는주소
                                    	</td>
										<td class="shoping__cart__item">
                							${ memberAddress }
                                    	</td>
                					</tr>
                				</tbody>
							</table>
							<br><br><br><br><br><br>
							<!-- 결제수단 테이블 -->
							<h4 id=teaInfo>결제수단</h4>
                			<table>
								<tbody>
									<tr>
                                    	<td class="shoping__cart__price">
                                        	<img src="" alt="">결제방법
                                    	</td>
										<td class="shoping__cart__item">
                							${ paymentName }
                                    	</td>
                					</tr>
									<tr>
                                    	<td class="shoping__cart__price">
                                        	<img src="" alt="">결제금액
                                    	</td>
										<td class="shoping__cart__item">
                							${ sum }원
                                    	</td>
                					</tr>
                				</tbody>
							</table>
							<br><br><br><br><br><br>
                    	</div>
						</form>
                	</div>
            	</div>
        	</div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->

    <!-- Footer Section Begin -->
    <try:Footer/>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>


</body>

</html>