<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="try" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을 때 실행할 코드를 작성하는 부분

            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                extraRoadAddr += data.bname;
            }

            if (data.buildingName !== '' && data.apartment === 'Y') {
                extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }

            if (extraRoadAddr !== '') {
                extraRoadAddr = '(' + extraRoadAddr + ')';
            }

            document.getElementById("postcode").value = data.zonecode;
            document.getElementById("roadAddress").value = roadAddr;
            document.getElementById("jibunAddress").value = data.jibunAddress;

            if (roadAddr !== '') {
                document.getElementById("extraAddress").value = extraRoadAddr;
            } else {
                document.getElementById("extraAddress").value = '';
            }

            var guideTextBox = document.getElementById("guide");

            if (data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소: ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';
            } else if (data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소: ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }

            // 팝업 닫기
            closeDaumPostcode();
        },
        onclose: function() {
            // 팝업이 닫힐 때 실행할 코드를 작성하는 부분

            // 팝업 닫기
            closeDaumPostcode();
        }
    }).open();
}

function closeDaumPostcode() {
    // iframe을 넣은 element를 안보이게 한다.
    document.getElementById("guide").style.display = "none";
}
</script>

<style type="text/css">
.signup__image {
	/*border: 1px;*/
	margin: 10px;
	padding: 0px;
	animation: fadein 6s ease 4s;
	-webkit-animation: fadein 4s; /* Safari and Chrome */
}

.signup__image img {
	width: 100%;
}

@keyframes fadein {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}
@-moz-keyframes fadein { /* Firefox */
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}
@-webkit-keyframes fadein { /* Safari and Chrome */
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}
@-o-keyframes fadein { /* Opera */
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}


</style>

<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>varChar | SignUp</title>

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
</head>

<body>
<script type="text/javascript">
function test() { // 회원가입 버튼에서 실행될 함수 (버튼을 submit으로 설정 X)
    var p1 = document.getElementById('pw').value; 
    // MemberVO의 패스워드 멤버변수 memberPw와 동일한 name을 갖춰서 보내야할 인풋값
    var p2 = document.getElementById('pw2').value; 
    // 단순 2차 비번 확인용
    if( p1 != p2 ) {
      alert("비밀번호가 일치 하지 않아서 회원가입을 완료할수 없습니다.");
    } else{
      alert("비밀번호가 일치합니다, 회원가입을 완료합니다!");
      document.getElementById('signup').submit(); // 컨트롤러에게 form에 id값을 설정하여 전달
    }
}

function test02(){
	
	
}
</script>
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

	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Sign Up</h2>
						<div class="breadcrumb__option">
							<a href="./index.html">Home</a> <span>Checkout</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Checkout Section Begin -->
	<section class="checkout spad">
		<div class="container">
			<div class="row">
			</div>
			<div class="checkout__form">
				<h4>회원가입</h4>
				<!-- Ctrl한테 보내줘야 할 Form시작 -->
				<form action="signup.do" method="post" id="signup">
					<div class="row">
						<div class="col-lg-4 col-md-6">
							<div class="signup__image">
								<img src="img/signup/signupPage.jpg" alt="">
							</div>
						</div>
						
						<div class="col-lg-8 col-md-6">
							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											아이디<span>*</span>
										</p>
										<input type="text" name="memberId" placeholder="아이디를 입력하세요" required>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											비밀번호<span>*</span>
										</p>
										<input id="pw" type="password" name="memberPw" placeholder="비밀번호를 입력하세요 (최대 8자까지)" required>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											비밀번호 확인<span>*</span>
										</p>
										<input id="pw2" type="password"  placeholder="한번 더 입력하세요." required>
									</div>
								</div>
							</div>
							<div class="checkout__input">
								<p>
									이름<span>*</span>
								</p>
								<input type="text" name="memberName" placeholder="이름을 입력하세요" required>
							</div>
							<div class="checkout__input">
								<p>
									주소<span>*</span>
								</p>
								<input id="roadAddress" type="text" placeholder="도로명" >
								<input id="postcode" type="text" placeholder="우편번호" >
								<input id="jibunAddress" type="text" placeholder="지번" >				
								<span id="guide" style="color: #999; display: none"></span> 
								<input type="button" name="memberAddress" onclick="execDaumPostcode()" value="주소 찾기">
							</div>
							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											연락처
										</p>
										<input type="text" name="memberPhone" placeholder="-(하이픈)을 빼고 입력하세요" required>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											Email
										</p>
										<input type="text" name="memberEmail" placeholder="@ 포함 정확하게 입력하세요" required>
									</div>
								</div>
							</div>
							<button type="button" value="회원가입" class="site-btn" onclick="test()">Sign Up</button>
					</div>
					</div>
				</form>
				<!-- Ctrl한테 보내줘야 할 Form끝 -->
			</div>
		</div>
	</section>
	<!-- Checkout Section End -->

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