<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

   <!-- title -->
   <title>Cart</title>

   <!-- favicon -->
   <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
   <!-- google font -->
   <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
   <!-- fontawesome -->
   <link rel="stylesheet" href="assets/css/all.min.css">
   <!-- bootstrap -->
   <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
   <!-- owl carousel -->
   <link rel="stylesheet" href="assets/css/owl.carousel.css">
   <!-- magnific popup -->
   <link rel="stylesheet" href="assets/css/magnific-popup.css">
   <!-- animate css -->
   <link rel="stylesheet" href="assets/css/animate.css">
   <!-- mean menu css -->
   <link rel="stylesheet" href="assets/css/meanmenu.min.css">
   <!-- main style -->
   <link rel="stylesheet" href="assets/css/main.css">
   <!-- responsive -->
   <link rel="stylesheet" href="assets/css/responsive.css">

</head>
<body>
   
   <!--PreLoader-->
    <div class="loader">
        <div class="loader-inner">
            <div class="circle"></div>
        </div>
    </div>
    <!--PreLoader Ends-->
   
   <!-- header -->
   <div class="top-header-area" id="sticker">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 col-sm-12 text-center">
               <div class="main-menu-wrap">
                  <!-- logo -->
                  <div class="site-logo">
                     <a href="index.html">
                        <img src="assets/img/logo.png" alt="">
                     </a>
                  </div>
                  <!-- logo -->

                  <!-- menu start -->
                  <nav class="main-menu">
                     <ul>
                        <li class="current-list-item"><a href="#">Home</a>
                           <ul class="sub-menu">
                              <li><a href="index.html">Static Home</a></li>
                              <li><a href="index_2.html">Slider Home</a></li>
                           </ul>
                        </li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="#">Pages</a>
                           <ul class="sub-menu">
                              <li><a href="404.html">404 page</a></li>
                              <li><a href="about.html">About</a></li>
                              <li><a href="cart.html">Cart</a></li>
                              <li><a href="checkout.html">Check Out</a></li>
                              <li><a href="contact.html">Contact</a></li>
                              <li><a href="news.html">News</a></li>
                              <li><a href="shop.html">Shop</a></li>
                           </ul>
                        </li>
                        <li><a href="news.html">News</a>
                           <ul class="sub-menu">
                              <li><a href="news.html">News</a></li>
                              <li><a href="single-news.html">Single News</a></li>
                           </ul>
                        </li>
                        <li><a href="contact.html">Contact</a></li>
                        <li><a href="shop.html">Shop</a>
                           <ul class="sub-menu">
                              <li><a href="shop.html">Shop</a></li>
                              <li><a href="checkout.html">Check Out</a></li>
                              <li><a href="single-product.html">Single Product</a></li>
                              <li><a href="cart.html">Cart</a></li>
                           </ul>
                        </li>
                        <li>
                           <div class="header-icons">
                              <a class="shopping-cart" href="cart.html"><i class="fas fa-shopping-cart"></i></a>
                              <a class="mobile-hide search-bar-icon" href="#"><i class="fas fa-search"></i></a>
                           </div>
                        </li>
                     </ul>
                  </nav>
                  <a class="mobile-show search-bar-icon" href="#"><i class="fas fa-search"></i></a>
                  <div class="mobile-menu"></div>
                  <!-- menu end -->
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- end header -->

   <!-- search area -->
   <div class="search-area">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <span class="close-btn"><i class="fas fa-window-close"></i></span>
               <div class="search-bar">
                  <div class="search-bar-tablecell">
                     <h3>Search For:</h3>
                     <input type="text" placeholder="Keywords">
                     <button type="submit">Search <i class="fas fa-search"></i></button>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- end search arewa -->
   
   <!-- breadcrumb-section -->
   <div class="breadcrumb-section breadcrumb-bg">
      <!--<div class="container">
         <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
               <div class="breadcrumb-text">
                  <p>Fresh and Organic</p>
                  <h1>Cart</h1>
               </div>
            </div>
         </div>
      </div> -->
   </div>
   <!-- end breadcrumb section -->

   <!-- cart -->
   <div class="cart-section mt-150 mb-150">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 col-md-12">
               <div class="cart-table-wrap">
                  <table class="cart-table">
                     <thead class="cart-table-head">
                        <tr class="table-head-row">
                           <th class="product-remove"></th>
                           <th class="product-image"><strong>Product Image</strong></th>
                           <th class="product-name">Name</th>
                           <th class="product-price">Price</th>
                           <th class="product-quantity">Quantity</th>
                           <th class="product-total">Total</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr class="table-body-row" id="P0">
                           <td class="product-remove"><a href="javascript:DeleteProduct('P0');"><i class="far fa-window-close"></i></a></td>
                           <td class="product-image"><img src="assets/img/products/product-img-1.jpg" alt=""></td>
                           <td class="product-name">Strawberry</td>
                           <td class="product-price">$85</td>
                           <td class="product-quantity"><input type="number" value="1" id="pQTY0" min="1"></td>
                           <td class="product-total">1</td>
                        </tr>
                        <tr class="table-body-row" id="P1">
                           <td class="product-remove"><a href="javascript:DeleteProduct('P1');"><i class="far fa-window-close"></i></a></td>
                           <td class="product-image"><img src="assets/img/products/product-img-2.jpg" alt=""></td>
                           <td class="product-name">Berry</td>
                           <td class="product-price">$70</td>
                           <td class="product-quantity"><input type="number" value="2" id="pQTY1" min="1"></td>
                           <td class="product-total">1</td>
                        </tr>
                        <tr class="table-body-row" id="P2">
                           <td class="product-remove"><a href="javascript:DeleteProduct('P2');"><i class="far fa-window-close"></i></a></td>
                           <td class="product-image"><img src="assets/img/products/product-img-3.jpg" alt=""></td>
                           <td class="product-name">Lemon</td>
                           <td class="product-price">$35</td>
                           <td class="product-quantity"><input type="number" value="3" id="pQTY2" min="1"></td>
                           <td class="product-total">1</td>
                        </tr>
                     </tbody>
                  </table>
               </div>
            </div>
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
         var productName = rows[i].querySelectorAll("td")[2].innerText;                        // 이름
         var sPrice      = rows[i].querySelectorAll("td")[3].innerText.replace(/[^\w]/g, '');  // 가격    // .replace(/[^\w]/g, '') 특수문자 제거 정규식으로  숫자만 남김
         var quantityInputs = document.querySelectorAll('.product-quantity input[type="number"]');
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
            <div class="col-lg-4">
               <div class="total-section">
                  <table class="total-table">
                     <thead class="total-table-head">
                        <tr class="table-total-row">
                           <th>Total</th>
                           <th>Price</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr class="total-data">
                           <td><strong>Subtotal: </strong></td>
                           <td id="subTotalTD">$500</td>
                        </tr>
                        <tr class="total-data">
                           <td><strong>Shipping: </strong></td>
                           <td id="shippingTD">$5</td>
                        </tr>
                        <tr class="total-data">
                           <td><strong>Total: </strong></td>
                           <td id="totalTD">$0</td>
                        </tr>
                        <tr class="total-data">
                           <td colspan="2" style="text-align: center;"><a href="checkout.html" class="boxed-btn black">Check Out</a></td>
                        </tr>
                     </tbody>
                  </table>
                  <!--
                  <div class="cart-buttons">
                     <a href="cart.html" class="boxed-btn">Update Cart</a>
                     <a href="checkout.html" class="boxed-btn black">Check Out</a>
                  </div>
                  -->
               </div>
               <!--
               <div class="coupon-section">
                  <h3>Apply Coupon</h3>
                  <div class="coupon-form-wrap">
                     <form action="index.html">
                        <p><input type="text" placeholder="Coupon"></p>
                        <p><input type="submit" value="Apply"></p>
                     </form>
                  </div>
               </div>
               -->
            </div>
         </div>
      </div>
   </div>
   <!-- end cart -->

   <!-- logo carousel 
   <div class="logo-carousel-section">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <div class="logo-carousel-inner">
                  <div class="single-logo-item">
                     <img src="assets/img/company-logos/1.png" alt="">
                  </div>
                  <div class="single-logo-item">
                     <img src="assets/img/company-logos/2.png" alt="">
                  </div>
                  <div class="single-logo-item">
                     <img src="assets/img/company-logos/3.png" alt="">
                  </div>
                  <div class="single-logo-item">
                     <img src="assets/img/company-logos/4.png" alt="">
                  </div>
                  <div class="single-logo-item">
                     <img src="assets/img/company-logos/5.png" alt="">
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
 end logo carousel -->

   <!-- footer -->
   <div class="footer-area">
      <div class="container">
         <div class="row">
            <div class="col-lg-3 col-md-6">
               <div class="footer-box about-widget">
                  <h2 class="widget-title">About us</h2>
                  <p>Ut enim ad minim veniam perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p>
               </div>
            </div>
            <div class="col-lg-3 col-md-6">
               <div class="footer-box get-in-touch">
                  <h2 class="widget-title">Get in Touch</h2>
                  <ul>
                     <li>34/8, East Hukupara, Gifirtok, Sadan.</li>
                     <li>support@fruitkha.com</li>
                     <li>+00 111 222 3333</li>
                  </ul>
               </div>
            </div>
            <div class="col-lg-3 col-md-6">
               <div class="footer-box pages">
                  <h2 class="widget-title">Pages</h2>
                  <ul>
                     <li><a href="index.html">Home</a></li>
                     <li><a href="about.html">About</a></li>
                     <li><a href="services.html">Shop</a></li>
                     <li><a href="news.html">News</a></li>
                     <li><a href="contact.html">Contact</a></li>
                  </ul>
               </div>
            </div>
            <div class="col-lg-3 col-md-6">
               <div class="footer-box subscribe">
                  <h2 class="widget-title">Subscribe</h2>
                  <p>Subscribe to our mailing list to get the latest updates.</p>
                  <form action="index.html">
                     <input type="email" placeholder="Email">
                     <button type="submit"><i class="fas fa-paper-plane"></i></button>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- end footer -->
   
   <!-- copyright -->
   <div class="copyright">
      <div class="container">
         <div class="row">
            <div class="col-lg-6 col-md-12">
               <p>Copyrights &copy; 2019 - <a href="https://imransdesign.com/">Imran Hossain</a>,  All Rights Reserved.<br>
                  Distributed By - <a href="https://themewagon.com/">Themewagon</a>
               </p>
            </div>
            <div class="col-lg-6 text-right col-md-12">
               <div class="social-icons">
                  <ul>
                     <li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                     <li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
                     <li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
                     <li><a href="#" target="_blank"><i class="fab fa-linkedin"></i></a></li>
                     <li><a href="#" target="_blank"><i class="fab fa-dribbble"></i></a></li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- end copyright -->
   
   <!-- jquery -->
   <script src="assets/js/jquery-1.11.3.min.js"></script>
   <!-- bootstrap -->
   <script src="assets/bootstrap/js/bootstrap.min.js"></script>
   <!-- count down -->
   <script src="assets/js/jquery.countdown.js"></script>
   <!-- isotope -->
   <script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
   <!-- waypoints -->
   <script src="assets/js/waypoints.js"></script>
   <!-- owl carousel -->
   <script src="assets/js/owl.carousel.min.js"></script>
   <!-- magnific popup -->
   <script src="assets/js/jquery.magnific-popup.min.js"></script>
   <!-- mean menu -->
   <script src="assets/js/jquery.meanmenu.min.js"></script>
   <!-- sticker js -->
   <script src="assets/js/sticker.js"></script>
   <!-- main js -->
   <script src="assets/js/main.js"></script>

</body>
</html>