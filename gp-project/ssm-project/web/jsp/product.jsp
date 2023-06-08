<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/xml" %>
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
	<!--///////////////////Product Page///////////////////-->
	<!--//////////////////////////////////////////////////-->
	<div id="page-content" class="single-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="../index.jsp">主页</a></li>
						<li><a href="#">${ice.iceName}</a></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div id="main-content" class="col-md-8">
					<div class="product">
						<div class="col-md-6">
							<div class="image">
								<img src="../${ice.iceImages}" />
							</div>
						</div>
						<div class="col-md-6">
							<div class="caption">
								<div class="name"><h3>${ice.iceName}</h3></div>
								<div class="info">
									<ul>
										<li>生产日期: ${ice.iceData}</li>
									</ul>
								</div>
								<div class="price">￥:${ice.icePrice}</div>

								<div class="well"><label>数量: </label> <input class="form-inline quantity" id="price" type="text" value="1"><button onclick="price()" href="" class="btn btn-2 ">添加至购物车</button></div>
							</div>
						</div>
						<div class="clear"></div>
					</div>	

			</div>
		</div>
	</div>
	<%--footer--%>
	<jsp:include page="common/footer.jsp"/>
	
	<!-- IMG-thumb -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">         
          <div class="modal-body">                
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
	
	<script>
		function price(){
			var aa=document.getElementById("price").value;  //通过document.getElementById(“id名”).value来获取value值。
			window.location.href="${pageContext.request.contextPath}/addcart?ice.iceId=${ice.iceId}&total="+aa;
		}

	$(document).ready(function(){
		$(".nav-tabs a").click(function(){
			$(this).tab('show');
		});
		$('.nav-tabs a').on('shown.bs.tab', function(event){
			var x = $(event.target).text();         // active tab
			var y = $(event.relatedTarget).text();  // previous tab
			$(".act span").text(x);
			$(".prev span").text(y);
		});
	});
	</script>
</body>
</html>
