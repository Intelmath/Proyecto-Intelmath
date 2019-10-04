package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ModeloVO.IncioSesionVO;
import ModeloVO.bibliotecaVO;
import ModeloDAO.bibliotecaDAO;
import java.io.IOException;
import java.sql.*;
import Util.ConexionBD;

public final class biblioteca_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");


    HttpSession miSession = (HttpSession) request.getSession();
    IncioSesionVO usuario = new IncioSesionVO();
    if (miSession.getAttribute("usuario") != null) {
        usuario = (IncioSesionVO) miSession.getAttribute("usuario");
    }



      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>Biblioteca</title>\n");
      out.write("        \n");
      out.write("        <script src=\"JS/jquery-3.4.1.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link href=\"bootstrap-4.3.1-dist/css/bootstrap-grid.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"bootstrap-4.3.1-dist/css/bootstrap-grid.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"bootstrap-4.3.1-dist/css/bootstrap-reboot.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"bootstrap-4.3.1-dist/css/bootstrap-reboot.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"bootstrap-4.3.1-dist/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"bootstrap-4.3.1-dist/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"bootstrap-4.3.1-dist/js/bootstrap.bundle.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"bootstrap-4.3.1-dist/js/bootstrap.bundle.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"bootstrap-4.3.1-dist/js/bootstrap.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"bootstrap-4.3.1-dist/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"bootstrap-4.3.1-dist/js/popper.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"JS/CerrarSesion.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link href=\"bootstrap-4.3.1-dist/Estilo.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("        <script src=\"JS/jquery.dataTables.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <form method=\"post\" action=\"Menu.jsp\">\n");
      out.write("           <nav class=\"navbar navbar-expand-lg navbar-light bg-light\" id=\"nav\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"Menu.jsp\"><img src=\"Imagenes/intelmath.png\" alt=\"\" width=\"150px\" /></a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("                    <ul class=\"navbar-nav mr-auto\">\n");
      out.write("                        <li class=\"nav-item active\">\n");
      out.write("                            <a class=\"nav-link\" href=\"Menu.jsp\">Inicio <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"biblioteca.jsp\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                Biblioteca\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <button class=\"dropdown-item\" name=\"biblioteca\">Menu-Biblioteca</button>\n");
      out.write("                                <button class=\"dropdown-item\" name=\"teoriaLogica\">Teoria logica</button>\n");
      out.write("                                <button class=\"dropdown-item\" name=\"operadores\">Operadores</button>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"Dinamicas.jsp\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                Dinamicas\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <button class=\"dropdown-item\" name=\"dinamicas\">Menu-Dinamicas</button>\n");
      out.write("                                <button class=\"dropdown-item\" name=\"logicos\">Juegos Logicos</button>\n");
      out.write("                                <button class=\"dropdown-item\" name=\"matematicos\">Juegos Matematicos</button>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        ");

                            if (usuario.getUsuario() == null) {
                        
      out.write("\n");
      out.write("                        <li class=\"nav-item\" >\n");
      out.write("                            <a class=\"nav-link\" href=\"InicioSesion1.jsp\">Iniciar Sesion</a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"RegistrarUsuario.jsp\">Registrarse</a>\n");
      out.write("                        </li>\n");
      out.write("                        ");
 } else {
      out.write("\n");
      out.write("                        <li class=\"nav-item dropdown \" >\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Configuracion</a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <a class=\"nav-link disabled\" href=\"#\" tabindex=\"-1\" aria-disabled=\"true\">");
      out.print( usuario.getUsuario());
      out.write('-');
      out.print(usuario.getId_rol() );
      out.write("</a>\n");
      out.write("                                <button class=\"dropdown-item btn btn-light\" name=\"Perfil\" role=\"button\">Perfil</button>\n");
      out.write("\n");
      out.write("                                 <a class=\"dropdown-item  btn btn-light\" href=\"#\" role=\"button\" data-toggle=\"modal\" data-target=\"#myModal\">Cerrar Sesion</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("            <div class=\"modal fade\" id=\"myModal\">\n");
      out.write("                <div class=\"modal-dialog modal-dialog-centered\">\n");
      out.write("                    <div class=\"modal-content\">\n");
      out.write("\n");
      out.write("                        <!-- Modal Header -->\n");
      out.write("                        <div class=\"modal-header\">\n");
      out.write("                            <h4 class=\"modal-title\">Cerrar sesion</h4>\n");
      out.write("                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <!-- Modal body -->\n");
      out.write("                        <div class=\"modal-body\">\n");
      out.write("                            ¿Estas seguro que quieres cerrar sesion?\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <!-- Modal footer -->\n");
      out.write("                        <div class=\"modal-footer\">\n");
      out.write("                            <button  name='Cerrar' class=\"btn btn-outline-success\">Si</button>\n");
      out.write("                            <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Cancelar</button>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("        <div id=\"biblioteca\">\n");
      out.write("            <center>\n");
      out.write("                <h1 class=\"bib\"> <img src=\"IMG/icons8-biblioteca-100.png\" alt=\"Logo biblioteca\"> Biblioteca</h1>\n");
      out.write("            </center>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-8\"></div>\n");
      out.write("            <div  class=\"col-sm-4\">\n");
      out.write("                <form class=\"form-inline\" >\n");
      out.write("\n");
      out.write("                    <input class=\"form-control mr-sm-2\" type=\"search\" id=\"InputBusqueda\" placeholder=\"Search\" aria-label=\"Search\">\n");
      out.write("                    <button class=\"btn btn-outline-success my-2 my-sm-0\" type=\"submit\">Search</button>\n");
      out.write("                </form>\n");
      out.write("            </div> </div>\n");
      out.write("        <div class=\"search\" id=\"search\">\n");
      out.write("            <table class=\"search-table\" id=\"searchTable\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><a href=\"#\">Inicio</a></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><a href=\"#\">Libros Matematicos</a></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><a href=\"#\">Libros Logicos</a></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><a href=\"#\">Manuales</a></td>\n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-4\"></div>\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                <h2 style=\"text-align: center\">Resultados</h2>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-4\"></div>\n");
      out.write("\n");
      out.write("            ");

                bibliotecaVO bibVO = new bibliotecaVO();
                bibliotecaDAO bibDAO = new bibliotecaDAO(bibVO);
                ConexionBD con = new ConexionBD();
                con.ObtenerConexion();
                String sql = "select * from tbl_biblioteca";
                Statement st = con.conexion.createStatement();
                ResultSet rs = st.executeQuery(sql);

            
      out.write("\n");
      out.write("            \n");
      out.write("            <div class=\"col-md-12\">\n");
      out.write("                <table  class=\"table  table-bordered thead-dark\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr class=\"thead-dark\">\n");
      out.write("                            <th>#</th>\n");
      out.write("                            <th>Título</th>\n");
      out.write("                            <th>Descripción</th>\n");
      out.write("                            <th>Género</th>\n");
      out.write("                            <th>PDF</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("\n");
      out.write("                    ");
 while (rs.next()) {
                    
      out.write("\n");
      out.write("                    <tbody class=\"thead-dark\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
      out.print(rs.getInt("id_biblioteca"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString("titulo"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString("descripcion"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString("tipo"));
      out.write("</td>\n");
      out.write("                            <td>\n");
      out.write("                                <a href=\"pdf\"><button></button></a></td>\n");
      out.write("                        </tr>  \n");
      out.write("                    </tbody>\n");
      out.write("\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("            <div class=\"col-md-4\"></div>\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                <h2 style=\"text-align: center\">Temas</h2>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-4\"></div>\n");
      out.write("       \n");
      out.write("      \n");
      out.write("            <a href=\"teoriaLogica.jsp\"><button><img src=\"IMG/icons8-brain-100.png\" alt=\"Cerebro Logo\" width=\"120px\" height=\"120px\" style=\"background-color: #145374\"></button></a>\n");
      out.write("            <a href=\"operadores.jsp\"><button><img src=\"IMG/icons8-matemáticas-100.png\" alt=\"Cerebro Logo\" width=\"120px\" height=\"120px\" style=\"background-color: #145374\"></button></a>\n");
      out.write("            <br> \n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>Teoría Lógica</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <label>Operadores</label>\n");
      out.write("            <br><br>\n");
      out.write("        </div\n");
      out.write("        <br><br><br><br><br><br>\n");
      out.write("        <div class=\"admin\">\n");
      out.write("            <form action=\"opAdmin.jsp\" method=\"post\">\n");
      out.write("                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"image\" src=\"IMG/icons8-administrador-del-hombre-100.png\">\n");
      out.write("            </form>\n");
      out.write("            <br>\n");
      out.write("            <label>Opciónes Administrador</label>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"JS/buscador.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
