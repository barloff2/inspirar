<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
        <!DOCTYPE html>
        <html lang="">

        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <title>Creación Usuarios</title>
            <!-- Main Header and Footer -->
            <script type=module src=main.js></script>

            <!-- Bootstrap only -->
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
                integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
                crossorigin="anonymous">
            <!-- Bootstrap icons -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
                crossorigin="anonymous"></script>

        </head>

        <body>
            <!-- Javascript Header-->
            <mn-header></mn-header>
            <!--Card que contiene al formiulario-->
            <!-- Body content  -->
            <div class="row">
                <div class="col-sm-6">
                    <div class="card">
                        <div class="card-header">
                            Crear Usuarios
                        </div>
                        <div class="card-body">
                            <form method="POST" enctype="multipart/form-data">
                                <!--Sección para el numero de identificación-->
                                <div class="form-group">
                                    <label for="txtID">Numero de documento</label>
                                    <!--En el value había un echo con el mismo dato: <?php echo $txtID; ?>-->
                                    <input type="text" required class="form-control" value="" name="txtID" id="txtID"
                                        placeholder="Numero de documento">
                                </div>
                                <!--Sección para el Nombre-->
                                <div class="form-group">
                                    <label for="txtNombre">Nombre</label>
                                    <input type="text" required class="form-control" value="" name="txtNombre"
                                        id="txtNombre" placeholder="Nombre Completo">
                                </div>
                                <!--Sección para el Contraseña-->
                                <div class="form-group">
                                    <label for="txtContrasena">Contraseña</label>
                                    <input type="password" required class="form-control" value="" name="txtContrasena"
                                        id="txtContrasena" placeholder="Contraseña">
                                </div>
                                <!--Sección para el Teléfono-->
                                <div class="form-group">
                                    <label for="txtTelefono">Teléfono</label>
                                    <input type="text" required class="form-control" value="" name="txtTelefono"
                                        id="txtTelefono" placeholder="Teléfono">
                                </div>
                                <!--Sección para la tarjeta profesional-->
                                <div class="form-group">
                                    <label for="txtTarProf">Tarjeta Profesional</label>
                                    <input type="text" required class="form-control" value="" name="txtTarProf"
                                        id="txtTarProf" placeholder="Número Tarjeta Profesional">
                                </div>
                                <!--Sección para el ReTHUS-->
                                <div class="form-group">
                                    <label for="txtReTHUS">ReTHUS</label>
                                    <input type="text" required class="form-control" value="" name="txtReTHUS"
                                        id="txtReTHUS" placeholder="ReTHUS">
                                </div>
                                <!--Sección para el correo-->
                                <div class="form-group">
                                    <label for="txtEmail">Correo Electrónico</label>
                                    <input type="email" required class="form-control" value="" name="txtEmail"
                                        id="txtEmail" placeholder="Correo Electrónico">
                                </div>
                                <br>
                                <!--botones-->
                                <!-- <?php echo ($accion=="Seleccionar")?"disabled":""; ?-->
                                <button type="submit" name="accion" value="Agregar" class="btn btn-outline-secondary">
                                    Agregar</button>
                                <!-- <?php echo ($accion=="Seleccionar")?"disabled":""; ?-->
                                <button type="submit" name="accion" value="Modificar"
                                    class="btn btn-outline-secondary">Modificar</button>
                                <!-- <?php echo ($accion=="Seleccionar")?"disabled":""; ?-->
                                <button type="submit" name="accion" value="Cancelar"
                                    class="btn btn-outline-secondary">Cancelar</button>
                            </form>
                        </div>
                    </div>
                </div>
                <!--New Div for Table-->
                <div class="col-sm-6">
                    <div class="card">
                        <div class="card-header">
                            Usuarios
                        </div>
                        <div class="card-body">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Cedula</th>
                                        <th>Nombre</th>
                                        <th>Acciones</th>
                                    </tr>
                                </thead>
                                <!--For Each para traer la tabla-->
                                <jsp:useBean id="mitabla" scope="application" class="modelo.Magic" />
                                <tbody>
                                    <tr>
                                        <c:forEach items="${mitabla.}" begin="0" end="${mitabla..}" var="usuario">
                                            <td>
                                                <c:out value="${usuario.identificacion}" />
                                            </td>
                                            <td>
                                                <c:out value="${usuario.nombres}" />
                                            </td>
                                        </c:forEach>

                                        <!--Botones para seleccionar y borrar-->
                                        <td>
                                            <form method="POST">
                                                <input type="hidden" name="txtID" id="txtID"
                                                    value="${usuario.identificacion}">
                                                <input type="submit" name="accion" value="Seleccionar"
                                                    class=" btn btn-outline-warning btn-sm">
                                                <input type="submit" name="accion" value="Inactivar"
                                                    class="btn btn-outline-danger btn-sm">

                                            </form>
                                        </td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- JavaScript footer -->
            <mn-footer></mn-footer>
        </body>

        </html>