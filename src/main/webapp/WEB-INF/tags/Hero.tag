<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 전체페이지에 적용되는 거 아님!!! -->
<section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>상품</span>
                        </div>
                        <ul>
                            <li><a href="teaListPage.do">녹차</a></li>
                            <li><a href="teaListPage.do">홍차</a></li>
                            <li><a href="teaListPage.do">루이보스</a></li>
                            <li><a href="teaListPage.do">우롱차</a></li>
                            <li><a href="teaListPage.do">허브차</a></li>
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
                                <input type="text" placeholder="검색어를 입력하세요">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>02-538-0021</h5>
                                <span>24시간 고객센터 운영</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>