<%-- 
    Document   : regBiblioteca
    Created on : 14/08/2019, 09:10:44 AM
    Author     : USER
--%>

<%@page import="ModeloVO.IncioSesionVO"%>
<%@page import="com.sun.javafx.fxml.builder.URLBuilder"%>
<%@page import="ModeloDAO.bibliotecaDAO"%>
<%@page import="java.sql.Statement"%>
<%@page import="Util.ConexionBD"%>
<%@page import="java.sql.*"%>
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
        <title>Registrar Biblioteca</title>
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
        <link rel="stylesheet" href="estilos.css" type="text/css">
        <link href="bootstrap-4.3.1-dist/Estilo.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="JS/jquery-3.4.1.min.js"></script>
        <script src="JS/jquery.dataTables.min.js"></script>
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
        <form action="opAdmin.jsp">
            <input type="image" src="IMG/icons8-retroceso-100.png">
        </form>
        <div class="container">
            <h1>Registrar Biblioteca</h1>
            <br>
            <form action="bibliotecaCont" method="post">
                <div class="form-group">
                    <label>Titulo: </label>
                    <input type="text" name="txtTitulo" class="form-control" required placeholder="Ingrese el titulo del libro"> 
                </div>
                <div class="form-group">
                    <label>Descripción: </label>
                    <input type="text" name="txtDescripcion" class="form-control" required placeholder="Ingrese la descripción del libro">
                </div>
                <div class="form-group">
                    <label>Tipo: </label>
                    <select name="txtTipo" required class="form-control" placeholder="Ingrese el tipo del libro">
                        <%
                            ConexionBD con = new ConexionBD();
                            con.ObtenerConexion();
                            String sql = "select nombre from tbl_tipo";
                            Statement st = con.conexion.createStatement();
                            ResultSet rs = st.executeQuery(sql);

                            try {
                                while (rs.next()) {
                        %>    
                        <option value="<%=rs.getString("nombre")%>">
                            <%=rs.getString("nombre")%>
                        </option>
                        <%
                                }

                            } catch (Exception e) {
                                out.print("Error enviando los datos" + e.toString());
                            }
                        %>
                    </select>
                </div>
                <div class="form-group">
                    <label>Identificación del Usuario: </label>
                    <select name="txtUsuario" required class="form-control" placeholder="Ingrese la identificación del usuario">
                        <%
                            con.ObtenerConexion();
                            String sql1 = "select id_usuario from tbl_usuario";
                            Statement st1 = con.conexion.createStatement();
                            ResultSet rs1 = st1.executeQuery(sql1);

                            try {
                                while (rs1.next()) {
                        %>    
                        <option value="<%=rs1.getString("id_usuario")%>">
                            <%=rs1.getString("id_usuario")%>
                        </option>
                        <%
                                }

                            } catch (Exception e) {
                                out.print("Error enviando los datos" + e.toString());
                            }
                        %>  
                    </select>
                </div>
                <div class="form-group">
                    <label>Identificación del Tipo: </label>
                    <select name="txtId_Tipo" required class="form-control" placeholder="Ingrese la identificación del tipo de libro">
                        <%
                            con.ObtenerConexion();
                            String sql2 = "select id_tipo from tbl_tipo";
                            Statement st2 = con.conexion.createStatement();
                            ResultSet rs2 = st2.executeQuery(sql2);

                            try {
                                while (rs2.next()) {
                        %>    
                        <option value="<%=rs2.getString("id_tipo")%>">
                            <%=rs2.getString("id_tipo")%>
                        </option>
                        <%
                                }

                            } catch (Exception e) {
                                out.print("Error enviando los datos" + e.toString());
                            }
                        %>  
                    </select>
                </div>
                <br>
                <div>
                    <input type="file" name="fichero" value="" class="btn" accept=".pdf">  
                </div>
                <br>    
                <div class="form-group">
                    <button class="btn btn-primary btn-lg">Registrar</button>
                    <input type="hidden" name="opcion" value="1">
                </div>
                <div style="color:red ">
                    <% if (request.getAttribute("mensajeError") != null) { %>
                    ${mensajeError}
                    <% } else {%>
                </div>
                <div style="color:darkgreen">
                    ${mensajeExitoso}
                    <% }%>
            </form>
        </div>
    </div>
</body>
</html>
