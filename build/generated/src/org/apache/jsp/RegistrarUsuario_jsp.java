package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class RegistrarUsuario_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <link href=\"bootstrap-4.3.1-dist/css/bootstrap-grid.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"bootstrap-4.3.1-dist/css/bootstrap-grid.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"bootstrap-4.3.1-dist/css/bootstrap-reboot.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"bootstrap-4.3.1-dist/css/bootstrap-reboot.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"bootstrap-4.3.1-dist/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"bootstrap-4.3.1-dist/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <link href=\"bootstrap-4.3.1-dist/Estilo.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <title>intelmath-registrar usuario</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <div  id=\"inicio\">\n");
      out.write("        \n");
      out.write("           <form method=\"post\" action=\"InicioSesion\" style=\"width: 20px;\">\n");
      out.write("            <h2>¿No tienes cuenta? Registrate</h2>\n");
      out.write("            <input type=\"text\" name=\"usuario\" placeholder=\"Usuario\"  class=\"form-control\" title=\"¡Advertencia!\"  data-toggle=\"popover\" data-trigger=\"focus\" data-content=\"El usuario debe ser unico y original\"  ><br>\n");
      out.write("            <input type=\"password\" name=\"contra\" placeholder=\"Contraseña\" class=\"form-control\"><br>\n");
      out.write("            <input type=\"text\" name=\"nombre\" placeholder=\"Nombre\" class=\"form-control\"><br>\n");
      out.write("            <input type=\"text\" name=\"apellido\" placeholder=\"Apellido\" class=\"form-control\"><br>\n");
      out.write("            <input type=\"email\" name=\"correo\" placeholder=\"Correo electronico\" class=\"form-control\"><br>\n");
      out.write("            <input type=\"tel\" name=\"telefono\" placeholder=\"Telefono\" class=\"form-control\"><br>\n");
      out.write("            <input type=\"hidden\" name=\"opcion\" value=\"1\">\n");
      out.write("            <input type=\"submit\" name=\"registrar\" value=\"Registrar\" class=\"btn btn-primary btn-lg\">\n");
      out.write("\n");
      out.write("            <div style=\"color: red \">\n");
      out.write("                ");
 if (request.getAttribute("mensajeError") != null) { 
      out.write("\n");
      out.write("                ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                ");
 } else {
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div style=\"color:darkgreen\">\n");
      out.write("                ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeExitoso}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                ");
 }
      out.write("\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("    </body>\n");
      out.write("    <script>\n");
      out.write("$(document).ready(function(){\n");
      out.write("  $('[data-toggle=\"popover\"]').popover();   \n");
      out.write("});\n");
      out.write("</script>\n");
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
