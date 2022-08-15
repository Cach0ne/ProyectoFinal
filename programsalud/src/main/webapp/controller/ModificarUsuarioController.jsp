<%@page import="com.google.protobuf.TextFormatParseInfoTree"%>
<%@page import="java.util.List"%>
<%@page import="model.Usuario"%>
<%@page import="dao.UsuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Tomamos los parametros-->
<%
String nombre = request.getParameter("nombre");
String apellido = request.getParameter("apellido");
String edad = request.getParameter("edad");
String dniString = request.getParameter("dni");
String telefono = request.getParameter("telefono");
String mail = request.getParameter("mail");
String direccion = request.getParameter("direccion");
String password = request.getParameter("password");
%>

<!-- la pagina se autoredireccionara a MisTurnos-->
<meta http-equiv="Refresh" content="0;../view/MiPerfil.jsp?dni=<%out.println(Integer.parseInt(dniString));%>">

<title>Insert title here</title>
</head>
<body>

	<%
	UsuarioDAO usuarioDAO = new UsuarioDAO();
	
	Integer dni = Integer.parseInt(dniString);
		
	
	List<Usuario> usuario = usuarioDAO.datosUsuario(dni);
	Integer id = usuario.get(0).getId();
	
	if (nombre != null) {
		String campo = "nombre";
		String valor = nombre;
		usuarioDAO.actualizarUsuario(campo, valor, id);
		
	} else if (apellido != null) {
		String campo = "apellido";
		String valor = apellido;
		usuarioDAO.actualizarUsuario(campo, valor, id);
		
	} else if (edad != null) {
		String campo = "edad";
		String valor = edad;
		usuarioDAO.actualizarUsuario(campo, valor, id);
		
	} else if (telefono != null) {
		String campo = "telefono";
		String valor = telefono;
		usuarioDAO.actualizarUsuario(campo, valor, id);
		
	} else if (mail != null) {
		String campo = "mail";
		String valor = mail;
		usuarioDAO.actualizarUsuario(campo, valor, id);
		
	} else if (direccion != null) {
		String campo = "direccion";
		String valor = direccion;
		usuarioDAO.actualizarUsuario(campo, valor, id);
		
	} else if (password != null) {
		String campo = "password";
		String valor = password;
		usuarioDAO.actualizarUsuario(campo, valor, id);
		
	}
	%>

</body>
</html>