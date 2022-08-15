<%@page import="dao.UsuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>

<%
	Integer dni = Integer.parseInt(request.getParameter("dni"));
	String contrasenia = request.getParameter("password");
	
	UsuarioDAO usuarioDAO = new UsuarioDAO();
	Boolean correcto = usuarioDAO.Login(dni, contrasenia);
	
	
	if(correcto.booleanValue()){
		response.sendRedirect("../view/LoginOK.jsp?dni="+dni);
			
	}else{
		response.sendRedirect("../view/LoginFallido.html");
	}
	%>
	
	
</body>
</html>