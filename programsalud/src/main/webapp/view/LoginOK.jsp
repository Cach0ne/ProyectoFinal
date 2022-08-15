<%@page import="dao.UsuarioDAO"%>
<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Turnos</title>

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
<!-- Google Fonts Roboto -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" />
<!-- MDB -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.4.0/mdb.min.css" />
<!-- Bootstrap 5.2 -->
<!-- <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous" /> -->

</head>

<!-- Tomamos el parametro que le enviamos con el botón "tomar"-->
<%
Integer dni = Integer.parseInt(request.getParameter("dni"));
%>

<!-- Navbar -->
<nav class="navbar navbar-expand-md navbar-light ">
	<!-- Container wrapper -->
	<div class="container-fluid">
		<!-- Navbar brand -->
		<a class="navbar-brand me-4" href=""> <img
			src="https://st3.depositphotos.com/11277616/16039/i/450/depositphotos_160391444-stock-photo-first-aid-symbol.jpg"
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
			<a class="btn btn-danger me-3" href="../index.html">SALIR</a>

		</div>
	</div>
</nav>
<!-- Navbar -->

<body>
	<%
	UsuarioDAO UsuarioDAO = new UsuarioDAO();
	List<Usuario> usuario = UsuarioDAO.datosUsuario(dni);

	String nombre = usuario.get(0).getNombre();
	String apellido = usuario.get(0).getApellido();
	%>

	<section class="d-flex justify-content-center bg-grayish mb-4">
		<div style="min-height: 100vh;">
			<h2 class="text-white">
				Bienvenido/a
				<%
			out.println(nombre);
			%>
			</h2>
			<div
				class="container bg-white bg-opacity-75 rounded border border-info">

				<div class="row mt-3 ">
					<div class="col-12 col-md-6">
						<div class="card">
							<div class="bg-image hover-overlay ripple"
								data-mdb-ripple-color="light">
								<img
									src="https://media.istockphoto.com/photos/doctor-in-hospital-background-with-copy-space-picture-id949812160?k=20&m=949812160&s=170667a&w=0&h=d37eip7n1YrRu2wZxkKndJb_IR6DevLpXbAWBzzWVD8="
									class="card-img" /> <a
									href="./Turnos.jsp?dni=<%out.println(dni);%>">
									<div class="mask text-dark"
										style="background-color: rgba(251, 251, 251, 0.15);">
										<br>
										<h3 class="card-title font-monospace">Turnos</h3>
										<p class="card-text font-monospace fs-5">Listado de turnos
											disponibles</p>
									</div>
								</a>

							</div>

						</div>

					</div>
					<div class="col-12 col-md-6">
						<div class="card">
							<div class="bg-image hover-overlay ripple"
								data-mdb-ripple-color="light">
								<img
									src="https://st2.depositphotos.com/1029440/7074/i/600/depositphotos_70747423-stock-photo-female-doctors-hand-holding-stethoscope.jpg"
									class="card-img" /> <a
									href="./MisTurnos.jsp?dni=<%out.println(dni);%>">
									<div class="mask text-dark d-flex flex-column align-items-end"
										style="background-color: rgba(251, 251, 251, 0.15);">
										<br>
										<h3 class="card-title font-monospace">Mis turnos</h3>
										<p class="card-text font-monospace fs-5">Revisá tus turnos
											tomados</p>
									</div>
								</a>

							</div>

						</div>
					</div>
				</div>

				<div class="row mb-3">
					<div class="col-12 col-md-6 ">

						<div class="card">
							<div class="bg-image hover-overlay ripple"
								data-mdb-ripple-color="light">
								<img
									src="https://media.istockphoto.com/photos/doctor-writing-a-medical-prescription-picture-id1319031310?b=1&k=20&m=1319031310&s=612x612&w=0&h=HeBYGk3I78_LGIJTW4EPgM8CXhVCpKrscDikQR-Qkoc="
									class="card-img" /> <a
									href="./MiPerfil.jsp?dni=<%out.println(dni);%>">
									<div class="mask text-dark"
										style="background-color: rgba(251, 251, 251, 0.15);">
										<br>
										<h3 class="card-title font-monospace">Mis datos</h3>
										<p class="card-text font-monospace fs-5">Podés modificar
											tus datos personales.</p>
									</div>
								</a>

							</div>

						</div>

					</div>
					<div class="col-12 col-md-6 ">

						<div class="card bg-white text-dark ">

							<img
								src="https://www.idplates.com/images/idplates-metal-card-526-7134.jpg"
								class="card-img" alt="Mis Turnos" />
							<h3 class="card-title font-monospace bg-white">Credencial
								digital</h3>
							<div
								class="card-img-overlay bg-white bg-opacity-25">
								<img
									src="https://st3.depositphotos.com/11277616/16039/i/450/depositphotos_160391444-stock-photo-first-aid-symbol.jpg"
									height="35"/>
								<h3 class="card-title font-monospace mt-2"><%out.println(nombre);%></h3>
								<h3 class="card-title font-monospace mb-2"><%out.println(apellido);%></h3>
								<br>
								<p class="card-text font-monospace fs-4 text-muted">Cartilla: Global</p>
								<p class="card-text font-monospace fs-4 ">Plan: PS01</p>
							</div>
						</div>

					</div>

				</div>

			</div>
		</div>
	</section>


	<footer class="fixed-bottom bg-light text-center text-muted">
		<!-- Copyright -->
		<div class="text-center p-2 "
			style="background-color: rgba(0, 0, 0, 0.2);">
			© 2022 Copyright: <a class="text-reset fw-bold">Cach0n3.io</a>
		</div>
		<!-- Copyright -->
	</footer>


	<!-- MDB -->
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

</body>
</html>