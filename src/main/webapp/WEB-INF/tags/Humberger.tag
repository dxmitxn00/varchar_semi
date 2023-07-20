<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 햄버건지 험버건지 뭐시기 최종본-->
<div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
             <a href="./main.jsp"><!-- main.do --><img src="img/varLog3.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
          <ul>
             <c:if test="${empty memberId}">
            <li><a href="./signup.jsp"><!-- signup.do --><img src=img/signup.png alt="회원가입" width="24" height="24" border="1"></a></li>
            <li><a href="./login.jsp"><!-- login.do --><img src="img/login.jpg" alt="로그인" width="24" height="24" border="1"></a></li>
              </c:if> 
              <c:if test="${not empty memberId}">
            <li><a href="#"><!-- favorPage.do --><i class="fa fa-heart"></i> <span>1</span></a></li>
            <li><a href="#"><!-- cartPage.do --><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            <li><a href="./main.jsp"><!-- logout.do --><img src="img/logout.png" alt="로그아웃" width="24" height="24" border="1"></a></li>
              </c:if>  
          </ul>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./main.jsp"><!-- main.do -->Home</a></li>
                <li><a href="shoplist.jsp">상품</a>
                    <ul class="header__menu__dropdown">
                        <li><a id="all" href="./shoplist.jsp">전체</a></li>
                        <li><a id="greentea" href="./shoplist.jsp">녹차</a></li>
                        <li><a id="redtea" href="./shoplist.jsp">홍차</a></li>
                        <li><a id="louis" href="./shoplist.jsp">루이보스</a></li>
                        <li><a id="bluetea" href="./shoplist.jsp">우롱차</a></li>
                        <li><a id="herb" href="./shoplist.jsp">허브차</a></li>
                        <!-- href에 tea.do는 똑같이 하되, cate를 다 다르게 해준다! -->                             
                    </ul>
                </li>
                <li><a href="./shop-grid.html">후기</a></li>
                <li><a href="./blog.html">마이페이지</a></li>
                <li><a href="./contact.html">오시는 길</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
    </div>