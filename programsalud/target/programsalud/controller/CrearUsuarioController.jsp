<%@page import="dao.GuardarUsuarioDAO"%>
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
<a href="../index.html"> Formulario </a>

	<%
	String nombre = request.getParameter("usuario");
	String apellido = request.getParameter("apellido");
	Integer dni = Integer.parseInt(request.getParameter("dni"));
	Integer telefono = Integer.parseInt(request.getParameter("telefono"));
	String mail = request.getParameter("mail");
	String direccion = request.getParameter("direccion");
	Integer edad = Integer.parseInt(request.getParameter("edad"));
	String contrasenia = request.getParameter("password");

	Usuario usu = new Usuario(nombre, apellido, dni, telefono, mail, direccion,edad, contrasenia);

	GuardarUsuarioDAO usuarioDAO = new GuardarUsuarioDAO();

	Boolean okCreado = usuarioDAO.crearUsuario(usu);

	if (okCreado) {
		out.println("El usuario se creó correctamente <br>");
	} else {
		out.println("Error en crear usuario <br>");
	}
	
	%>
</body>
</html>