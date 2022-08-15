<%@page import="dao.AccederUsuarioDAO"%>
<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./Styles.css" />
<title>Program Salud - Mi Perfil</title>
</head>
<body>
		
		<% 
		Integer dni = Integer.parseInt(request.getParameter("dni"));
		
		AccederUsuarioDAO accederUsuarioDAO = new AccederUsuarioDAO();
		List<Usuario> resultado = accederUsuarioDAO.accederUsuario(dni);
		

	
		Integer id = resultado.get(0).getId(); 
		String nombre = resultado.get(0).getNombre();

/* 		for (int i=0;i<resultado.size();i++)
		{
			out.println("<tr>");
			out.println("<td>" + resultado.get(i).getNombre() + "</td>");
			out.println("<td>" + resultado.get(i).getApellido() + "</td>");
			out.println("<td>" + resultado.get(i).getDni() + "</td>");
			out.println("<td>" + resultado.get(i).getTelefono() + "</td>");
			out.println("<td>" + resultado.get(i).getMail() + "</td>");
			out.println("<td>" + resultado.get(i).getDireccion() + "</td>");
			out.println("<td>" + resultado.get(i).getEdad() + "</td>");
			out.println("<td>" + resultado.get(i).getContrasenia()+ "</td>");
			out.println("</tr>");
		}
		 */
		 
		//out.print("<nav class='fondo-claro'>Nombre:"+ resultado.get(0).getNombre()+"</nav>");
		%>
		
		
		<h1 class="fondo-claro">hola <%out.println(resultado.get(0).getNombre()) ;%></h1>
		<h1 class="fondo-claro">Tu ID es <%out.println(id) ;%></h1>
		

</body>
</html>