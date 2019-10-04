<%-- 
    Document   : RegistrarUsuario
    Created on : 30/08/2019, 06:50:21 PM
    Author     : agxel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="bootstrap-4.3.1-dist/css/bootstrap-grid.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-4.3.1-dist/css/bootstrap-grid.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-4.3.1-dist/css/bootstrap-reboot.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-4.3.1-dist/css/bootstrap-reboot.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-4.3.1-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="JS/jquery-3.4.1.min.js" type="text/javascript"></script>
        
       
       
        <link href="bootstrap-4.3.1-dist/Estilo.css" rel="stylesheet" type="text/css"/>
        <title>intelmath-registrar usuario</title>
    </head>
    <body>
       <div  id="inicio">
        
           <form method="post" action="InicioSesion" >
            <h2>¿No tienes cuenta? Registrate</h2>
            <div id="text">
                <input type="text" name="usuario" placeholder="Usuario"  class="form-control" title="¡Advertencia!"  data-toggle="popover" data-trigger="focus" data-content="El usuario debe ser unico y original"><br>
            <input type="password" name="contra" placeholder="Contraseña" class="form-control"><br>
            <input type="text" name="nombre" placeholder="Nombre" class="form-control"><br>
            <input type="text" name="apellido" placeholder="Apellido" class="form-control"><br>
            <input type="email" name="correo" placeholder="Correo electronico" class="form-control"><br>
            <input type="tel" name="telefono" placeholder="Telefono" class="form-control"><br>
            <input type="hidden" name="opcion" value="1">
            <input type="submit" name="registrar" value="Registrar" class="btn btn-primary btn-lg">
            </div>
            

            <div style="color: red ">
                <% if (request.getAttribute("mensajeError") != null) { %>
                <div class="alert alert-danger ">
                    ${mensajeError}
                </div>
                <% } else {%>
            </div>
            <div style="color:darkgreen">
                <div class="alert alert-success ">
                   ${mensajeExitoso}
                </div>
                
                <% }%>
        </form>
    </div>
</div>
    </body>
    <script>
$(document).ready(function(){
  $('[data-toggle="popover"]').popover();   
});
</script>
</html>
