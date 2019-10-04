<%-- 
    Document   : cambioContraseña
    Created on : 23/09/2019, 07:29:13 PM
    Author     : agxel
--%>
<%@page import="ModeloVO.IncioSesionVO"%>
<%
    HttpSession miSession = (HttpSession) request.getSession();

    IncioSesionVO usuario = (IncioSesionVO) miSession.getAttribute("usuario");
    String password = usuario.getContrasena();
%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="JS/jquery-3.4.1.min.js" type="text/javascript"></script>
        <link href="bootstrap-4.3.1-dist/css/bootstrap-grid.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-4.3.1-dist/css/bootstrap-grid.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-4.3.1-dist/css/bootstrap-reboot.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-4.3.1-dist/css/bootstrap-reboot.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-4.3.1-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap-4.3.1-dist/js/bootstrap.bundle.js" type="text/javascript"></script>
        <script src="bootstrap-4.3.1-dist/js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <script src="bootstrap-4.3.1-dist/js/bootstrap.js" type="text/javascript"></script>
        <script src="bootstrap-4.3.1-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="bootstrap-4.3.1-dist/js/popper.min.js" type="text/javascript"></script>
        <link href="bootstrap-4.3.1-dist/Estilo.css" rel="stylesheet" type="text/css"/>
        <script src="JS/CerrarSesion.js" type="text/javascript"></script>

        <title>Cambiar Contraseña</title>
    </head>
    <body>

        <form method="post" action="cambioContrasena.jsp">
            <nav class="navbar navbar-expand-lg navbar-light bg-light" id="nav">
                <a class="navbar-brand" href="Menu.jsp"><img src="Imagenes/intelmath.png" alt="" width="150px" /></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="Menu.jsp">Inicio <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="biblioteca.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Biblioteca
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <button class="dropdown-item" name="biblioteca">Menu-Biblioteca</button>
                                <button class="dropdown-item" name="teoriaLogica">Teoria logica</button>
                                <button class="dropdown-item" name="operadores">Operadores</button>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="Dinamicas.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Dinamicas
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <button class="dropdown-item" name="dinamicas">Menu-Dinamicas</button>
                                <button class="dropdown-item" name="logicos">Juegos Logicos</button>
                                <button class="dropdown-item" name="matematicos">Juegos Matematicos</button>
                            </div>
                        </li>
                        <%
                            if (usuario.getUsuario() == null) {
                        %>
                        <li class="nav-item" >
                            <a class="nav-link" href="InicioSesion1.jsp">Iniciar Sesion</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="RegistrarUsuario.jsp">Registrarse</a>
                        </li>
                        <% } else {%>
                        <li class="nav-item dropdown " >
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Configuracion</a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"><%= usuario.getUsuario()%>-<%=usuario.getId_rol() %></a>
                                <button class="dropdown-item btn btn-light" name="Perfil" role="button">Perfil</button>

                                 <a class="dropdown-item  btn btn-light" href="#" role="button" data-toggle="modal" data-target="#myModal">Cerrar Sesion</a>
                            </div>
                        </li>
                        <%}%>
                    </ul>
                </div>
            </nav>
            <div class="modal fade" id="myModal">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Cerrar sesion</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            ¿Estas seguro que quieres cerrar sesion?
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button  name='Cerrar' class="btn btn-outline-success">Si</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        </div>

                    </div>
                </div>
            </div>
        </form>

        <div id="perfil">
            <h1>Perfil</h1>

            <form action="Perfil" method="post">
                <center>
                    <label>Ingrese su actual contraseña</label><br>
                    <input type="password" name="pass" id="pass" class="form-control" >
                    <input type="password" name="pass0" id="pass0" class="form-control" value="<%= password%>">
                    <label>Ingrese la nueva contraseña que desea</label>
                    <input type="password" name="contra" id="contra" class="form-control">
                    <label>Digitela nuevamente</label>
                    <input type="password" name="contra2" id="contra2" class="form-control" >
                    <div class="alert alert-success" role="alert" id="alerta1">

                    </div>
                    <div class="alert alert-danger" role="alert" id="alerta2">


                    </div>
                    <input type="hidden" name="opcion" value="2">
                    <input type="submit" name="registrar" value="Guardar cambios" class="btn btn btn-success">
                </center>
            </form>

    </body>
    <script>

        $(document).ready(function () {
            //variables

            var pass0 = $('[name=pass0]');
            var pass = $('[name=pass]');
            var pass1 = $('[name=contra]');
            var pass2 = $('[name=contra2]');
            var confirmacion = "Las contraseñas si coinciden";
            var longitud = "La contraseña debe estar formada entre 6-10 carácteres (ambos inclusive)";
            var negacion = "No coinciden las contraseñas";
            var vacio = "La contraseña no puede estar vacía";
            //oculto por defecto el elemento span
            var span = $('<span></span>').insertAfter(pass2);
            span.hide();
            //función que comprueba las dos contraseñas
            function coincidePassword() {
                var valor1 = pass1.val();
                var valor2 = pass2.val();
                //muestro el span
                span.show().removeClass();
                //condiciones dentro de la función
                if (valor1 != valor2) {
                    span.text(negacion).addClass('alert alert-danger');
                }
                if (valor1.length == 0 || valor1 == "") {
                    span.text(vacio).addClass('alert alert-danger');
                }
                if (valor1.length < 6 || valor1.length > 10) {
                    span.text(longitud).addClass('alert alert-danger');
                }
                if (valor1.length != 0 && valor1 == valor2) {
                    span.text(confirmacion).removeClass("alert alert-danger").addClass('alert alert-success');
                }
            }
            function primeraPassword() {
                var valor1 = pass.val();
                var valor2 = pass0.val();
                span.show().removeClass();
                if (valor1 != valor2) {
                    span.text(negacion).addClass('alert alert-danger');
                }
                if (valor1.length == 0 || valor1 == "") {
                    span.text(vacio).addClass('alert alert-danger');
                }
                if (valor1.length < 6 || valor1.length > 10) {
                    span.text(longitud).addClass('alert alert-danger');
                }
                if (valor1.length != 0 && valor1 == valor2) {
                    span.text(confirmacion).removeClass("alert alert-danger").addClass('alert alert-success');
                }
                if (valor1.length != 0 && valor1 == valor2) {
                    span.text(confirmacion).removeClass("alert alert-danger").addClass('alert alert-success');
                }
            }
            //ejecuto la función al soltar la tecla
            pass.keyup(function () {
                primeraPassword();
            });
            pass2.keyup(function () {
                coincidePassword();
            });
        });



        $(document).ready(function () {
            $('#pass0').hide(0);
            $("#alerta1").hide(0);
            $("#alerta2").hide(0);
            $('[data-toggle="popover"]').popover();
        });

        $('.dropdown-toggle').dropdown();
    </script>
    <%
        if (request.getParameter("Perfil") != null) {

            response.sendRedirect("Perfil.jsp");
        }
        if (request.getParameter("Cerrar") != null) {

            miSession.invalidate();
            response.sendRedirect("Menu.jsp");
        }
        if (request.getParameter("editar") != null) {
            response.sendRedirect("modificarPerfil.jsp");
        }
        if (request.getParameter("contrasena") != null) {
            response.sendRedirect("cambioContrasena.jsp");
        }
        if (request.getParameter("biblioteca") != null) {
            response.sendRedirect("biblioteca.jsp");

        }
        if (request.getParameter("teoriaLogica") != null) {
            response.sendRedirect("teoriaLogica.jsp");
        }
        if (request.getParameter("operadores") != null) {
            response.sendRedirect("operadores.jsp");
        }
        if (request.getParameter("dinamicas") != null) {
            response.sendRedirect("Dinamicas.jsp");
        }
        if (request.getParameter("logicos") != null) {
            response.sendRedirect("logicos.jsp");
        }
        if (request.getParameter("matematicos") != null) {
            response.sendRedirect("matematicos.jsp");
        }
    %>
</html>
