<%@page import="DAO.GuardarUsuarioDAO"%>
<%@page import="model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String nombre = request.getParameter("usuario");
	String contrasenia = request.getParameter("password");

	Usuario usu = new Usuario(nombre, contrasenia);

	GuardarUsuarioDAO usuarioDAO = new GuardarUsuarioDAO();

	Boolean okGuardado = usuarioDAO.guardarUsuario(usu);

	if (okGuardado) {
		out.println("El usuario se agregó correctamente <br>");
	} else {
		out.println("Error en agregar usuario <br>");
	}
	%>
</body>
</html>