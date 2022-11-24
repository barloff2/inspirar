
<%@page import="co.com.inspirar.modelo.Usuario"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Crear usuario</title>
<!-- Main Header and Footer -->
<script type=module src=main.js></script>

<!-- Bootstrap only -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<!-- Bootstrap icons -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>

</head>

<body>
	<!-- Javascript Header-->
	<mn-header></mn-header>
	<!--Card que contiene al formiulario-->
	<div class = col-md-13>
		<div class="col-md-5">
			<div class="card">
				<div class="card-header">Crear Usuario</div>
				<div class="card-body">
					<!--Mostrar Mensaje   
            <?php if(isset($mensaje)) {?>
            <div class="alert alert-danger" role="alert">
                <?php echo $mensaje; ?>
            </div>
            <?php } ?>-->

					<form method="POST" enctype="multipart/form-data"
						action="ServletUsuario">
						<!--Sección para el numero de identificación-->
						<div class="form-group">
							<label for="documento">Numero de documento</label>
							<!--En el value había un echo con el mismo dato: <?php echo $txtID; ?>-->
							<input type="text" required class="form-control" value=""
								name="documento" id="documento"
								placeholder="N�mero de documento">
						</div>
						<!--Sección para el Nombre-->
						<div class="form-group">
							<label for="nombres">Nombres</label> <input type="text" required
								class="form-control" value="" name="nombres" id="nombres"
								placeholder="Nombres Completos">
						</div>
						<div class="form-group">
							<label for="apellidos">Apellidos</label> <input type="text"
								required class="form-control" value="" name="apellidos"
								id="apellidos" placeholder="Apellidos Completos">
						</div>
						<!--Sección para el Contraseña-->
						<div class="form-group">
							<label for="password">Contrase�a</label> <input type="password"
								required class="form-control" value="" name="password"
								id="password" placeholder="Contrase�a">
						</div>
						<!--Sección para el Tel�fono Fijo-->
						<div class="form-group">
							<label for="telefonoFijo">Tel�fono Fijo</label> <input
								type="text" required class="form-control" value=""
								name="telefonoFijo" id="telefonoFijo"
								placeholder="Tel�fono Fijo">
						</div>
						<!--Sección para el Tel�fono Celular-->
						<div class="form-group">
							<label for="telefonoCelular">Tel�fono Celular</label> <input
								type="text" required class="form-control" value=""
								name="telefonoCelular" id="telefonoCelular"
								placeholder="Tel�fono Celular">
						</div>
						<!--Sección para la tarjeta profesional-->
						<div class="form-group">
							<label for="tarProf">Tarjeta Profesional</label> <input
								type="text" required class="form-control" value=""
								name="tarProf" id="tarProf"
								placeholder="N�mero Tarjeta Profesional">
						</div>
						<!--Sección para el ReTHUS-->
						<div class="form-group">
							<label for="reTHUS">ReTHUS</label> <input type="text" required
								class="form-control" value="" name="reTHUS" id="reTHUS"
								placeholder="ReTHUS">
						</div>
						<!--Sección para el correo-->
						<div class="form-group">
							<label for="email">Correo Electr�nico</label> <input type="email"
								required class="form-control" value="" name="email" id="email"
								placeholder="Correo Electr�nico">
						</div>

						<br>
						<!--botones-->
						<!-- <?php echo ($accion=="Seleccionar")?"disabled":""; ?-->
						<input type="submit" name="accion" value="Agregar" id="accion"
							class="btn btn-secondary">
						<!-- <?php echo ($accion=="Seleccionar")?"disabled":""; ?-->
						<input type="submit" name="accion" value="Modificar" id="accion"
							class="btn btn-secondary">
						<!-- <?php echo ($accion=="Seleccionar")?"disabled":""; ?-->
						<input type="submit" name="accion" value="Cancelar" id="accion"
							class="btn btn-secondary">
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Cedula</th>
						<th>Nombre</th>
						<th>Acciones</th>
					</tr>
				</thead>
				<!-- For Each para traer la tabla-->
				<jsp:useBean id="mitabla" scope="application"
					class="co.com.inspirar.modelo.Usuario" />
				<tbody>

					<c:forEach var="usuario" items="${usuarios}">
						<tr>
							<td><c:out value="${usuario.identificacion}" /></td>
							<td><c:out value="${usuario.nombres} ${usuario.apellidos}" /></td>


							<!--Botones para seleccionar y borrar  -->
							<td>
								<form method="POST" >
									<input type="hidden" name="txtID" id="txtID"
										value="${usuario.identificacion}"> <input
										type="submit" name="accion" value="Seleccionar"
										class=" btn-warning btn-sm"> <input type="submit"
										name="accion" value="Inactivar"
										class="btn-outline-danger btn-sm">

								</form>
							</td>
					</c:forEach>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<!-- JavaScript footer -->
	<mn-footer></mn-footer>
</body>

</html>