package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ModeloVO.IncioSesionVO;
import java.util.ArrayList;
import ModeloDAO.TriviaDAO;
import ModeloVO.TriviaVO;

public final class Dinamicas_jsp extends org.apache.jasper.runtime.HttpJspBase
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


    HttpSession miSession = (HttpSession) request.getSession();
    IncioSesionVO usuario = new IncioSesionVO();
    if (miSession.getAttribute("usuario") != null) {
        usuario = (IncioSesionVO) miSession.getAttribute("usuario");
    }



      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("     <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
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
      out.write("     \n");
      out.write("      \n");
      out.write("    <title>MENU DINAMICAS</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <header>\n");
      out.write("       <form method=\"post\" action=\"Menu.jsp\">\n");
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
      out.write("    \n");
      out.write("</header>\n");
      out.write("     <main>\n");
      out.write("      <section class=\"banner\">\n");
      out.write("              <div class=\"banner-contenido\">\n");
      out.write("                  <h1>Dinamicas</h1>\n");
      out.write("                  <p>Conoce los distintos juegos que tenemos para ti</p>\n");
      out.write("              </div>\n");
      out.write("          </section>   \n");
      out.write("            <section id=\"Bienvenida\">\n");
      out.write("            <div class=\"contenedor\">\n");
      out.write("                <h2>Dinamicas</h2>\n");
      out.write("                <p>Aqui tienes una manera mas divertida de reforzar tu logica!!!</p>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            \n");
      out.write("            <!-- SLIDER -->\n");
      out.write("            \n");
      out.write("    <div class=\"slider\">\n");
      out.write("     \n");
      out.write("          <ul>\n");
      out.write("      \n");
      out.write("      <section class=\"group main__about__description\">\n");
      out.write("             <div class=\"container container--flex\">\n");
      out.write("                 <div class=\"column column--50\">\n");
      out.write("                     <img src=\"IMG/torres.jpg\" alt=\"\" alling=\"left\">\n");
      out.write("                 </div>\n");
      out.write("                 <div class=\"column column--50\">\n");
      out.write("                 <h3 class=\"column__title\">Torres de Hanoi</h3>\n");
      out.write("                 <p class=\"column__txt\">Este juego de mesa individual consiste en un número de discos perforados de radio creciente que se apilan insertándose en uno de los tres postes fijados a un tablero. El objetivo del juego es trasladar la pila a otro de los postes siguiendo ciertas reglas,como que no se puede colocar un disco mas grande encima de un disco mas pequeño.\n");
      out.write("                </p>\n");
      out.write("                 <a href=\"Torres.jsp\" class=\"btn btn--contac\">Jugar ya!</a>\n");
      out.write("                 </div>\n");
      out.write("             </div>\n");
      out.write("        </section>\n");
      out.write("         \n");
      out.write("       </ul>\n");
      out.write("       \n");
      out.write("        <ul>\n");
      out.write("        \n");
      out.write("         <section class=\"group main__about__description\">\n");
      out.write("             <div class=\"container container--flex\">\n");
      out.write("                 <div class=\"column column--50\">\n");
      out.write("                     <img src=\"IMG/patron.jpg\" alt=\"\" >\n");
      out.write("                 </div>\n");
      out.write("                 <div class=\"column column--50\">\n");
      out.write("                 <h3 class=\"column__title\">Secuencia de colores</h3>\n");
      out.write("                 <p class=\"column__txt\">El juego de la secuencia de colores consiste en que se te monstraran un patron de colores que tu tendras que encontrar</p>\n");
      out.write("                 <a href=\"Patron.jsp\" class=\"btn btn--contac\">Jugar ya!</a>\n");
      out.write("                 </div>\n");
      out.write("             </div>\n");
      out.write("         </section>\n");
      out.write("         \n");
      out.write("       </ul>\n");
      out.write("        \n");
      out.write("         <ul>\n");
      out.write("         \n");
      out.write("         <section class=\"group main__about__description\">\n");
      out.write("             <div class=\"container container--flex\">\n");
      out.write("                 <div class=\"column column--50\">\n");
      out.write("                 <img src=\"IMG/simon.jpg\" alt=\"\" >\n");
      out.write("                 </div>\n");
      out.write("                 <div class=\"column column--50\">\n");
      out.write("                 <h3 class=\"column__title\">Simon dice</h3>\n");
      out.write("                 <p class=\"column__txt\">Este juego consiste en prestaar atencion a la pantalla sobretodo en la secuencia de colores que se te mosntraran en pantalla para posteriormente que la sigas </p>\n");
      out.write("                 <a href=\"Simon.jsp\" class=\"btn btn--contac\">Jugar ya!</a>\n");
      out.write("                 </div>\n");
      out.write("             </div>\n");
      out.write("         </section>\n");
      out.write("         \n");
      out.write("       </ul>\n");
      out.write("       \n");
      out.write("        <ul>\n");
      out.write("         \n");
      out.write("         <section class=\"group main__about__description\">\n");
      out.write("             <div class=\"container container--flex\">\n");
      out.write("                 <div class=\"column column--50\">\n");
      out.write("                 <img src=\"IMG/rompecabezas.jpg\" alt=\"\" >\n");
      out.write("                 </div>\n");
      out.write("                 <div class=\"column column--50\">\n");
      out.write("                 <h3 class=\"column__title\">Rompecabezas </h3>\n");
      out.write("                 <p class=\"column__txt\">Tendras un pequeño pero desafiante rompecabezas deslizable. Podras superar mi record?</p>\n");
      out.write("                 <a href=\"Puzzle.jsp\" class=\"btn btn--contac\">Jugar ya!</a>\n");
      out.write("                 </div>\n");
      out.write("             </div>\n");
      out.write("         </section>\n");
      out.write("         \n");
      out.write("       </ul>\n");
      out.write("       \n");
      out.write("   </div>\n");
      out.write("               <!-- SLIDER -->\n");
      out.write("               \n");
      out.write("               \n");
      out.write("            <section id=\"info\">\n");
      out.write("                <h3>Conoce las distintas funciones que trae INTELMATH para tu aprendizaje</h3>\n");
      out.write("                <div class=\"contenedor\">\n");
      out.write("                    <div class=\"info-seiyu\">\n");
      out.write("                        <img src=\"IMG/juegos.jpg\" alt=\"mari\">\n");
      out.write("                        <h4>Dinamicas</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"info-seiyu\">\n");
      out.write("                        <img src=\"IMG/seguimiento.jpg\">\n");
      out.write("                        <h4>Reforzamiento de logica</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"info-seiyu\">\n");
      out.write("                        <img src=\"IMG/biblioteca.jpg\">\n");
      out.write("                        <h4>Biblioteca</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"info-seiyu\">\n");
      out.write("                        <img src=\"IMG/pensamiento.jpg\" alt=\"yohane\">\n");
      out.write("                        <h4>Seguimiento de aprendizaje</h4>\n");
      out.write("                    </div>\n");
      out.write("            </section>\n");
      out.write("        </main>\n");
      out.write("        \n");
      out.write("        <footer>\n");
      out.write("          \n");
      out.write("            <div class=\"contenedor\">            \n");
      out.write("                <p class=\"copy\">INTELMATH &copy; 2019</p>\n");
      out.write("                \n");
      out.write("                <div class=\"sociales\">\n");
      out.write("                    <a class=\"icon-face\" href=\"https://www.facebook.com/SCORPION21.THE.KILLER\"></a>\n");
      out.write("                    <a class=\"icon-youtube\" href=\"https://www.youtube.com/channel/UCTkyJbRhal4voLZxmdRSssQ/videos\"></a>\n");
      out.write("                    <a class=\"icon-hotmail\" href=\"https://outlook.live.com/owa/\"></a>\n");
      out.write("                    <a class=\"icon-twitter\" href=\"https://twitter.com/?lang=es\"></a>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("   \n");
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
