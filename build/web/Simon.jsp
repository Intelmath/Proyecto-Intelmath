<%-- 
    Document   : Simon
    Created on : 28/08/2019, 01:20:35 PM
    Author     : agxel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="CSS/simon.css" rel="stylesheet" />
   

    <title>Secuencia de colores</title>
</head>
<body>
<header>
  Simon Dice
</header>
<h1>
  <div class='.log'></div>
  <div class="start-btn c">Restart</div>
  </h1>
<h2>
  <div class="Puntaje"></div>
  <div class='correct'> Nivel Completo!</div> 
  <div class='game-over'>Haz perdido!</div>
  <br>
  <br>
  <div id="0" class="b0 b">Verde</div>
  <div id="1" class="b1 b">Rojo</div>
  <br>
  <div id="2" class="b2 b">Azul</div>
  <div id="3" class="b3 b">Amarrillo</div>
  <br>
  <br>
  <div class="score"></div>
  <br>
  </h2>
   <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
   <script src='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js'></script>
   <script  src="JS/simonlogica.js"></script>
  
</body>
</html>
