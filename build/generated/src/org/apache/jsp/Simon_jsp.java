package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Simon_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <link href=\"CSS/simon.css\" rel=\"stylesheet\" />\n");
      out.write("   \n");
      out.write("\n");
      out.write("    <title>Secuencia de colores</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<header>\n");
      out.write("  Simon Dice\n");
      out.write("</header>\n");
      out.write("<h1>\n");
      out.write("  <div class='.log'></div>\n");
      out.write("  <div class=\"start-btn c\">Restart</div>\n");
      out.write("  </h1>\n");
      out.write("<h2>\n");
      out.write("  <div class=\"Puntaje\"></div>\n");
      out.write("  <div class='correct'> Nivel Completo!</div> \n");
      out.write("  <div class='game-over'>Haz perdido!</div>\n");
      out.write("  <br>\n");
      out.write("  <br>\n");
      out.write("  <div id=\"0\" class=\"b0 b\">Verde</div>\n");
      out.write("  <div id=\"1\" class=\"b1 b\">Rojo</div>\n");
      out.write("  <br>\n");
      out.write("  <div id=\"2\" class=\"b2 b\">Azul</div>\n");
      out.write("  <div id=\"3\" class=\"b3 b\">Amarrillo</div>\n");
      out.write("  <br>\n");
      out.write("  <br>\n");
      out.write("  <div class=\"score\"></div>\n");
      out.write("  <br>\n");
      out.write("  </h2>\n");
      out.write("   <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>\n");
      out.write("   <script src='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js'></script>\n");
      out.write("   <script  src=\"JS/simonlogica.js\"></script>\n");
      out.write("  \n");
      out.write("</body>\n");
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
