<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registrar</title>

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
<!-- Google Fonts Roboto -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" />
<!-- MDB -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.4.0/mdb.min.css" />
<!-- Custom styles -->
<link rel="stylesheet" href="css/style.css" />
<!-- Bootstrap 5.2 -->
<!-- <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous" /> -->

</head>
<!-- Tomamos el parametro que nos devuelve el controller en caso de que el dni ya exista-->
<%
String error = request.getParameter("error");
String ok = request.getParameter("ok");
%>

<!-- Navbar -->
<nav class="navbar navbar-expand-md navbar-light ">
	<!-- Container wrapper -->
	<div class="container-fluid">
		<!-- Navbar brand -->
		<a class="navbar-brand me-4" href=""> <img src="https://st3.depositphotos.com/11277616/16039/i/450/depositphotos_160391444-stock-photo-first-aid-symbol.jpg"
			height="35" alt="PS Logo" loading="lazy" style="margin-top: -1px" />
		</a>

		<!-- Toggle button -->
		<button class="navbar-toggler" type="button"
			data-mdb-toggle="collapse" data-mdb-target="#navbarButtonsExample"
			aria-controls="navbarButtonsExample" aria-expanded="false"
			aria-label="Toggle navigation">
			<i class="fas fa-bars"></i>
		</button>

		<!-- Collapsible wrapper -->
		<div class="collapse navbar-collapse" id="navbarButtonsExample">
			<!-- Left links -->
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link fs-4">Program Salud</a></li>
			</ul>

			<!-- Left links -->
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-outline-info me-3"
				data-mdb-ripple-color="dark" data-bs-toggle="modal"
				data-bs-target="#LoginModal">Ingresar</button>
			<a class="btn btn-danger me-3" href="../index.html">VOLVER</a>

		</div>
	</div>
</nav>
<!-- Navbar -->
<body>
	<%
		if (ok != null) {
		out.println("<div class='alert alert-success alert-dismissible fade show h5'role='alert'><i class='fas fa-check'></i> <strong> Te registraste con exito</strong><button type='button' class='btn-close' data-bs-dismiss='alert'	aria-label='Close'></button></div>");}
	%>
	


	<section id="BG_Turnos"
		class="d-flex justify-content-center bg-grayish mb-4">
		<div style="min-height: 100vh;">
			<div class="mt-2">
				<div class="container bg-white bg-opacity-75 rounded ">
					<div class="row">
						<div class="col"></div>
						<%
						if (error != null) {

							out.println("<p class='h3 text-danger'><i class='fas fa-exclamation-circle'></i></p>");
							out.println("<p class='h6 mb-3 text-danger'>El DNI ya se encuentra registrado</p>");
						} else {
							out.println("<br>");
							out.println("<p class='h3 mb-3 text-primary'>Registro</p>");

						}
						%>

	</div>
	<form class="form-signin"
		action="../controller/CrearUsuarioController.jsp" method="POST">
		<!-- 2 columnas con Nombre y Apellido-->
		<div class="row mb-4">
			<div class="col">
				<div class="form-outline">
					<input type="text" name="usuario" class="form-control" required
						autofocus /> <label class="form-label" for="form3Example1">Nombre</label>
				</div>
			</div>
			<div class="col">
				<div class="form-outline">
					<input type="text" name="apellido" class="form-control" required />
					<label class="form-label" for="form3Example2">Apellido</label>
				</div>
			</div>
		</div>

		<!-- 2 columnas con Edad y DNI -->
		<div class="row mb-4">
			<div class="col">
				<div class="form-outline">
					<input type="number" name="edad" class="form-control" required />
					<label class="form-label" for="form3Example7">Edad</label>
				</div>
			</div>
			<div class="col">
				<div class="form-outline">
					<input type="number" name="dni" class="form-control" required /> <label
						class="form-label" for="form3Example3">DNI</label>
				</div>
			</div>
		</div>

		<!-- Telefono input -->
		<div class="form-outline mb-4">
			<input type="number" name="telefono" class="form-control" required />
			<label class="form-label" for="form3Example4">Teléfono</label>
		</div>

		<!-- Email input -->
		<div class="form-outline mb-4">
			<input type="mail" name="mail" class="form-control" required /> <label
				class="form-label" for="form3Example5">Email</label>
		</div>

		<!-- Direccion input -->
		<div class="form-outline mb-4">
			<input type="text" name="direccion" class="form-control" required />
			<label class="form-label" for="form3Example6">Dirección</label>
		</div>


		<!-- Password input -->
		<div class="form-outline mb-4">
			<input type="password" name="password" class="form-control" required />
			<label class="form-label" for="form3Example5">Contraseña</label>
		</div>

		<!-- Submit button -->
		<button type="submit" class="btn btn-primary btn-block mb-2">Registrar</button>
		<br>

	</form>

	</div>
	</div>
	</div>
	</section>

	<!-- Modal -->
	<div class="modal fade" id="LoginModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="d-flex justify-content-center" id="exampleModalLabel">
						Iniciar sesión</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form class="form-signin"
						action="../controller/LoginController.jsp" method="POST">
						<!-- DNI input -->
						<div class="form-outline mb-4">
							<input type="number" name="dni" class="form-control"
								placeholder="Ingrese su DNI" required autofocus
								id="form1Example1" /> <label class="form-label"
								for="form1Example1">DNI</label>
						</div>

						<!-- Password input -->
						<div class="form-outline mb-4">
							<input type="password" name="password" class="form-control"
								placeholder="Ingrese su clave" required autofocus
								id="form1Example2" /> <label class="form-label"
								for="form1Example2">Contraseña</label>
						</div>

						<!-- Submit button -->
						<button type="submit" class="btn btn-primary btn-block">INGRESAR</button>
					</form>
				</div>
			</div>
		</div>
	</div>


	<footer class="fixed-bottom bg-light text-center text-muted">
		<!-- Copyright -->
		<div class="text-center p-2 "
			style="background-color: rgba(0, 0, 0, 0.2);">
			© 2022 Copyright: <a class="text-reset fw-bold">Cach0n3.io</a>
		</div>
		<!-- Copyright -->
	</footer>

	<!-- MDB -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.4.0/mdb.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
		integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
		integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK"
		crossorigin="anonymous"></script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<script>
		//autoclose
		window.setTimeout(function(){
			$(".alert").fadeTo(1500,0).slideDown(1000. function(){
				$(this).remove();
			});
		}, 2000); //2 segundos y desaparece
		</script>


</body>
</html>
