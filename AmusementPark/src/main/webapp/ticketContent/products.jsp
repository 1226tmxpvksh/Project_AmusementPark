<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Product" %>
<%@ page import = "dao.ProductRepository" %>
<%@ page import="java.sql.*" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" 
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>티켓 목록</title>
</head>
<body>
	<jsp:include page ="menu.jsp" />
		<div class = "jumbotron">
			<div class = "container">
				<h1 class = "display-3">티켓 목록</h1>
			</div>
		</div>
		<%
			ProductRepository dao = ProductRepository.getInstance();
			ArrayList<Product> listOfProducts = dao.getAllProducts();
		%>
		
		<div class = "container">
			<div class = "row" align="center">
			<%@ include file="dbconn.jsp" %>
	
		<%
			String sql = "select * from ticket";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
		%>
		<div class = "col-md-4">
			<h3><%=rs.getString("p_name") %></h3>
			<p><%=rs.getString("p_description")%>
			<p><%=rs.getString("p_unitPrice") %> 원
			<P><a href="./product.jsp?id=<%=rs.getString("p_id") %>" class = "btn btn-secondary" role="button">
			상세 정보 &raquo;</a>
		</div>
			<%
				}
			%>	
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>