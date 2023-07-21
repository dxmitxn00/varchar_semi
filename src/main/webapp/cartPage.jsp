<%@ page language="java" contentType="text/html; charset=UTF-8"
	 import="model.TeaVO, java.util.ArrayList" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="try"%>

<jsp:useBean id="tDAO" class="model.TeaDAO" />
<jsp:useBean id="tVO" class="model.TeaVO" />
<jsp:setProperty property="*" name="tVO" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Ogani | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

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
.shoping__cart__table {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}
</style>
</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Humberger Begin -->
	<try:Humberger />
	<!-- Humberger End -->

	<!-- Header Section Begin -->
	<try:Head />
	<!-- Header Section End -->

	<!-- Hero Section Begin -->
	<section class="hero hero-normal">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>All departments</span>
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
									All Categories <span class="arrow_carrot-down"></span>
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
	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Shopping Cart</h2>
						<div class="breadcrumb__option">
							<a href="./index.html">Home</a> <span>Shopping Cart</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Shoping Cart Section Begin -->
	<section class="shoping-cart spad">
		<div class="container edit">
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__cart__table ">
						<c:if test="${empty sessionScope.cart}">
							<br>
							<br>
							<br>
							<img src="img/cart/cart.png" alt="">
							<br>
							<br>
							<br>
							<br>
							<br>
							<br>
							<h2>💚현재 장바구니 비어있어요💚
						</c:if>
						<c:if test="${not empty sessionScope.cart}">
							<table>
								<thead>
									<tr>
										<th class="shoping__product">상품</th>
										<th>가격</th>
										<th>수량</th>
										<th>총 금액</th>
										<th></th>
									</tr>
								</thead>
								<!-- 장바구니 담기는 기능  -->
								<tbody>

									<c:forEach var="cart" items="${cart}">
										<tr>
											<td class="shoping__cart__item">
												<img src="${cart.imageUrl}" alt="${cart.teaName}"  width = "150px" height="150px">
													<h5>${cart.teaName}</h5>
											</td>
											<td class="shoping__cart__price">${cart.teaPrice}원</td>
											<td class="shoping__cart__quantity">
												<div class="quantity">
													<div class="pro-qty">
														<input type="text" value="${cart.teaCnt}">
													</div>
												</div>
											</td>
											<td class="shoping__cart__total">???원</td>
											<td class="shoping__cart__item__close"><span
												class="icon_close"></span> <script
													src="https://code.jquery.com/jquery-3.7.0.js"
													integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
													crossorigin="anonymous"></script>
<script>

   // onLoad 함수란  DOM이 실행되고  함수가 실행 되도록 하는 함수 (HTML BODY 영역이 모두 로드 된 후 실행)
    window.onload = UnitPriceSummary;
   // 처음 페이지가 로딩 될떄  존재하는 상품의 가격 갯수를 지정하는 초기값 함수   //UnitPriceSummary(); <-- 해당 함수호출은 시작되지만  계산을 못함 
  
   function UnitPriceSummary(){
      
      // table-body-row 영역을 가지고옴 
      const rows = document.querySelectorAll(".table-body-row");
      var sSubTotal = 0;
      
      // 반복문으로 table-body-row 영역을  돌면서(i)  td가 2번쨰(이름), 3번쨰(가격) ,4번째 (갯수)를 가져옴 
      for (var i = 0; i < rows.length; i++) {
         var productName = ${cart.teaName};                        // 이름
         var sPrice      = ${cart.teaPrice};  // 가격    // .replace(/[^\w]/g, '') 특수문자 제거 정규식으로  숫자만 남김
         var quantityInputs = ${cart.teaCnt};
         var sQty           = quantityInputs[i].value;   
         
         // 위에 가져온 값을  넣어주는 역활 
         rows[i].querySelectorAll("td")[5].innerText = "$"+(sPrice * sQty).toString(); 
         sSubTotal = sSubTotal + (sPrice * sQty); 
      }
      
      document.getElementById("subTotalTD").innerText = "$"+sSubTotal.toString(); // 숫자이기 때문에 .toString(); 로 String 형변환
      //document.getElementById("shippingTD").innerText = "$"+sSubTotal.toString(); // 배달료 , 일단 $5로 고정

      var shippingTDValue = document.getElementById("shippingTD").innerText.replace(/[^\d.-]/g, ''); // 숫자, 점(.), 음수(-)만 남깁니다.
      var shippingValue = parseFloat(shippingTDValue); // 문자열을 숫자로 변환합니다.

      document.getElementById("totalTD").innerText = "$"+(sSubTotal + shippingValue).toString();

   
   }


// 상품의 삭제버튼을 클릭시  해당 상품 삭제 
   let originalRowCount = document.querySelectorAll('.table-body-row').length;

   
   function DeleteProduct(product){
      //console.log(originalRowCount);
      if(originalRowCount<= 1){
         alert("마지막 품목 입니다. ");
         return;
      }

      var row = document.getElementById(product);
      if (row) {
          row.parentNode.removeChild(row);
         originalRowCount = originalRowCount-1;
       } else {
         alert("Product with ID " + product + " not found.");
       }

       UnitPriceSummary();
   }

   
// 갯수 증가 함수 
   const tdElements = document.querySelectorAll('.product-quantity');
   tdElements.forEach(function(td) {
      const input = td.querySelector('input');   
      td.addEventListener('click', function() {
         input.value = input.value; 
         UnitPriceSummary();
      });
   });

   
</script>
</td>

										</tr>
									</c:forEach>
								</tbody>
							</table>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__cart__btns">
						<a href="teaListPage.do" class="primary-btn cart-btn">CONTINUE
							SHOPPING </a> <a href="#" class="primary-btn cart-btn cart-btn-right">
							<c:remove var="cartItems" scope="session" /> <span
							class="icon_loading"></span> 장바구니 비우기
						</a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="shoping__continue"></div>
				</div>
				<div class="col-lg-6">
					<div class="shoping__checkout">
						<h5>Cart Total</h5>
						<ul>
							<li>Total <span>${total}원</span></li>
						</ul>
						<a href="order.do" class="primary-btn">결 제 하 기</a>
					</div>
				</div>
			</div>
		</div>
		</c:if>
	</section>
	<!-- Shoping Cart Section End -->

	<!-- Footer Section Begin -->
	<try:Footer />
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