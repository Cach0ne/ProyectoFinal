<%@page import="dao.TurnosDAO"%>
<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="dao.AccederUsuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Tomamos el parametro que le enviamos con el botón "tomar"-->
<%Integer dni = Integer.parseInt(request.getParameter("dni")) ; %> 

<!-- la pagina se autoredireccionara a MisTurnos-->
<meta http-equiv="Refresh" content="0;../view/MisTurnos.jsp?dni=<%out.println(dni) ;%>">

<title>Insert title here</title>
</head>
<body>

<% 

	//Tomamos el parametro que le enviamos con el botón "tomar"
	Integer id = Integer.parseInt(request.getParameter("id")) ; //id del turno seleccionado


	//Actualizar tabla turnos
	TurnosDAO turno = new TurnosDAO();
	
	turno.QuitarTurnoTomado(id);
	
	
	%>
	
</body>
</html>