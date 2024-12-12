<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<jsp:useBean id = "productDAO" class = "dao.ProductRepository" scope="session" />
<html>
<head>
<link rel = "stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>티켓 상세 정보</title>
</head>
<body>
	<script type="text/javascript">
		function addToCart() {
			if(confirm("티켓을 장바구니에 추가하시겠습니까?")){
				document.addForm.submit();
			} else {
				document.addForm.reset();
			}
		}
	</script>
	<jsp:include page = "menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class = "display-3">티켓 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
	%>
	<div class="container">
		<div class = "row">
			<div class = "col-md-6">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %>
				<p> <b>상품 코드 : </b><span class = "badge badge-danger">
					<%=product.getProductId() %></span>
				<p> <b>분류</b> : <%=product.getCategory() %>
				<p> <b>재고 수</b> : <%=product.getUnitsInStock() %>
				<h4> <%=product.getUnitPrice() %>원</h4>
				<form name="addForm" action="./addCart.jsp?id=<%=product.getProductId() %>" method="post">
					<a href="#" class = "btn btn-info" onclick="addToCart()"> 티켓 주문 &raquo;</a>
					<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
					<a href="./products.jsp" class="btn btn-secondary"> 티켓 목록 &raquo;</a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>