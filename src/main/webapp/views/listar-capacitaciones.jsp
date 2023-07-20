<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="h-100 translated-ltr">
<head>
<meta charset="ISO-8859-1">
<title>Listar capacitaciones</title>
<!-- Incluyendo estilos -->
<%@include file="css-proyecto.jsp"%>

</head>
<body>
	<!-- Incluyendo navbar menu -->
	<c:set var="navItem" value="Listar" />
	<!-- Menu activo -->
	<c:set var="navText" value="Capacitaciones" />
	<!-- Texto Crear -->
	<%@include file="navbar.jsp"%>
	<main class="flex-shrink-0">
		<!--  Vista para mostrar las capacitaciones -->
		<div class="container mt-4 overflow-auto">

			<section>
				<h1>Listado de Capacitaciones</h1>
				<c:choose>
					<c:when test="false">
						<div class="alert alert-danger" style="text-align: center"
							role="alert">
							No hay registros de Capacitaciones. <a href="CrearCapacitacion"
								class="alert-link">Ir a crear capacitaciones</a>
						</div>
					</c:when>
					<c:otherwise>
						<table class="table table-striped table-bordered">
							<thead class="table-dark">
								<tr>
									<th>ID</th>
									<th>Nombre</th>
									<th>Detalle</th>
									<th>Rut Cliente</th>
									<th>D�a</th>
									<th>Hora</th>
									<th>Lugar</th>
									<th>Duraci�n</th>
									<th># Asistentes</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="cap" items="${listaCapacitaciones}">
									<tr>
										<td>1</td>
										<td>Uso del extintor</td>
										<td>Asesor�a pr�ctica del uso correcto del extintor de incendios.</td>
										<td>77.548.321-0</td>
										<td>Lunes</td>
										<td>12:30</td>
										<td>Plaza Central</td>
										<td>90 minutos</td>
										<td>25</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</c:otherwise>
				</c:choose>
			</section>
		</div>
	</main>
	<%@ include file='footer.jsp'%>
	<!-- JavaScript Bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crointegrityssorigin="anonymous"></script>
</body>
</html>