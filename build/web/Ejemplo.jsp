<!DOCTYPE HTML>
<!--
	Monochromed by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<%@page import="RecuperarFoto.Ejemplo" %>
<% Ejemplo ejem = new Ejemplo(); %>
<html>
	<head>
		<title>Monochromed by TEMPLATED</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
	</head>
	<body class="homepage">

	<!-- Header -->
		<div id="header">
			<div class="container">
					
				<!-- Logo -->
					<div id="logo">
                                            <h1><a >BULL HUNTER</a></h1>
						<span>Llevando a tu Ganado a la Nube</span>
					</div>
				
				<!-- Nav -->
					<nav id="nav">
						<ul>
                                                   <li><a href="index.jsp">Inicio</a></li>
                                                    <li><a href="QuienesSomos.jsp" >Quienes Somos</a></li>
                                                    <li class="active"><a href="Catalogo.jsp">Catalogo</a></li>
                                                    <%  
                                                        HttpSession Sesion = request.getSession(false);
                                                        String Tipo =(String) Sesion.getAttribute("TipoUser");
                                                        
                                                        if(Tipo==null){
                                                       
                                                     %>
                                                    <li><a href="Inicia_Registrate.jsp">Inicia Sesion</a></li>
                                                    <%
                                                        }
                                                        if(Tipo=="Usuario"){
                                                    %>
                                                    <li><a href="PromocionarGanado.jsp">Vender</a></li>
                                                    <li><a href="Ubicacion.jsp">Ubicacion de ganado</a></li>
                                                    <li><a href="Perfil.jsp">Perfil</a></li>
                                                    <li><a href="CerrarSesion">Cerrar Sesion</a></li>
                                                    <%
                                                    }
                                                    
                                                       else if(Tipo=="Administrador"){
                                                                
                                                                
                                                     %>  
                                                    <li><a href="Perfil_Gestiones.jsp">Perfil y Gestiones</a></li>
                                                    <li><a href="CerrarSesion">Cerrar Sesion</a></li>
                                                    <%
                                                        }
                                                    %>

                                                    
                                                       
						</ul>
					</nav>

			</div>
		</div>
	<!-- Header -->
			
	<!-- Main -->
		<div id="main">
			<div class="container">
				<header>
					<h2>Ganado en venta</h2>
				</header>
                                
				
                            <div class="row">
                                <div class="3u"> 
                                      <section>
                                          <a href="#" class="image full"><img src= "<%= ejem.cargarfoto()%>" alt=""></a>
					<p>Tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis elementum.</p>
					<a href="#" class="button">Read More</a>
                                    </section>
                                </div>
                                    
                            </div>
                                
				<div class="divider">&nbsp;</div>
				<div class="row">
				
					<!-- Content -->
						<div class="8u skel-cell-important">
							<section id="content">
								<header>
									<h2>Integer gravida nibh quis urna</h2>
									<span class="byline">Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum</span>
								</header>
								<p><a href="#" class="image full"><img src="images/pics02.jpg" alt=""></a></p>
								<p>This is <strong>Monochromed</strong>, a responsive HTML5 site template freebie by <a href="http://templated.co">TEMPLATED</a>. Released for free under the <a href="http://templated.co/license">Creative Commons Attribution</a> license, so use it for whatever (personal or commercial) &ndash; just give us credit! Check out more of our stuff at <a href="http://templated.co">our site</a> or follow us on <a href="http://twitter.com/templatedco">Twitter</a>.</p>
								<a href="#" class="button">Read More</a>
							</section>
						</div>
					<!-- /Content -->
						
					<!-- Sidebar -->
						<div id="sidebar" class="4u">
							<section>
								<header>
									<h2>Gravida praesent</h2>
									<span class="byline">Praesent lacus congue rutrum</span>
								</header>
								<p>Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum. Maecenas luctus lectus at sapien. Consectetuer adipiscing elit.</p>
								<ul class="default">
									<li><a href="#">Pellentesque quis lectus gravida blandit.</a></li>
									<li><a href="#">Lorem ipsum consectetuer adipiscing elit.</a></li>
									<li><a href="#">Phasellus nec nibh pellentesque congue.</a></li>
									<li><a href="#">Cras aliquam risus pellentesque pharetra.</a></li>
									<li><a href="#">Duis non metus commodo euismod lobortis.</a></li>
									<li><a href="#">Lorem ipsum dolor adipiscing elit.</a></li>
								</ul>
							</section>
						</div>
					<!-- Sidebar -->
						
				</div>
			
			</div>
		</div>
	<!-- Main -->
        <%@include 
            file="PiePag.jsp"
            %>

	</body>
</html>