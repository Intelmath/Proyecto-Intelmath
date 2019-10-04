<%-- 
    Document   : Dinamicas
    Created on : 28/08/2019, 12:28:07 PM
    Author     : agxel
--%>

<%@page import="ModeloVO.IncioSesionVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.TriviaDAO"%>
<%@page import="ModeloVO.TriviaVO"%>
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
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
     
      
    <title>MENU DINAMICAS</title>
</head>
<body>
    
    
    <header>
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
    
</header>
     <main>
      <section class="banner">
              <div class="banner-contenido">
                  <h1>Dinamicas</h1>
                  <p>Conoce los distintos juegos que tenemos para ti</p>
              </div>
          </section>   
            <section id="Bienvenida">
            <div class="contenedor">
                <h2>Dinamicas</h2>
                <p>Aqui tienes una manera mas divertida de reforzar tu logica!!!</p>
                </div>
            </section>
            
            <!-- SLIDER -->
            
    <div class="slider">
     
          <ul>
      
      <section class="group main__about__description">
             <div class="container container--flex">
                 <div class="column column--50">
                     <img src="IMG/torres.jpg" alt="" alling="left">
                 </div>
                 <div class="column column--50">
                 <h3 class="column__title">Torres de Hanoi</h3>
                 <p class="column__txt">Este juego de mesa individual consiste en un número de discos perforados de radio creciente que se apilan insertándose en uno de los tres postes fijados a un tablero. El objetivo del juego es trasladar la pila a otro de los postes siguiendo ciertas reglas,como que no se puede colocar un disco mas grande encima de un disco mas pequeño.
                </p>
                 <a href="Torres.jsp" class="btn btn--contac">Jugar ya!</a>
                 </div>
             </div>
        </section>
         
       </ul>
       
        <ul>
        
         <section class="group main__about__description">
             <div class="container container--flex">
                 <div class="column column--50">
                     <img src="IMG/patron.jpg" alt="" >
                 </div>
                 <div class="column column--50">
                 <h3 class="column__title">Secuencia de colores</h3>
                 <p class="column__txt">El juego de la secuencia de colores consiste en que se te monstraran un patron de colores que tu tendras que encontrar</p>
                 <a href="Patron.jsp" class="btn btn--contac">Jugar ya!</a>
                 </div>
             </div>
         </section>
         
       </ul>
        
         <ul>
         
         <section class="group main__about__description">
             <div class="container container--flex">
                 <div class="column column--50">
                 <img src="IMG/simon.jpg" alt="" >
                 </div>
                 <div class="column column--50">
                 <h3 class="column__title">Simon dice</h3>
                 <p class="column__txt">Este juego consiste en prestaar atencion a la pantalla sobretodo en la secuencia de colores que se te mosntraran en pantalla para posteriormente que la sigas </p>
                 <a href="Simon.jsp" class="btn btn--contac">Jugar ya!</a>
                 </div>
             </div>
         </section>
         
       </ul>
       
        <ul>
         
         <section class="group main__about__description">
             <div class="container container--flex">
                 <div class="column column--50">
                 <img src="IMG/rompecabezas.jpg" alt="" >
                 </div>
                 <div class="column column--50">
                 <h3 class="column__title">Rompecabezas </h3>
                 <p class="column__txt">Tendras un pequeño pero desafiante rompecabezas deslizable. Podras superar mi record?</p>
                 <a href="Puzzle.jsp" class="btn btn--contac">Jugar ya!</a>
                 </div>
             </div>
         </section>
         
       </ul>
       
   </div>
               <!-- SLIDER -->
               
               
            <section id="info">
                <h3>Conoce las distintas funciones que trae INTELMATH para tu aprendizaje</h3>
                <div class="contenedor">
                    <div class="info-seiyu">
                        <img src="IMG/juegos.jpg" alt="mari">
                        <h4>Dinamicas</h4>
                    </div>
                    <div class="info-seiyu">
                        <img src="IMG/seguimiento.jpg">
                        <h4>Reforzamiento de logica</h4>
                    </div>
                    <div class="info-seiyu">
                        <img src="IMG/biblioteca.jpg">
                        <h4>Biblioteca</h4>
                    </div>
                    <div class="info-seiyu">
                        <img src="IMG/pensamiento.jpg" alt="yohane">
                        <h4>Seguimiento de aprendizaje</h4>
                    </div>
            </section>
        </main>
        
        <footer>
          
            <div class="contenedor">            
                <p class="copy">INTELMATH &copy; 2019</p>
                
                <div class="sociales">
                    <a class="icon-face" href="https://www.facebook.com/SCORPION21.THE.KILLER"></a>
                    <a class="icon-youtube" href="https://www.youtube.com/channel/UCTkyJbRhal4voLZxmdRSssQ/videos"></a>
                    <a class="icon-hotmail" href="https://outlook.live.com/owa/"></a>
                    <a class="icon-twitter" href="https://twitter.com/?lang=es"></a>
                </div>
                
            </div>
        </footer>
</body>
</html>
   
</body>
</html>
