<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ME
  Date: 2022/6/15
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"  type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">


    <!-- Custom Fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/font-awesome/css/font-awesome.min.css"  type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/fonts/font-slider.css" type="text/css">

    <!-- jQuery and Modernizr-->
    <script src="${pageContext.request.contextPath}/static/js/jquery-2.1.1.js"></script>

    <!-- Core JavaScript Files -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>

</head>

<body>
<!--Top-->
<nav id="top">
    <div class="container">
        <div class="row">
            <div class="col-xs-6">
            </div>
            <div class="col-xs-6">
                <ul class="top-link">
                    <li><a href="${pageContext.request.contextPath}/account"><span class="glyphicon glyphicon-user"></span> 我的账户</a></li>
                </ul>
            </div>
        </div>
    </div>
</nav>

<!--Header-->
<header class="container">
    <div class="row">
        <div class="col-md-4">
            <div id="logo" style="font-size: 40px;">好冰冰商店</div>
        </div>
        <div class="col-md-4">
            <form class="form-search">
                <input type="text" class="input-medium search-query">
                <button type="submit" class="btn"><span class="glyphicon glyphicon-search"></span></button>
            </form>
        </div>
        <div class="col-md-4">
            <div id="cart"><a class="btn btn-1" href="${pageContext.request.contextPath}/cart"><span class="glyphicon glyphicon-shopping-cart"></span>购物车</a></div>
            <c:if test="${user.userStatus==0}">
            <div id="canku" style="float: right;margin-right: 30px"><a class="btn btn-1" href="${pageContext.request.contextPath}/house"><span class="bi bi-house"></span>仓库</a></div>
            </c:if>
        </div>

    </div>
</header>

<!--Navigation-->
<nav id="menu" class="navbar">
</nav>




</body>
</html>
