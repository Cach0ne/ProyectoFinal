<%@page import="dao.AccederUsuarioDAO"%>
<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav></nav>

	
	<%
	
	Integer dni = Integer.parseInt(request.getParameter("dni"));
	
	AccederUsuarioDAO accederUsuarioDAO = new AccederUsuarioDAO();
	List<Usuario> usuario = accederUsuarioDAO.accederUsuario(dni);

	String nombre = usuario.get(0).getNombre();	
	
		
	out.println("<h2>"+nombre+"</h2>");
	out.println("<a href='./MiPerfil.jsp?dni="+dni+"'>Mi perfil</a>");
	out.println("<a href='./MiPerfil.jsp?dni="+dni+"'>Mi perfil</a>");
	
	%>
	
	<h1 class="fondo-claro">Bienvenido <%out.println(nombre) ;%></h1>
	
	<a href="./Turnos.jsp?dni=<%out.println(dni) ;%>">Turnos</a>
	<br>
	<br>
	<a href="./MisTurnos.jsp?dni=<%out.println(dni) ;%>">Mis Turnos</a>
	

</body>
</html>