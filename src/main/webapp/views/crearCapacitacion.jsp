<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="h-100 translated-ltr">
<head>
<meta charset="ISO-8859-1">
<title>Crear Capacitacion</title>
<!-- CSS Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

<!-- CSS del proyecto -->
<link rel="stylesheet" type="text/css" href="/Prevent_Asesorias/css/estilos.css">
</head>
<body class="d-flex flex-column h-100">
	<!-- Incluyendo navbar menu -->
	<!-- Incluyendo navbar menu -->
	<c:set var="navItem" value="Crear" />
	<!-- Menu activo -->
	<c:set var="navText" value="Capacitacion" />
	<!-- Texto Crear -->
	<%@include file="navbar.jsp"%>

	<main class="flex-shrink-0">
		<div
			class="container d-flex justify-content-center align-items-center mt-4">
			<!-- Formulario para crear capacitaci�n -->
			<div class="card" style="width: 50%;">
				<div class="card-header bg-dark text-white">
					<h2 class="card-title d-flex justify-content-center">Crear
						Capacitaci�n</h2>
				</div>
				<div class="card-body">
					<form action="CrearCapacitacion" class="row" method="post">
						<div class="col-md-6 mb-2">
							<label for="nombre" class="form-label">Nombre
								Capacitaci�n</label> <input type="text" class="form-control"
								name="nombre" required>
						</div>
						<div class="col-md-6 mb-3">
							<label for="rut" class="form-label">RUT Cliente</label> <input
								type="text" class="form-control" name="rutCliente" required>
						</div>
						<div class="col-md-4 mb-3">
							<label for="dia" class="form-label">D�a</label> <select
								class="form-select" name="dia" required>
								<option value="" disabled selected>Seleccione un d�a</option>
								<option value="Lunes">Lunes</option>
								<option value="Martes">Martes</option>
								<option value="Miercoles">Mi�rcoles</option>
								<option value="Jueves">Jueves</option>
								<option value="Viernes">Viernes</option>
								<option value="Sabado">S�bado</option>
								<option value="Domingo">Domingo</option>
							</select>
						</div>
						<div class="col-md-4 mb-3">
							<label for="hora" class="form-label">Hora</label> <input
								type="text" class="form-control" name="hora" required>
						</div>
						<div class="col-md-4 mb-3">
							<label for="cantidadAsistentes" class="form-label">Asistentes</label>
							<input type="number" class="form-control"
								name="cantidadAsistentes" required>
						</div>
						<div class="col-md-6 mb-3">
							<label for="lugar" class="form-label">Lugar</label> <input
								type="text" class="form-control" name="lugar" required>
						</div>
						<div class="col-md-6 mb-3">
							<label for="duracion" class="form-label">Duraci�n</label> <input
								type="text" class="form-control" name="duracion" required>
						</div>
						<div class="col-md-12 m3-2">
							<label for="detalle" class="form-label">Detalle</label>
							<textarea class="form-control" id="detalle" name="detalle"
								rows="5" required></textarea>
						</div>
						<div class="col-md-12">
							<button type="submit" class="btn btn-secondary w-100 mt-4">Crear</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</main>

	<!-- Script Validaciones del formulario -->
	<script
				src="/Prevent_Asesorias/js/formularioCapacitacion.js"></script>


	<!-- JavaScript Bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
	<!-- Footer -->
</body>

</html>