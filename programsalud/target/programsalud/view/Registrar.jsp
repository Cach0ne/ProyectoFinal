<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<br>
	<a href="../index.html"> Home Page HTML</a> 
	<br>
	
	<br>

	<form class="form-signin"
		action="../controller/CrearUsuarioController.jsp" method="POST">

		<h1 class="h3 mb-3">Registrarse</h1>
		<input type="text" name="usuario" class="form-control"
			placeholder="Ingrese su usuario" required autofocus> <input
			type="text" name="apellido" class="form-control"
			placeholder="Ingrese su apellido" required autofocus> <input
			type="number" name="dni" class="form-control"
			placeholder="Ingrese su dni" required autofocus> <input
			type="number" name="telefono" class="form-control"
			placeholder="Ingrese su telefono" required autofocus> <input
			type="email" name="mail" class="form-control"
			placeholder="Ingrese su email" required autofocus> <input
			type="text" name="direccion" class="form-control"
			placeholder="Ingrese su direccion" required autofocus> <input
			type="number" name="edad" class="form-control"
			placeholder="Ingrese su edad" required autofocus> <input
			type="password" name="password" class="form-control"
			placeholder="Ingrese su clave" required autofocus>
		<button type="submit" class="btn btn-lg btn-primary btn-block">Ingresar</button>
	</form>

</body>
</html>