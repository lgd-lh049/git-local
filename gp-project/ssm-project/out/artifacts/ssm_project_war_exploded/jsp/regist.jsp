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
                    <li><a href="account.jsp">注册</a></li>
                </ul>
            </div>
        </div>
        <div class="row"style="text-align: center">
            <div class="col-md-3">&nbsp;</div>
            <div class="col-md-6" >
                <div class="heading">
                    <h2>注册</h2>
                </div>

                <form name="form2" id="ff2" method="post" action="${pageContext.request.contextPath}/user/regist">
                    <p style="color: red" >${regist}</p>
                    <div class="form-group" >
                        <input type="text" class="form-control"  name="userName" id="userName" required>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control"  name="userPass" id="userPass" required>
                    </div>
                    <button type="submit" class="btn btn-1" name="regist">注册</button>
                </form>
            </div>
            <div class="col-md-3">&nbsp;</div>
        </div>
    </div>
</div>

<%--footer--%>
<jsp:include page="common/footer.jsp"/>
</body>
</html>