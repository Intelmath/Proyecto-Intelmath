package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Controlador.InicioSesionControlador;
import com.sun.xml.rpc.processor.modeler.j2ee.xml.string;
import ModeloVO.IncioSesionVO;
import java.util.ArrayList;
import ModeloDAO.TriviaDAO;
import ModeloVO.TriviaVO;

public final class Menu_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
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
      out.write("        <link href=\"bootstrap-4.3.1-dist/Estilo.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"JS/CerrarSesion.js\" type=\"text/javascript\"></script>\n");
      out.write("        <title>intelmath-Menu</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(document).ready(function () {\n");
      out.write("\n");
      out.write("                $(\"#nav\").hide(0);\n");
      out.write("                $(\".loader\").hide(5000);\n");
      out.write("                $(\"#nav\").show(8000);\n");
      out.write("\n");
      out.write("            });\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("        <div class=\"loader\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            <img src=\"Imagenes/intelmath-eslogan.png\" alt=\"\"/>\n");
      out.write("            ");
 TriviaVO triVO = new TriviaVO();
                TriviaDAO triDAO = new TriviaDAO();

                ArrayList<TriviaVO> trivia = triDAO.listar();
                for (int i = 0; i < trivia.size(); i++) {
                    triVO = trivia.get(i);
      out.write("\n");
      out.write("            <h1>");
      out.print(triVO.getContenido());
      out.write("</h1>\n");
      out.write("            ");
 }
      out.write("\n");
      out.write("            <div class=\"spinner-border text-dark\" role=\"status\">\n");
      out.write("                <span class=\"sr-only\">Loading...</span>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $('[data-toggle=\"popover\"]').popover();\n");
      out.write("            });\n");
      out.write("\n");
      out.write("            $('.dropdown-toggle').dropdown();\n");
      out.write("        </script>\n");
      out.write("        <form method=\"post\" action=\"Menu.jsp\">\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light bg-light\" id=\"nav\">\n");
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
      out.write("\n");
      out.write("    </body>\n");
      out.write("    ");

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
    
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
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
