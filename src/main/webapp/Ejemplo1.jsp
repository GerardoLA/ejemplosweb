<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

<%
String nombre = (String)request.getAttribute("nombre");
String apellido = (String)request.getAttribute("apellido");
//ArrayList<String> pokemons =(ArrayList<String>)request.getAttribute("pokemons");

%>

<table border ="1">
	<tr>
		<td><%out.println(nombre); %></td>
		<td><%out.println(apellido); %></td>

	</tr>
</table>
<h1>Listado de los pokemon</h1>

<%
for (String pokemon : pokemons) {
	%>

	<div class = card style= "width:18rem;">
			<img src="https://picsum.photos/200/200"
			class="card-img-top alt="...">
			<div class="card-body">
			<h5 class="card-title">%=pokemon%</h5>
			<p class="card-text"> ejemplo de texto para construir en el card titulo blablabla</p>	
		
		<% if(pokemon.contains("za")){ %>
			<a href="#" class="btn btn-primary">Go somewhere</a>
		<%}else{ %>
		<a href="#" class="btn btn-secondary">Go somewhere</a>
		<%} %>
	
		</div>
	</div>
<%
} 
%>
</body>
</html>