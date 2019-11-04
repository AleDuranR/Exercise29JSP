<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!-- Directives @ -->
<%@ page import = "com.exercise29jsp.model.Users" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel = "stylesheet" href = "css/style.css"></link>
</head>
<body>
	<h2>JSPs Exercise</h2>
		<!-- Realize the multiplication of the magic number 4 times 10 -->
		<%
			for(int j = 0; j<=10; j++){
				out.append("<p>");
				out.append(String.format("%d x %d = %d", 4,j,4*j));
				response.getWriter().append("</p>");
			}
		%>
		
		<%! int i= 12; %>
		<p>
			<!-- Mostrar los datos-->
			El valor de i es <%= i%>
		</p>
		<hr/>
		<h2>Times number</h2>
		<form action= "TableResult.jsp" method="post">
			<p>
			<!-- Create object of Users class and save in the object myUser its ID and Name -->
			<% 
				Users myUser = new Users();
				myUser.setId(request.getParameter("txtId"));
				myUser.setName(request.getParameter("txtName"));
			%>
			<!-- Assign the value on 'txtTable' the ID saved in the object 'myUser' -->
				<label for="txtTable"> Table: </label>
				<input class="form-control" type="text" id="txtTable" name="txtTable" value=<%= myUser.getId() %>>
			</p>
			<p>
			<!-- Assign the value on 'txtRange' the Name saved in the object 'myUser' -->
				<label for="txtRange"> Range: </label>
				<input class="form-control" type="text" id="txtRange" name="txtRange" value=<%= myUser.getName() %>>
			</p>
			<p>
				<input class="btn btn-primary" type="submit" value="Calculate">
			</p>
		</form>
		<h2>Save ID and Name</h2>
		<form class="form-group" action="index.jsp" method="post">
			<p>
				<label for="txtId">Id</label>
				<input class= "form-control" type="text" id="txtId" name="txtId">
			</p>
			<p>
				<label for="txtName">Name</label>
				<input class= "form-control" type="text" id="txtName" name="txtName">
			</p>
			<input class="btn btn-info" type = "submit" value="Data save">
		</form>
	<!--  
	<form action="" method="post">
		<p>
		<label for="txtTable">Table</label>
		<input class="fomr-control">
		</p>
		<input class="btn btn-info" type="submit" value="Submit">
	</form>
	-->
	<!-- Charging bootstrap -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/script.js"></script>
</body>
</html>