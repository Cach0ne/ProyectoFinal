<%@page import="java.util.Iterator"%>
<%@page import="dao.UsuarioDAO"%>
<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./Styles.css" />
<title>Mi Perfil</title>

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

<!-- Tomamos el parametro que le enviamos con el botón "tomar"-->
<%
Integer dni = Integer.parseInt(request.getParameter("dni"));
%>

<!-- Navbar -->
<nav class="navbar navbar-expand-md navbar-light ">
	<!-- Container wrapper -->
	<div class="container-fluid">
		<!-- Navbar brand -->
		<a class="navbar-brand me-4" href=""> <img src="IMG/logo.png"
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
			<a class="btn btn-danger me-3"
				href="./LoginOK.jsp?dni=<%out.println(dni);%>">VOLVER</a>

		</div>
	</div>
</nav>
<!-- Navbar -->

<body>

	<section id="BG_Turnos"
		class="d-flex justify-content-center bg-grayish mb-4">
		<div style="min-height: 100vh;">
			<div class="mt-2">
				<div class="container bg-white bg-opacity-75 rounded ">
					<div class="container">
						<p class="h3 mb-3 text-primary">Mis datos</p>
					</div>
					<div class="container">
						<%
						UsuarioDAO usuarioDAO = new UsuarioDAO();
						List<Usuario> usuario = usuarioDAO.datosUsuario(dni);

						%>
						<!-- Nombre input -->
						<div class="row mb-4">
							<div class="col-10">
								<div class="form-outline">
									<input type="text" name="usuario" class="form-control" required
										value="<%=usuario.get(0).getNombre()%>" readonly /> <label
										class="form-label" for="form3Example1">Nombre</label>
								</div>
							</div>
							<div class="col">
								<div>
									<i type="button" class="fas fa-edit" style="color: green"
										role="buttom" data-bs-toggle="modal"
										data-bs-target="#NombreModal" title="EDITAR"></i>
								</div>
							</div>
						</div>

						<!-- Apellido input -->
						<div class="row mb-4">
							<div class="col-10">
								<div class="form-outline">
									<input type="text" name="apellido" class="form-control"
										required value="<%=usuario.get(0).getApellido()%>" readonly />
									<label class="form-label" for="form3Example2">Apellido</label>
								</div>
							</div>
							<div class="col">
								<div>
									<i type="button" class="fas fa-edit" style="color: green"
										role="buttom" data-bs-toggle="modal"
										data-bs-target="#ApellidoModal" title="EDITAR"></i>
								</div>
							</div>
						</div>

						<!-- Edad input -->
						<div class="row mb-4">
							<div class="col-5">
								<div class="form-outline">
									<input type="number" name="edad" class="form-control" required
										value="<%=usuario.get(0).getEdad()%>" readonly /> <label
										class="form-label" for="form3Example7">Edad</label>
								</div>
							</div>
							<div class="col">
								<div>
									<i type="button" class="fas fa-edit" style="color: green"
										role="buttom" data-bs-toggle="modal"
										data-bs-target="#EdadModal" title="EDITAR"></i>
								</div>
							</div>
						</div>

						<!-- DNI input -->
						<div class="row mb-4">
							<div class="col-6">
								<div class="form-outline">
									<input type="number" name="dni" class="form-control" required
										value="<%=usuario.get(0).getDni()%>" readonly /> <label
										class="form-label" for="form3Example3">DNI</label>
								</div>
							</div>
						</div>

						<!-- Telefono input -->
						<div class="row mb-4">
							<div class="col-8">
								<div class="form-outline">
									<input type="number" name="telefono" class="form-control"
										required value="<%=usuario.get(0).getTelefono()%>" readonly />
									<label class="form-label" for="form3Example4">Teléfono</label>
								</div>
							</div>
							<div class="col">
								<div>
									<i type="button" class="fas fa-edit" style="color: green"
										role="buttom" data-bs-toggle="modal"
										data-bs-target="#TelefonoModal" title="EDITAR"></i>
								</div>
							</div>
						</div>

						<!-- Email input -->
						<div class="row mb-4">
							<div class="col-10">
								<div class="form-outline">
									<input type="mail" name="mail" class="form-control" required
										value="<%=usuario.get(0).getMail()%>" readonly /> <label
										class="form-label" for="form3Example5">Email</label>
								</div>
							</div>
							<div class="col">
								<div>
									<i type="button" class="fas fa-edit" style="color: green"
										role="buttom" data-bs-toggle="modal"
										data-bs-target="#MailModal" title="EDITAR"></i>
								</div>
							</div>
						</div>

						<!-- Direccion input -->
						<div class="row mb-4">
							<div class="col-10">
								<div class="form-outline">
									<input type="text" name="direccion" class="form-control"
										required value="<%=usuario.get(0).getDireccion()%>" readonly />
									<label class="form-label" for="form3Example6">Dirección</label>
								</div>
							</div>
							<div class="col">
								<div>
									<i type="button" class="fas fa-edit" style="color: green"
										role="buttom" data-bs-toggle="modal"
										data-bs-target="#DireccionModal" title="EDITAR"></i>
								</div>
							</div>
						</div>

						<!-- Password input -->
						<div class="row mb-4">
							<div class="col-10">
								<div class="form-outline">
									<input type="text" name="password" class="form-control"
										required value="<%=usuario.get(0).getContrasenia()%>" readonly />
									<label class="form-label">Contraseña</label>
								</div>
							</div>
							<div class="col">
								<div>
									<i type="button" class="fas fa-edit" style="color: green"
										role="buttom" data-bs-toggle="modal"
										data-bs-target="#ContraseñaModal" title="EDITAR"></i>
								</div>
							</div>
						</div>
						<br>

					</div>

				</div>
			</div>
		</div>
	</section>

	<section>
		<!-- Modal Nombre-->
		<div class="modal fade" id="NombreModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-body">
						<form class="form-signin"
							action="../controller/ModificarUsuarioController.jsp?dni=<%=dni %>"
							method="POST">
							<!-- Email input -->
							<div class="form-outline mb-4">
								<input type="text" name="nombre" class="form-control" required
									autofocus id="form1Example1" /> <label class="form-label"
									for="form1Example1">Nombre</label>
							</div>
							<!-- Guardar button -->
							<button type="submit" class="btn btn-success btn-block mb-2">Guardar</button>
						</form>
						<!-- <a class="btn btn-success btn-block me-3" href="../controller/ModificarUsuarioController.jsp?dni=<%=dni %>&nombre=">GUARDAR</a> -->
					</div>
				</div>
			</div>
		</div>

		<!-- Modal Apellido-->
		<div class="modal fade" id="ApellidoModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-body">
						<form class="form-signin"
							action="../controller/ModificarUsuarioController.jsp?dni=<%=dni %>"
							method="POST">
							<!-- Email input -->
							<div class="form-outline mb-4">
								<input type="text" name="apellido" class="form-control" required
									autofocus id="form1Example1" /> <label class="form-label"
									for="form1Example1">Apellido</label>
							</div>
							<!-- Guardar button -->
							<button type="submit" class="btn btn-success btn-block mb-2">Guardar</button>
						</form>
						<!-- <a class="btn btn-success btn-block me-3" href="../controller/ModificarUsuarioController.jsp?dni=<%=dni %>&nombre=">GUARDAR</a> -->
					</div>
				</div>
			</div>
		</div>

		<!-- Modal Edad-->
		<div class="modal fade" id="EdadModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-body">
						<form class="form-signin"
							action="../controller/ModificarUsuarioController.jsp?dni=<%=dni %>"
							method="POST">
							<!-- Email input -->
							<div class="form-outline mb-4">
								<input type="text" name="edad" class="form-control" required
									autofocus id="form1Example1" /> <label class="form-label"
									for="form1Example1">Edad</label>
							</div>
							<!-- Guardar button -->
							<button type="submit" class="btn btn-success btn-block mb-2">Guardar</button>
						</form>
						<!-- <a class="btn btn-success btn-block me-3" href="../controller/ModificarUsuarioController.jsp?dni=<%=dni %>&nombre=">GUARDAR</a> -->
					</div>
				</div>
			</div>
		</div>

		<!-- Modal Telefono-->
		<div class="modal fade" id="TelefonoModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-body">
						<form class="form-signin"
							action="../controller/ModificarUsuarioController.jsp?dni=<%=dni %>"
							method="POST">
							<!-- Email input -->
							<div class="form-outline mb-4">
								<input type="text" name="telefono" class="form-control" required
									autofocus id="form1Example1" /> <label class="form-label"
									for="form1Example1">Teléfono</label>
							</div>
							<!-- Guardar button -->
							<button type="submit" class="btn btn-success btn-block mb-2">Guardar</button>
						</form>
						<!-- <a class="btn btn-success btn-block me-3" href="../controller/ModificarUsuarioController.jsp?dni=<%=dni %>&nombre=">GUARDAR</a> -->
					</div>
				</div>
			</div>
		</div>

		<!-- Modal Mail-->
		<div class="modal fade" id="MailModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-body">
						<form class="form-signin"
							action="../controller/ModificarUsuarioController.jsp?dni=<%=dni %>"
							method="POST">
							<!-- Email input -->
							<div class="form-outline mb-4">
								<input type="mail" name="mail" class="form-control" required
									autofocus id="form1Example1" /> <label class="form-label"
									for="form1Example1">Email</label>
							</div>
							<!-- Guardar button -->
							<button type="submit" class="btn btn-success btn-block mb-2">Guardar</button>
						</form>
						<!-- <a class="btn btn-success btn-block me-3" href="../controller/ModificarUsuarioController.jsp?dni=<%=dni %>&nombre=">GUARDAR</a> -->
					</div>
				</div>
			</div>
		</div>

		<!-- Modal Direccion-->
		<div class="modal fade" id="DireccionModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-body">
						<form class="form-signin"
							action="../controller/ModificarUsuarioController.jsp?dni=<%=dni %>"
							method="POST">
							<!-- Email input -->
							<div class="form-outline mb-4">
								<input type="text" name="direccion" class="form-control"
									required autofocus id="form1Example1" /> <label
									class="form-label" for="form1Example1">Dirección</label>
							</div>
							<!-- Guardar button -->
							<button type="submit" class="btn btn-success btn-block mb-2">Guardar</button>
						</form>
						<!-- <a class="btn btn-success btn-block me-3" href="../controller/ModificarUsuarioController.jsp?dni=<%=dni %>&nombre=">GUARDAR</a> -->
					</div>
				</div>
			</div>
		</div>

		<!-- Modal Contraseña-->
		<div class="modal fade" id="ContraseñaModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-body">
						<form class="form-signin"
							action="../controller/ModificarUsuarioController.jsp?dni=<%=dni %>"
							method="POST">
							<!-- Email input -->
							<div class="form-outline mb-4">
								<input type="text" name="password" class="form-control" required
									autofocus id="form1Example1" /> <label class="form-label"
									for="form1Example1">Contraseña</label>
							</div>
							<!-- Guardar button -->
							<button type="submit" class="btn btn-success btn-block mb-2">Guardar</button>
						</form>
						<!-- <a class="btn btn-success btn-block me-3" href="../controller/ModificarUsuarioController.jsp?dni=<%=dni %>&nombre=">GUARDAR</a> -->
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