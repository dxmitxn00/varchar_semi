<%@  page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="try" %>
<!DOCTYPE html>
<html lang="zxx">

<!-- ● bdatas 객체배열
		{ buyNum(주문번호),
		  buySerial(주문시리얼번호),
	   	  teaPice(상품가격) } 데이터 필요 -->
<!-- ● buyNum(주문번호) 데이터 보냄 -->

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>주문내역페이지</title>

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
    	.shoping__cart__table table thead th.shoping__product{
    		text-align: center
    	}
    	.shoping__cart__table table tbody td input{
    		display: inline-block;
    		font-size: 17px;
    		color: #ffffff;
    		text-transform: uppercase;
    		letter-spacing: 1px;
    		border: 1px solid #b2b2b2;
    		padding: 14px 20px 12px;
    		border-radius: 25px;
    		background-color: #23512e;
    	}
    	.shoping__cart__table table tbody .orderInfo{
    		font-size: 16px;
    		color: #1c1c1c;
    		list-style: none;
    		line-height: 36px;
    	}
    	.shoping__cart__table h3 {
    		font-size: 25px;
    		color: #1c1c1c;
    		list-style: none;
    		line-height: 36px;
    		display: block;
    		text-align: center;
    		margin: 100px;
    		padding-bottom: 200px;
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
    <try:Hero/>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/orderList.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>주문 내역</h2>
                        <div class="breadcrumb__option">
                            <a href="main.jsp">Home</a>
                            <span>Order List</span>
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
    
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                    <form action=InsertCart.do method="post">
                        	<table>
                    	<c:if test="${ empty bdatas }">
                     		<h3>💚주문한 상품이 없어용💚</h3>
                       	</c:if>
                        <c:if test="${ not empty bdatas }">
                            	<thead>
                                	<tr>
                                    	<th class="shoping__product">주문번호</th>
                                    	<th>총 가격</th>
                                    	<th>다시 담기</th>
                                    	<th></th>
                                	</tr>
                            	</thead>
                            	<tbody>
                                	<c:forEach var="v" items="${ bdatas }">
										<tr>
											<td class="orderInfo"><a href="buyDetailPage.do">${ v.buyNum }</a></td>
											<td class="orderInfo">${ sum }원</td>
											<td>
												<input type="submit" value="다시 담기">
											</td>
										</tr>
									</c:forEach>    
                            	</tbody>
						</c:if>                            
                        	</table>
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