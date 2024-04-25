<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Table de Multiplication</title>
</head>
<body>
    <h1>Table de Multiplication</h1>
	<% 
		String nombre = request.getParameter ("nombre");
		 if(nombre != null  )
		 {
			 int table = Integer.parseInt(nombre);
			  for( int i = 1 ; i <= 10 ; i++)
			  {
				  out.print(table + " x " + i + " = " + (table * i) + "<br>");
			  }
		 }else 
		 {
			 out.print("Vous devez donc renseigner un paramétre");
		 }
	%>
</body>
</html>