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
                    <th>编号</th>
                    <th>商品名</th>
                    <th>价格</th>
                    <th>数量</th>
                    <th>生产日期</th>
                    <th>图片</th>
                    <th>编辑</th>
                </tr>
                <c:forEach var="item" items="${ices}">
                <tr height="50px">
                    <td>${item.iceId}</td>
                    <td>${item.iceName}</td>
                    <td>${item.icePrice}</td>
                    <td>${item.iceStatus}</td>
                    <td>${item.iceData}</td>
                    <td>${item.iceImages}</td>
                    <td>
                        <button type="button"><a href="${pageContext.request.contextPath}/jsp/addice.jsp">添加</a></button>
                        <button type="button"><a href="${pageContext.request.contextPath}/iceitem/${item.iceId}">编辑</a></button>
                        <button type="button"><a href="${pageContext.request.contextPath}/deleteice/${item.iceId}">删除</a></button>
                    </td>
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
