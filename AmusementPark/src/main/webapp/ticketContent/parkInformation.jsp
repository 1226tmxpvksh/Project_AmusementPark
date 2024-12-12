<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "pto.Park" %>
<%@ page import = "pao.ParkRepository" %>
<%@ page import="java.sql.*" %>
<jsp:useBean id="parkPAO" class="pao.ParkRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" 
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>놀이기구 목록</title>
</head>
<body>
	<jsp:include page ="menu.jsp" />
		<div class = "jumbotron">
			<div class = "container">
				<h1 class = "display-3">놀이기구 목록</h1>
			</div>
		</div>
		<%
			ParkRepository pao = ParkRepository.getParkInstance();
			ArrayList<Park> listOfParks = pao.getAllParks();
		%>
		
		<div class = "container">
			<div class = "row" align="center">
			<%@ include file="dbconn.jsp" %>
	
		<%
			String sql = "select * from rides";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
		%>
		<div class = "col-md-4">
			<h3><%=rs.getString("R_name") %></h3>
			<p><%=rs.getString("R_description")%>
			<p><%=rs.getString("R_employees") %> 명
			<P><a href="./parkMoreInformation.jsp?id=<%=rs.getString("R_id") %>" class = "btn btn-secondary" role="button">
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