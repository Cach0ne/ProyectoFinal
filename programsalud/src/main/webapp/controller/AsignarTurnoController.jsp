<%@page import="dao.UsuarioDAO"%>
<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="dao.TurnosDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Tomamos el parametro que le enviamos con el botón "tomar"-->
<%Integer dni = Integer.parseInt(request.getParameter("dni")) ; %> 

<!-- la pagina se autoredireccionara a Turnos-->
<meta http-equiv="Refresh" content="0;../view/Turnos.jsp?dni=<%out.println(dni) ;%>">

<title>Insert title here</title>
</head>
<body>

<% 

	//Tomamos el parametro que le enviamos con el botón "tomar"
	Integer id = Integer.parseInt(request.getParameter("id")) ; //id del turno seleccionado


	//Actualizar tabla turnos
	UsuarioDAO UsuarioDAO = new UsuarioDAO();
	List<Usuario> usuario = UsuarioDAO.datosUsuario(dni);

	Integer id_U = usuario.get(0).getId();
	//Integer id = 4;// id de turno para probar
	
	TurnosDAO turno = new TurnosDAO();
	
	turno.ActualizarTurno(id_U, id);
	
	
	/*
	//Insertar en tabla asignacion 
	String nom = usuario.get(0).getNombre();
	String ape = usuario.get(0).getApellido();
	
	AsignacionDAO asignacionDAO = new AsignacionDAO();
	
	asignacionDAO.AsignarTurno(id, nom, ape);
	*/
	
	%>

</body>
</html>