<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" >
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="">
    <meta name="author" content="">

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
                    <li><a href="account.jsp">账户</a></li>
                </ul>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div>
                    <h2>账号：${user.userName}</h2>
                </div>
                <div>
                    <h2>查看订单：<a href="${pageContext.request.contextPath}/order">订单</a></h2>
                </div>
                <div>
                    <h2>余额：${user.userYue}</h2>
                </div>
            </div>
        </div>

        <div class="row">
            <button type="button" style="float:right">
                <a href="${pageContext.request.contextPath}/user/loginout"><h6>退出登录</h6></a>
            </button>
        </div>


    <%--footer--%>
<jsp:include page="common/footer.jsp"/>
</body>
</html>