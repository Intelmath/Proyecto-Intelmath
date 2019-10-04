<%-- 
    Document   : Puzzle
    Created on : 28/08/2019, 01:09:34 PM
    Author     : APRENDIZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<title>PUZZLE</title>
<style>
canvas {
	width:450px;
	height:450px;
    border: 5px solid black;
    margin:auto
}
</style>
</head>
<body>
<div id="top" style="width:1200px; margin:auto; margin-top:10px; text-align:center">
<header style="width:1190; height:100px;">
<link href="CSS/puzzle.css" rel="stylesheet">
<h1 style="font-size:70px;">Puzzle deslizable v1</h1>
</header>

<div style="margin-top:10px; height:1000px;">
<div>
<div style="width:50%; float:left; display:inline">
<div style="text-align:center; height:30px">
<h1 id="message"></h1>
</div>
<div style="text-align:center; height:30px">
<h1 id="moves"></h1>
</div>




<div>
<canvas id="canvas" height="450px" width="450px"></canvas>
</div>
</div>
<div style=" padding-top:2px; text-align:center; width:50% padding-top:10px">
<h1 style="font-size:40px;">Imagen Completa</h1>
<div style="margin:auto">
<img src="images/puzz1.jpg" id="puzz1" width="150" height="150">
<img src="images/puzz2.jpg" id="puzz2" width="150" height="150">
<img src="images/puzz3.jpg" id="puzz3" width="150" height="150">
</div>
<div>
<img src="images/puzz4.jpg" id="puzz4" width="150" height="150">
<img src="images/puzz5.jpg" id="puzz5" width="150" height="150">
<img src="images/puzz6.jpg" id="puzz6" width="150" height="150">
</div>
<img src="images/puzz7.jpg" id="puzz7" width="150" height="150">
<img src="images/puzz8.jpg" id="puzz8" width="150" height="150">
<img src="images/puzz9.jpg" id="puzz9" width="150" height="150">
</div>
</div>
</div>


<!--logica-->
<script>
var canvas=document.getElementById("canvas");
var ctx = canvas.getContext("2d");
var empty=9;
var moves=-1;
function shuffle(array) {
	  var currentIndex = array.length, temporaryValue, randomIndex;

	    /*aqui se mezclan las fichas*/
	     while (0 !== currentIndex) {

	    /*elije una ficha actual para remplazarla*/
	    randomIndex = Math.floor(Math.random() * currentIndex);
	    currentIndex -= 1;
	    temporaryValue = array[currentIndex];
	    array[currentIndex] = array[randomIndex];
	    array[randomIndex] = temporaryValue;
	  }

	  return array;
	}/*declaramos la matriz*/
var ar=[1,2,3,4,5,6,7,8,0];
im=shuffle([1,2,3,4,5,6,7,8,0]);

for(var i=0;i<=8;i++){
	if(im[i]==0)
		empty=i+1;
}

var restart=0;
function ganar(){
	ctx.clearRect(300,300,150,150);
	var img=document.getElementById("puzz9");
	var pat=ctx.createPattern(img,"repeat");
	ctx.fillStyle=pat;
	ctx.fillRect(300,300,150,150);
	m=document.getElementById("message");
	m.innerHTML="Ganaste el juego en "+moves.toString() +" Movimientos";
	restart=1;
	moves=-1;
}

function draw(){
	moves++;
	mov=document.getElementById("moves");
	mov.innerHTML="MOVIMIENTOS REALIZADOS:  "+ moves.toString();
	m=document.getElementById("message");
	m.innerHTML="";
  var t;
  t=0;
  if(restart==1){
	
	  im=shuffle([1,2,3,4,5,6,7,8,0]);
		for(var i=0;i<=8;i++){
			if(im[i]==0)
				empty=i+1;
			
				
		}
		
		console.log(empty);
		
	 ctx.clearRect(0,0,450,450);
	  restart=0;
  }
	for(var i=0;i<9;i++){
		if(im[i]!=ar[i])
			t=1;	
	}
	console.log(im);
	console.log(ar);
	
	for(var i=0;i<3;i++){
    	for(var j=0;j<3;j++){
    		   component(i,j);    		
    	}
    }
	
	console.log(t);
	
	if(t==0){
		console.log("funca");
		ganar();
	}
	
}

function component(x, y) {
    
    var text="puzz";
    z=x+3*y;
    z=im[z];
    text=text+z.toString();
    if(z!=0)
    {
    	var img=document.getElementById(text);
    	var pat=ctx.createPattern(img,"repeat");
    	ctx.fillStyle=pat;
    }
    
    else
    {
    	ctx.fillStyle="white";
    }
    
    ctx.fillRect(150*x,150*y,150,150);    
}

function moveup() {
	ctx.clearRect(0,0,450,450);
	if(restart==1)
		{
		draw();
		return;
		}
    if(empty==9||empty==7||empty==8){
    	moves--;
    	draw();
    } 
    else{
    	text="puzz";
    	var curr=empty;
    	empty=empty+3;
    	var next=empty;
        im[curr-1]=im[next-1];
        im[next-1]=0;
        draw();
    	
    }
    console.log(empty);
}

function movedown() {
	ctx.clearRect(0,0,450,450);
	if(restart==1)
	{
	
	draw();
	return;
	}
	if(empty==1||empty==2||empty==3) {
		moves--;
		draw();
    }
    else{
    	text="puzz";
    	var curr=empty;
    	empty=empty-3;
    	var next=empty;
        im[curr-1]=im[next-1];
        im[next-1]=0;
        draw();
        
    }
    
    console.log(empty);
    
}

function moveleft() {
	ctx.clearRect(0,0,450,450);
	
	if(restart==1)
	{
	
	draw();
	return;
	}
	
	if(empty==6||empty==9||empty==3) {
		moves--;  
		draw();
	    }
	    else{
	    	text="puzz";
	    	var curr=empty;
	    	empty=empty+1;
	    	var next=empty;
	        im[curr-1]=im[next-1];
	        im[next-1]=0;
	        draw();
	    	
	  
	    }
	  console.log(empty);
}

function moveright() {
	ctx.clearRect(0,0,450,450);
	if(restart==1)
	{
	moves--;
	draw();
	return;
	}
	  if(empty==1||empty==4||empty==7) {
		  moves--;
		  draw();
	    }
	    else{
	    	text="puzz";
	    	var curr=empty;
	    	empty=empty-1;
	    	var next=empty;
	        im[curr-1]=im[next-1];
	        im[next-1]=0;
	        draw();
	    }console.log(empty);
	
	  }
	  /*asignamiento de teclas*/
    window.addEventListener('keydown', function (e) {
    key = e.keyCode;
    if(key==37){
    	e.preventDefault();
    	moveleft();
    }
    if(key==38){
    	e.preventDefault();
    	moveup();
    }
    if(key==39){
    	e.preventDefault();
    	moveright();
    }
    if(key==40){
    	e.preventDefault();
    	movedown();
    }
	if(key==13){
		e.preventDefault();
		start();
	}
    /*play*/
});
function start(){
draw();
}
ctx.font = "30px Arial";
ctx.fillText("PRESIONA ENTER",110,210);

</script>
</body>
</html>