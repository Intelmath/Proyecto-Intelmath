<%-- 
    Document   : Menu
    Created on : 27/08/2019, 02:28:10 PM
    Author     : agxel
--%>

<%@page import="Controlador.InicioSesionControlador"%>
<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>
<%@page import="ModeloVO.IncioSesionVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.TriviaDAO"%>
<%@page import="ModeloVO.TriviaVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    HttpSession miSession = (HttpSession) request.getSession();
    IncioSesionVO usuario = new IncioSesionVO();
    if (miSession.getAttribute("usuario") != null) {
        usuario = (IncioSesionVO) miSession.getAttribute("usuario");
    }


%>
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
        <title>intelmath-Menu</title>
    </head>
    <body>
        <script type="text/javascript">
            $(document).ready(function () {

                $("#nav").hide(0);
                $(".loader").hide(5000);
                $("#nav").show(8000);

            });

        </script>
        <div class="loader">


            <img src="Imagenes/intelmath-eslogan.png" alt=""/>
            <% TriviaVO triVO = new TriviaVO();
                TriviaDAO triDAO = new TriviaDAO();

                ArrayList<TriviaVO> trivia = triDAO.listar();
                for (int i = 0; i < trivia.size(); i++) {
                    triVO = trivia.get(i);%>
            <h1><%=triVO.getContenido()%></h1>
            <% }%>
            <div class="spinner-border text-dark" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>

        <script>
            $(document).ready(function () {
                $('[data-toggle="popover"]').popover();
            });

            $('.dropdown-toggle').dropdown();
        </script>
        <form method="post" action="Menu.jsp">
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
                        <% if(usuario.getId_rol().equals("Administrador")){%>
                        <li class="nav-item">
                            <a class="nav-link" href="trivia.jsp" role="button">Trivia</a>
                        </li>
                        <%}%>
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


    </body>
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

