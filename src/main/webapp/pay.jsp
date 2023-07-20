<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<!-- ● bdatas 객체배열
		{ buyNum(주문번호),
		  buySerial(주문시리얼번호),
	   	  teaPice(상품가격) 
	   	  teaCnt(상품수량) } 데이터 필요 -->
<!-- ● buyNum(주문번호) 데이터 보냄 -->

<head>
<meta charset="UTF-8">
<link rel="icon" type="image/svg+xml" href="/vite.svg" />
<title>결제페이지</title>
<script src="https://js.tosspayments.com/v1/payment-widget"></script>
</head>
<body>
	<div id="payment-method"></div>
    <button id="payment-request-button">결제하기</button>
    
    <!-- 총 가격 구하기 -->
    <c:set var="sum" value="0" />
    <c:forEach var="v" items="bdatas">
    	<c:set var="sum" value="${ sum + (v.teaPrice * v.teaCnt) }" />
    </c:forEach>
    
    <!-- 결제 -->
    <script>
    const paymentWidget = PaymentWidget(
        "test_ck_Kma60RZblrqA7NX2LnErwzYWBn14",
        // 비회원 customerKey
    	PaymentWidget.ANONYMOUS
    );
    
    /**
     * 결제창을 렌더링합니다.
     * @docs https://docs.tosspayments.com/reference/widget-sdk#renderpaymentmethods%EC%84%A0%ED%83%9D%EC%9E%90-%EA%B2%B0%EC%A0%9C-%EA%B8%88%EC%95%A1
     */
    paymentWidget.renderPaymentMethods("#payment-method", { value: '${ sum }' });

    const paymentRequestButton = document.getElementById(
        "payment-request-button"
    );
    paymentRequestButton.addEventListener("click", () => {
        /** 결제 요청
         * @docs https://docs.tosspayments.com/reference/widget-sdk#requestpayment%EA%B2%B0%EC%A0%9C-%EC%A0%95%EB%B3%B4
         */
        paymentWidget.requestPayment({
        	orderId: generateRandomString(),
        	orderName: forEach'${ bdatas.teaName }',
            //successUrl: window.location.origin + "/success.jsp",
            successUrl: "http://localhost:8080/varchar_semi/paySuccess.jsp",
            failUrl: "http://localhost:8080/varchar_semi//payFail.jsp",
        });
    });
      
    function generateRandomString() {
        return window.btoa(Math.random()).slice(0, 20);
    }
    </script>
</body>
</html>