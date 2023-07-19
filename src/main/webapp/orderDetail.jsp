<%@  page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="try" %>
<!DOCTYPE html>
<html lang="zxx">

<!-- ● pdatas 객체배열
	   	{ buyNum(주문번호),
	   	  buyCnt(주문한 상품 개수),
	  	  teaNum(상품번호),
	  	  teaName(상품이름) },
	   teaPrice(상품가격)
	   memberName(회원이름),
	   memberPhone(회원연락처),
	   memberAddress(회원주소),
	   paymentName(결제수단) 데이터 필요 -->
<!-- ● 보낼 데이터 없음 -->

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

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

    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All departments</span>
                        </div>
                        <ul>
                            <li><a href="#">Fresh Meat</a></li>
                            <li><a href="#">Vegetables</a></li>
                            <li><a href="#">Fruit & Nut Gifts</a></li>
                            <li><a href="#">Fresh Berries</a></li>
                            <li><a href="#">Ocean Foods</a></li>
                            <li><a href="#">Butter & Eggs</a></li>
                            <li><a href="#">Fastfood</a></li>
                            <li><a href="#">Fresh Onion</a></li>
                            <li><a href="#">Papayaya & Crisps</a></li>
                            <li><a href="#">Oatmeal</a></li>
                            <li><a href="#">Fresh Bananas</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+65 11.188.888</h5>
                                <span>support 24/7 time</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

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
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                	<div class="checkout__form">
                		<h4>주문번호 : 쏼라쏼라${ buyNum }</h4><br><br><br>
                   		<div class="shoping__cart__table">
                		<h4 id=teaInfo>상품정보</h4>
	                   	<form action="insertReviews.do" method="post">
	                   		<!-- 상품목록 테이블 -->
                			<table>
								<tbody>
									<%-- <c:forEach var='v' items='${ bdata }'> --%>
									<tr>
                                    	<td class="shoping__cart__price">
                                        	<img src="" alt="">상품이름
                                    	</td>
										<td class="shoping__cart__item">
                							<a href="orderDetail.do?num=${ v.teaNum }">그만${ v.teaName }</a>
                                    	</td>
										<td class="shoping__cart__item">
                							몇${ v.buyCnt } 개
                                    	</td>
                                    	<td class="shoping__cart__price">
                							<input type=submit value="후기작성">
                                    	</td>
                					</tr>
									<tr>
                                    	<td class="shoping__cart__price">
                                        	<img src="" alt="">상품이름
                                    	</td>
										<td class="shoping__cart__item">
                							<a href="orderDetail.do?num=${ v.teaNum }">할래${ v.teaName }</a>
                                    	</td>
                                    	<td class="shoping__cart__item">
                							몇${ v.teaCnt } 개
                                    	</td>
                                    	<td class="shoping__cart__price">
                							<input type=submit value="후기작성">
                                    	</td>
                					</tr>
                					<%-- </c:forEach> --%>
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
                							할래 ${ memberName }
                                    	</td>
                					</tr>
									<tr>
                                    	<td class="shoping__cart__price">
                                        	<img src="" alt="">연락처
                                    	</td>
										<td class="shoping__cart__item">
                							집좀 ${ memberPhone }
                                    	</td>
                					</tr>
									<tr>
                                    	<td class="shoping__cart__price">
                                        	<img src="" alt="">받는주소
                                    	</td>
										<td class="shoping__cart__item">
                							보내줘 ${ memberAddress }
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
                							머리 ${ paymentName }
                                    	</td>
                					</tr>
									<tr>
                                    	<td class="shoping__cart__price">
                                        	<img src="" alt="">결제금액
                                    	</td>
										<td class="shoping__cart__item">
                							터져 ${ totalPrice }
                                    	</td>
                					</tr>
                				</tbody>
							</table>
							<br><br><br><br><br><br>
						</form>
                    	</div>
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