package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ModeloVO.IncioSesionVO;

public final class Perfil_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    HttpSession miSession = (HttpSession) request.getSession();
    
    String usu = request.getParameter("usuario");
    IncioSesionVO usuario = new IncioSesionVO(usu); 

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("         <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
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
      out.write("        <title>intelmath-Perfil</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <script>\n");
      out.write("            $('.dropdown-toggle').dropdown();\n");
      out.write("        </script>\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light\" id=\"nav\">\n");
      out.write("            <a class=\"navbar-brand\" href=\"Menu.jsp\"><img src=\"Imagenes/intelmath.png\" alt=\"\" width=\"150px\" /></a>\n");
      out.write("\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("                <ul class=\"navbar-nav mr-auto\">\n");
      out.write("                    <li class=\"nav-item active\">\n");
      out.write("                        <a class=\"nav-link\" href=\"Menu.jsp\">Inicio <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                    </li>\n");
      out.write("\n");
      out.write("                    <li class=\"nav-item dropdown\">\n");
      out.write("                        <a class=\"nav-link dropdown-toggle\" href=\"biblioteca.jsp\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                            Biblioteca\n");
      out.write("                        </a>\n");
      out.write("                        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                            <a class=\"dropdown-item\" href=\"biblioteca.jsp\">Menu-Biblioteca</a>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"teoriaLogica.jsp\">Teoria logica</a>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"operadores.jsp\">Operadores</a>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item dropdown\">\n");
      out.write("                        <a class=\"nav-link dropdown-toggle\" href=\"Dinamicas.jsp\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                            Dinamicas\n");
      out.write("                        </a>\n");
      out.write("                        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                            <a class=\"dropdown-item\" href=\"Dinamicas.jsp\">Menu-Dinamicas</a>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"#\">Juegos Logicos</a>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"#\">Juegos Matematicos</a>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("                    \n");
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
 }else{
      out.write("\n");
      out.write("                        <li class=\"nav-item dropdown \" >\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Configuracion</a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <a class=\"nav-link disabled\" href=\"#\" tabindex=\"-1\" aria-disabled=\"true\">");
      out.print( usuario.getUsuario() );
      out.write("</a>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"#\"  >Perfil</a>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"Menu.jsp\">Cerrar sesion");
 usuario.setUsuario(null); 
      out.write("</a>  \n");
      out.write("\n");
      out.write("                            \n");
      out.write("                        </li>\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                </ul>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
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
