<%-- 
    Document   : teoriaLogica
    Created on : 13/08/2019, 08:57:06 AM
    Author     : USER
--%>
<%@page import="ModeloVO.IncioSesionVO"%>
<%@page import="java.sql.*"%>
<%@page import="Util.ConexionBD"%>
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
        <meta charset="UTF-8">
        <title>Teoria Logica</title>
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
        <link rel="stylesheet" href="estilos.css" type="text/css">
        <link href="bootstrap-4.3.1-dist/Estilo.css" rel="stylesheet" type="text/css"/>
        <script src="JS/jquery-3.4.1.min.js"></script>
        <script src="JS/jquery.dataTables.min.js"></script>
        <script src="JS/CerrarSesion.js" type="text/javascript"></script>
    </head>
    <body class="bk">
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
        <header>
            <form action="biblioteca.jsp">
            <input type="image" src="IMG/icons8-retroceso-100.png">
            </form>
            <h1 class="bib"> <img src="IMG/icons8-cerebro-100.png" alt="Logo Cerebro">&nbsp &nbsp Teoría Lógica</h1>
        </header>

        <br>
        <div class="navegacion">
            <input type="search" placeholder="Buscar..." id="InputBusqueda" size="30px" maxlength="30">
        </div>
        <br>
        <div class="search" id="search">
            <table class="search-table" id="searchTable">
                <thead>
                    <tr>
                        <td></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><a href="#">Inicio</a></td>
                    </tr>
                    <tr>
                        <td><a href="#">Libros Matematicos</a></td>
                    </tr>
                    <tr>
                        <td><a href="#">Libros Logicos</a></td>
                    </tr>
                    <tr>
                        <td><a href="#">Manuales</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <br><br>
        <div class="lbd">
            <label>Resultados</label>
        </div>
        <%
                    ConexionBD con = new ConexionBD();
                    con.ObtenerConexion();
                    String sql="select * from tbl_biblioteca where tipo= 'Libro Logico';";
                    Statement st= con.conexion.createStatement();
                    ResultSet rs=st.executeQuery(sql);
                    
        %>
        <div class="result">
            <table border="" class="tbr">
                <tr>
                    <td>#</td>
                    <td>Título</td>
                    <td>Descripción</td>
                    <td>Género</td>
                    <td>PDF</td>
                </tr>
                <%
                    while (rs.next()) {                            
                %>
                <tr>
                    <th><%=rs.getInt("id_biblioteca")%></th>
                    <th><%=rs.getString("titulo")%></th>
                    <th><%=rs.getString("descripcion")%></th>
                    <th><%=rs.getString("tipo")%></th>
                    <th><button></button></th>
                </tr>
                <%}%>
            </table>
        </div>
        <script src="JS/buscador.js"></script>
</html>
