<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <li><a href="account.jsp">仓库</a></li>
                </ul>
            </div>
        </div>
        <div class="row"style="text-align: center">
            <table width="70%" cellpadding="30px">
                <tr>
                    <th>订单号</th>
                    <th>用户名</th>

                </tr>
                <c:forEach var="item" items="${orders}">
                    <tr height="50px">
                        <td>${item.orderId}</td>
                        <td>${item.user.userName}</td>

                    </tr>
                </c:forEach>

            </table>

        </div>
    </div>
</div>

<%--footer--%>
<jsp:include page="common/footer.jsp"/>
</body>
</html>
