<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" >
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="">
    <meta name="author" content="">
    <style type="text/css">
        input {
            width: 320px;
            height: 40px;
            border: 1px solid #999;
            border-radius: 4px;
        }
    </style>

    <title>Mobile Shop</title>

    <!-- head -->
    <jsp:include page="common/head.jsp"></jsp:include>
</head>

<body>
<!--//////////////////////////////////////////////////-->
<!--///////////////////Account Page///////////////////-->
<!--//////////////////////////////////////////////////-->
<div id="page-content" class="single-page">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <ul class="breadcrumb">
                    <li><a href="../index.jsp">主页</a></li>
                    <li><a href="account.jsp">仓库</a></li>
                    <li><a href="addice.jsp">添加</a></li>
                </ul>
            </div>
        </div>
        <div class="row"style="text-align: center">

            <form action="${pageContext.request.contextPath}/addice" method="get" >
                商品名：<input type="text" name="iceName"></br>
                <p></p>
                价格：<input type="text" name="icePrice"></br>
                <p></p>
                数量：<input type="text" name="iceStatus"></br>
                <p></p>
                图片：<input type="text" name="iceImages"></br>
                <p></p>
                <input type="submit" value="添加" style="width: 100px">
            </form>
        </div>
    </div>
</div>

<%--footer--%>
<jsp:include page="common/footer.jsp"/>
</body>
</html>
