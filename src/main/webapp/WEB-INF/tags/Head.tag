<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.jsp"><img src="img/varLog3.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="./index.jsp">Home</a></li>
                            <li><a href="#">상품</a>
                                <ul class="header__menu__dropdown">
                                    <li><a id="all" href="./shop-details.html">전체</a></li>
                                    <li><a id="greentea" href="./shoping-cart.html">녹차</a></li>
                                    <li><a id="redtea" href="./checkout.html" >홍차</a></li>
                                    <li><a id="louis" href="./checkout.html" >루이보스</a></li>
                                    <li><a id="bluetea" href="./checkout.html" >우롱차</a></li>
                                    <li><a id="herb" href="./checkout.html" >허브차</a></li>
                                    <!-- href에 tea.do는 똑같이 하되, cate를 다 다르게 해준다! -->
                                </ul>
                            </li>
                            <li><a href="./blog.html">후기</a></li>
                            <li><a href="./shop-grid.html">마이페이지</a></li>
                            <li><a href="./contact.html">오시는 길</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                        	<li><a href="./signup.jsp"><img src=img/signup.png alt="회원가입" width="24" height="24" border="1"></a></li>
                            <li><a href="./login.jsp"><img src="img/login.jpg" alt="로그인" width="24" height="24" border="1"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>