<%@page import="dao.UsuarioDAO"%>
<%@page import="model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Crear Usuario</title>
</head>
<body>

	<%
	String nombre = request.getParameter("usuario");
	String apellido = request.getParameter("apellido");
	Integer edad = Integer.parseInt(request.getParameter("edad"));
	Integer dni = Integer.parseInt(request.getParameter("dni"));
	Integer telefono = Integer.parseInt(request.getParameter("telefono"));
	String mail = request.getParameter("mail");
	String direccion = request.getParameter("direccion");
	String contrasenia = request.getParameter("password");
	
	
	UsuarioDAO usuarioDAO = new UsuarioDAO();
	Boolean existe = usuarioDAO.Login(dni, contrasenia);
	
	if(existe.booleanValue()){
		response.sendRedirect("../view/Registrar.jsp?error=1");
			
	}else{
		
		Usuario usu = new Usuario(nombre, apellido, dni, telefono, mail, direccion,edad, contrasenia);
		usuarioDAO.crearUsuario(usu);
		response.sendRedirect("../view/Registrar.jsp?ok=1");
	}
	
	
	
	%>
</body>
</html>