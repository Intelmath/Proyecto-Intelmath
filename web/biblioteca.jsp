<%-- 
    Document   : biblioteca
    Created on : 12/08/2019, 05:41:41 PM
    Author     : USER
--%>
<%@page import="ModeloVO.IncioSesionVO"%>
<%@page import="ModeloVO.bibliotecaVO"%>
<%@page import="ModeloDAO.bibliotecaDAO"%>
<%@page import="java.io.IOException"%>
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
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Biblioteca</title>
        
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
        <script src="JS/CerrarSesion.js" type="text/javascript"></script>
        <link href="bootstrap-4.3.1-dist/Estilo.css" rel="stylesheet" type="text/css"/>

        <script src="JS/jquery.dataTables.min.js"></script>
    </head>

    <body>
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

        <div id="biblioteca">
            <center>
                <h1 class="bib"> <img src="IMG/icons8-biblioteca-100.png" alt="Logo biblioteca"> Biblioteca</h1>
            </center>
        </div>

        <div class="row">
            <div class="col-sm-8"></div>
            <div  class="col-sm-4">
                <form class="form-inline" >

                    <input class="form-control mr-sm-2" type="search" id="InputBusqueda" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div> </div>
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

        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <h2 style="text-align: center">Resultados</h2>
            </div>
            <div class="col-md-4"></div>

            <%
                bibliotecaVO bibVO = new bibliotecaVO();
                bibliotecaDAO bibDAO = new bibliotecaDAO(bibVO);
                ConexionBD con = new ConexionBD();
                con.ObtenerConexion();
                String sql = "select * from tbl_biblioteca";
                Statement st = con.conexion.createStatement();
                ResultSet rs = st.executeQuery(sql);

            %>
            
            <div class="col-md-12">
                <table  class="table  table-bordered thead-dark">
                    <thead>
                        <tr class="thead-dark">
                            <th>#</th>
                            <th>Título</th>
                            <th>Descripción</th>
                            <th>Género</th>
                            <th>PDF</th>
                        </tr>
                    </thead>

                    <% while (rs.next()) {
                    %>
                    <tbody class="thead-dark">
                        <tr>
                            <td><%=rs.getInt("id_biblioteca")%></td>
                            <td><%=rs.getString("titulo")%></td>
                            <td><%=rs.getString("descripcion")%></td>
                            <td><%=rs.getString("tipo")%></td>
                            <td>
                                <a href="pdf"><button></button></a></td>
                        </tr>  
                    </tbody>

                    <%}%>

                </table>
            </div>
        </div>

        <br>
        
        
        <div class="row">
            <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <h2 style="text-align: center">Temas</h2>
            </div>
            <div class="col-md-4"></div>
       
      
            <a href="teoriaLogica.jsp"><button><img src="IMG/icons8-brain-100.png" alt="Cerebro Logo" width="120px" height="120px" style="background-color: #145374"></button></a>
            <a href="operadores.jsp"><button><img src="IMG/icons8-matemáticas-100.png" alt="Cerebro Logo" width="120px" height="120px" style="background-color: #145374"></button></a>
            <br> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>Teoría Lógica</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <label>Operadores</label>
            <br><br>
        </div
        <br><br><br><br><br><br>
        <div class="admin">
            <form action="opAdmin.jsp" method="post">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" src="IMG/icons8-administrador-del-hombre-100.png">
            </form>
            <br>
            <label>Opciónes Administrador</label>
        </div>
        <script src="JS/buscador.js"></script>
    </body>
</html>
