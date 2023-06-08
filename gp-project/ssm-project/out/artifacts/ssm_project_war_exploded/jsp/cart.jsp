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

	<!-- head -->
	<jsp:include page="common/head.jsp"></jsp:include>
</head>

<body>
	<!--//////////////////////////////////////////////////-->
	<!--///////////////////Cart Page//////////////////////-->
	<!--//////////////////////////////////////////////////-->
	<div id="page-content" class="single-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="../index.jsp">主页</a></li>
						<li><a href="cart.jsp">购物车</a></li>
					</ul>
				</div>
			</div>
			<c:forEach items="${carts}" var="item">
			<div class="row">
				<div class="product well">
					<div class="col-md-3">
						<div class="image">
							<img src="../${item.ice.iceImages}" />
						</div>
					</div>
					<div class="col-md-9">
						<div class="caption">
							<div class="name"><h3><a href="product.jsp">${item.ice.iceName}</a></h3></div>
							<div class="price">￥：${item.ice.icePrice}</div>
							<label>数量: </label> <input onblur="" class="form-inline quantity" type="text" value="${item.total}">
							<hr>
							<a href="${pageContext.request.contextPath}/deletecart/${item.cartId}" class="btn btn-default pull-right">删除</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			</c:forEach>

			<div class="row">
				<div class="pricedetails">
					<div class="col-md-4 col-md-offset-8">
						<table>
							<tr style="border-top: 1px solid #333">
								<td><h5>总价</h5></td>
								<td>${total}</td>
							</tr>
						</table>
						<center>
							<a href="${pageContext.request.contextPath}/addorder?user.userId=${u.userId}" class="btn btn-1">结账</a>
							<a style="float: left" href="${pageContext.request.contextPath}/empty" class="btn btn-1">清空</a>
						</center>

					</div>
				</div>
			</div>
		</div>
	</div>

	<%--footer--%>
	<jsp:include page="common/footer.jsp"/>
</body>

<script>


</script>
</html>
