<%-- 
    Document   : index
    Created on : 10-nov-2017, 8:35:20
    Author     : miguelitho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE HTML>
<!--
	Monochromed by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
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
	<body>

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
                                                   <li class="active"><a href="index.jsp">Inicio</a></li>
                                                    <li><a href="QuienesSomos.jsp" >Quienes Somos</a></li>
                                                    <li><a href="Catalogo.jsp">Catalogo</a></li>
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
			<div>
				<div>

					<!-- Content -->
						<div id="content" class="12u skel-cell-important">
                                                    <section>
                                                        <div class="container">
								<header>
									<h2>Ganado de Calidad a tu Disposicion</h2>
									<span class="byline">Ingresa a Nuestro Catalogo de Venta Para Poder ver El ganado que Puedes Adquirir</span>
								</header>
                                                        </div>
								<p><a href="#" class="image full"><img src="images/inicio.jpg" alt=""></a></p>
							
							</section>
						</div>
					<!-- /Content -->
					
				</div>
			
			</div>
		</div>
	<!-- Main -->

	<!-- Footer -->
		<div id="footer">
			<div class="container">
				<div class="row">
					<div class="3u">
						<section>
							<ul class="style1">
								<li><img src="images/pics05.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
								<li><img src="images/pics06.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
								<li><img src="images/pics07.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
							</ul>
						</section>
					</div>
					<div class="3u">
						<section>
							<ul class="style1">
								<li class="first"><img src="images/pics08.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
								<li><img src="images/pics09.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
								<li><img src="images/pics10.jpg" width="78" height="78" alt="">
									<p>Nullam non wisi a sem eleifend. Donec mattis libero eget urna. </p>
									<p class="posted">August 11, 2014  |  (10 )  Comments</p>
								</li>
							</ul>
						</section>				
					</div>
					<div class="6u">
						<section>
							<header>
								<h2>Aenean elementum</h2>
							</header>
							<p>In posuere eleifend odio. Quisque semper augue mattis wisi. Maecenas ligula. Pellentesque viverra vulputate enim. Aliquam erat volutpat. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum id, elementum congue, nibh. Suspendisse dictum porta lectus.</p>
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
				</div>
			</div>
		</div>
	<!-- Footer -->

	<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
			</div>
		</div>

	</body>
</html>