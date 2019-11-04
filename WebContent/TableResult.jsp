<%@ page language="java" contentType="text/html; charset= utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel = "stylesheet" href = "css/style.css"></link>
</head>
<body>
	<h2>Multiplication Table</h2>
	<!-- Show the multiplications in a Bootstrap table -->
		<table class='table table-striped'>
			<thead>
				<tr>
					<th scope="col">Number</th>
					<th scope="col">Times</th>
					<th scope="col">Result</th>
				</tr>
			</thead>
			<tbody>
				<% 
				// Request the value in the parameter 'txtTable'
				int table = Integer.parseInt(request.getParameter("txtTable")); 
				// Request the value in the parameter 'txtRange'
				int range = Integer.parseInt(request.getParameter("txtRange"));
				for(int j=0; j<=range; j++){
					out.append("<tr>");
					out.append("<td>");
					// Show table
					out.append(String.format("%d",table));
					out.append("</td>");
					out.append("<td>");
					// Show times
					out.append(String.format("%d",j));
					out.append("</td>");
					out.append("<td>");
					// Show result
					out.append(String.format("%d",table*j));
					out.append("</td>");
					out.append("</tr>");	
					//out.append(String.format("%d x %d = %d \n", table,j,table*j));
				}
				%>
			</tbody>
		</table>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/script.js"></script>
</body>
</html>