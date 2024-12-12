<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>deleteCart</title>
</head>
<body>
	<%
		String id = request.getParameter("cartId");
		if (id ==null || id.trim().equals("")){
			response.sendRedirect("cart.jsp");
			return;
		}
		
		session.invalidate();
		
		response.sendRedirect("cart.jsp");
	%>
</body>
</html>