<%-- 
    Document   : newjsp
    Created on : 4/09/2019, 12:13:04 AM
    Author     : agxel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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

        <title>intelmath-Inicio de sesion</title>
        <title>JSP Page</title>
    </head>
    <body>
        <div  id="inicio">

            <form method="post" action="InicioSesion">
                <img src="Imagenes/Logo-InicioSesion.png" alt=""/>
                <h2>Inicio de sesión</h2>
                <input type="text" name="usuario" placeholder="Usuario" class="form-control" ><br>
                <input type="password" name="contra" placeholder="Contraseña" class="form-control"><br>
                <input type="hidden" name="opcion" value="2" class="form-control">
                <button class="btn btn-primary btn-lg">Ingresar</button><br><br>
                <a href="">¿Olvidaste tu contraseña?</a>
            </form> 
            <div style="color: red ">
                <% if (request.getAttribute("mensajeError") != null) { %>
                ${mensajeError}
                <% }%>
            </div>



        </div>
    </body>
</html>
