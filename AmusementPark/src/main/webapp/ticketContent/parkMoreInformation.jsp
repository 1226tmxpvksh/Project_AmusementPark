<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="pto.Park" %>
<%@ page import="pao.ParkRepository" %>
<jsp:useBean id = "parkDAO" class = "pao.ParkRepository" scope="session" />
<html>
<head>
<link rel = "stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>놀이기구 상세 정보</title>
</head>
<body>
	<jsp:include page = "menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class = "display-3">놀이기구 상세 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		ParkRepository pao = ParkRepository.getParkInstance();
		Park park = pao.getParkById(id);
	%>
	<div class="container">
		<div class = "row">
			<div class = "col-md-6">
				<h3><%=park.getRname() %></h3>
				<p><%=park.getDescription() %>
				<p> <b>상품 코드 : </b><span class = "badge badge-danger">
					<%=park.getParkId() %></span>
				<p> <b>분류</b> : <%=park.getCategory() %>
				<h4> <%=park.getEmployees() %>명</h4>
				<form name="addForm" method="post">
					<a href="./parkInformation.jsp" class="btn btn-secondary"> 놀이기구 목록 &raquo;</a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>