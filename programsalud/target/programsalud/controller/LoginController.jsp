<%@page import="dao.LoginDAO"%>
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
	Integer dni = Integer.parseInt(request.getParameter("dni"));
	String contrasenia = request.getParameter("password");
	
	LoginDAO loginDAO = new LoginDAO();
	Boolean correcto = loginDAO.Login(dni, contrasenia);
	
	
	if(correcto.booleanValue()){
		//response.sendRedirect("<h1> SI </h1> <br>");
		response.sendRedirect("../view/LoginOK.jsp?dni="+dni);
		
		
		
	//out.println("<h1>Usuario logueado "+ dni +"</h1>");
		
			
	}else{
		//response.sendRedirect("<h2> NO </h2> <br>");
		response.sendRedirect("../view/LoginFallido.html");
		//out.println("<h1>Usuario o contrasenia incorrecto</h1>");
	}
	%>
	
	
</body>
</html>