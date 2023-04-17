<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Mobile Shop</title>

    <!-- Bootstrap Core CSS -->
    <jsp:include page="common/head.jsp"></jsp:include>
</head>

<body>

<!--//////////////////////////////////////////////////-->
<!--///////////////////HomePage///////////////////////-->
<!--//////////////////////////////////////////////////-->
<div id="page-content" class="home-page">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <!-- Carousel -->
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators hidden-xs">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="../static/images/p1.jpg" alt="First slide">
                            <!-- Static Header -->
                            <div class="header-text hidden-xs">
                                <div class="col-md-12 text-center">
                                </div>
                            </div><!-- /header-text -->
                        </div>
                        <div class="item">
                            <img src="../static/images/p2.jpg" alt="Second slide">
                            <!-- Static Header -->
                            <div class="header-text hidden-xs">
                                <div class="col-md-12 text-center">
                                </div>
                            </div><!-- /header-text -->
                        </div>
                        <div class="item">
                            <img src="../static/images/p3.jpg" alt="Third slide">
                            <!-- Static Header -->
                            <div class="header-text hidden-xs">
                                <div class="col-md-12 text-center">
                                </div>
                            </div><!-- /header-text -->
                        </div>
                    </div>
                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div><!-- /carousel -->
            </div>
        </div>

        <div class="row" >

            <div class="col-lg-12">
                <div class="heading"><h2>商品</h2></div>
                <div class="products">
                    <c:forEach items="${ices}" var="item">
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="product">
                            <div class="image"><a href="${pageContext.request.contextPath}/goshop/${item.iceId}"><img src="${item.iceImages}" /></a></div>
                            <div class="caption">
                                <div class="name"><h3><a href="${pageContext.request.contextPath}/goshop/${item.iceId}">${item.iceName}</a></h3></div>
                                <div class="price">￥：${item.icePrice}</div>
                                <div class="data">生产日期：${item.iceData}</div>
                            </div>
                        </div>

                    </div>
                    </c:forEach>
                </div>
            </div>

        </div>


    </div>
</div>

<%--footer--%>
<jsp:include page="common/footer.jsp"/>
</body>
</html>
