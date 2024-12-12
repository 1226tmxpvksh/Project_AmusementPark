<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String productId = request.getParameter("productId");
		String name = request.getParameter("name");
		String unitPrice = request.getParameter("unitPrice");
		String description = request.getParameter("description");
		String manufacturer = request.getParameter("manufacturer");
		String category = request.getParameter("category");
		String unitsInStock = request.getParameter("unitsInStock");
		String condition = request.getParameter("condition");
		
		Integer price;
		
		if (unitPrice.isEmpty())
			price = 0;
		else
			price = Integer.valueOf(unitPrice);
		
		long stock;
		
		if(unitsInStock.isEmpty())
			stock = 0;
		else
			stock = Long.valueOf(unitsInStock);
		
		ProductRepository dao = ProductRepository.getInstance();
		
		Product newProduct = new Product();
		newProduct.setProductId(productId);
		newProduct.setPname(name);
		newProduct.setUnitPrice(price);
		newProduct.setCategory(category);
		newProduct.setUnitsInStock(stock);
		newProduct.setCondition(condition);
		
		dao.addProduct(newProduct);
		
		String sql = "insert into ticket values(?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, productId);
		pstmt.setString(2, name);
		pstmt.setInt(3, price);
		pstmt.setString(4, description);
		pstmt.setString(5, category);
		pstmt.setString(6, unitsInStock);
		pstmt.setString(7, condition);
		pstmt.executeUpdate();
		
		if(pstmt != null)
			pstmt.close();
		if(conn != null)
			conn.close();
		
		response.sendRedirect("products.jsp");
	%>
</body>
</html>