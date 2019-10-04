<%-- 
    Document   : trivia
    Created on : 3/10/2019, 11:35:30 AM
    Author     : agxel
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.TriviaDAO"%>
<%@page import="ModeloVO.TriviaVO"%>
<%@page import="ModeloVO.IncioSesionVO"%>
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
        <title>intelmath-Trivia</title>
    </head>
    <body>
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


                        <%                            if (usuario.getUsuario() == null) {
                        %>

                        <li class="nav-item" >
                            <a class="nav-link" href="InicioSesion1.jsp">Iniciar Sesion</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="RegistrarUsuario.jsp">Registrarse</a>
                        </li>
                        <% } else {%>
                        <% if (usuario.getId_rol().equals("Administrador")) {%>
                        <li class="nav-item">
                            <a class="nav-link" href="trivia.jsp" role="button">Trivia</a>
                        </li>
                        <%}%>
                        <li class="nav-item dropdown " >
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Configuracion</a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"><%= usuario.getUsuario()%>-<%=usuario.getId_rol()%></a>
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
    <center> <h1>Trivias</h1></center>


    <div class="row">
        <div class="col-sm-8"></div>
        <div  class="col-sm-4">
            <form class="form-inline" action="Perfil" method="POST" >
                <input class="form-control mr-sm-2" type="search" id="usuario" name="usuario" placeholder="Usuario" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Cambiar Rol</button>
                <input type="hidden" name="opcion" value="3">
            </form>
        </div> 
    </div>
    <% if (request.getAttribute("mensajeExito") != null) { %>
    <div class="alert alert-success ">
        ${mensajeExito}
    </div>
    <% }%>

    <div class="row">
        <div class="col-md-12"></div>


        <div class="col-md-12">
            <table  class="table  table-bordered thead-dark">
                <thead>
                    <tr class="thead-dark">
                        <th class="col-sm-2">Numero de identificaion</th>
                        <th class="col-sm-8">Trivia</th>
                        <th class="col-sm-1">Editar</th>
                        <th class="col-sm-1" >Eliminar</th>

                    </tr>
                </thead>


                <tbody class="thead-dark">
                <form method="post" action="trivia">
                    <%  TriviaVO triVO = new TriviaVO();
                        TriviaDAO triDAO = new TriviaDAO();
                        ArrayList<TriviaVO> listar = triDAO.tabla();
                        for (int i = 0; i < listar.size(); i++) {
                            triVO = listar.get(i);
                            miSession.setAttribute("trivia",listar.get(i));
                    %>


                    <tr>
                        <td><%= triVO.getIdTrivia()%></td>
                        <td><%= triVO.getContenido()%></td>
                        <td><button class="btn btn-light" name="opcion" value="editar" >Editar</button></td>
                        <td><button class="btn btn-light" name="opcion" value="eliminar">Eliminar</button></td>

                    </tr>  
                    <%}
                        
                    %>
                </form>


                </tbody>



            </table>
        </div>
    </div>
</body>
</html>
