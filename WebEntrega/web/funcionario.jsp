<%-- 
    Document   : cardapio
    Created on : 11/10/2016, 10:58:31
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Web Entrega</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">
    
    <style>
        
        #vip{
            padding-top: 100px;
            
        }
        
        
        
        label { color: whitesmoke; }
        
     body {
    background-image: url("img/background_1.jpg");
    background-repeat: no-repeat;
    background-size: 100%;
    background-attachment: fixed;
    } 
    
    h3,h2,p{
        color: whitesmoke;
    }
        
    </style>
    
  </head>
    <body>
        
             <div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="index.html">Web Entrega Pizzas </a>
            </div>
            <div id="navbar" class="navbar-collapse ecollapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">Sobre</a></li>
                <li><a href="cardapio.jsp">Pedido</a></li>            
              </ul>                
            
             
              <ul class="nav navbar-nav navbar-right">
        <li><p class="navbar-text">Cadastro</p></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
			<ul id="login-dp" class="dropdown-menu">
				<li>
					 <div class="row">
							<div class="col-md-12">
								Login via
								<div class="social-buttons">
									<a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
									<a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
								</div>
                                ou
								 <form class="form" role="form" method="post" action="login.jsp" accept-charset="UTF-8" id="login-nav">
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">Nome de Usuario</label>
											 <input type="text" class="form-control" id="exampleInputEmail2" name="usuario1" placeholder="Nome de Usuario" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">Password</label>
											 <input type="password" class="form-control" id="exampleInputPassword2" name="senha1" placeholder="Senha" required>
                                                                                         <div class="help-block text-right"><a href="">Esqueceu a senha ?</a></div>
										</div>
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block">Entrar</button>
										</div>
										
								 </form>
							</div>
							<div class="bottom text-center">
								Novo aqui ? <a href="#"><b>Cadastre-se</b></a>
							</div>
					 </div>
				</li>
			</ul>
        </li>
      </ul>
            </div>  
          </div>
        </nav>

      </div>
    </div>    
         
        
    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="img/pizza3.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Web Entrega Pizzas</h1>
              <p> Pizzas Online </p>
              <p><a class="btn btn-lg btn-primary" href="cardapio.jsp" role="button">Peça a sua!</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="img/pizza2.png" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
                <h1>Web Entrega Pizzas</h1>
              <p> Pizzas Online </p>
             <p><a class="btn btn-lg btn-primary" href="cardapio.jsp" role="button">Peça a sua!</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="img/pizza1.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
               <h1>Web Entrega Pizzas</h1>
              <p> Pizzas Online </p> 
              <p><a class="btn btn-lg btn-primary" href="cardapio.jsp" role="button">Peça a sua!</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
        
    
     <div class="container marketing" id="vip">  
     <div class="row">
        <div class="col-lg-4">
          <img class="img-circle" src="img/pizzaicon2.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Tabela de Pedidos</h2>
          <form action="listaPedido.jsp?flag=1" method="post">
              <p><input type="submit" class="btn btn-danger" value="Tabela"></p></form>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="img/moto.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Preferenciar Vips</h2>
          <p><button type="button" class="btn btn-danger"> Tabela </button></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="img/promocao.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>Gerenciar Estoque</h2>
          <form action="estoque.jsp?flag=0" method="post">
              <p><input type="submit" class="btn btn-danger" value="Estoque"></p></form>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->       
     </div> 

    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
