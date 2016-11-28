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
        
        #pedido{
            padding-top: 100px;
            
        }
        
        label { color: whitesmoke; }
        
     body {
    background-image: url("img/madeira.jpg");
    background-repeat: no-repeat;
    background-size: 100%;
    background-attachment: fixed;
    } 
    
    h3,h4{
        color: whitesmoke;
    }
    
    .pag{
        margin-left: 50%;
        float:left;
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
        
        
       
            
        <div class="container" id="pedido">    
         <div class="col-md-5">   
        <h3>Escolha da Pizza</h3>
        <form action="TestaPedido">
            <select name="tamanho">
                <option value="selecionar">Selecionar</option>
                <option value="pequena">PPP</option>
                <option value="media">Media</option>
                <option value="grande">Grande</option>
            </select>
            <select name="pizza">
                <option value="selecionar">Selecionar</option>
                <option value="palmito">Palmito</option>
                <option value="4queijos">4 Queijos</option>
                <option value="frango">Frango</option>
                <option value="calabresa">Calabresa</option>
            </select>
            
        <h3>Escolha da Bebida</h3>
        <select name="tipobebida">
                <option value="selecionar">Selecionar</option>
                <option value="lata">Lata</option>
                <option value="2l">2 Litros</option>
        </select>
        <select name="bebida">
                <option value="coca">Selecionar</option>
                <option value="coca">Coca</option>
                <option value="pepsi">Pepsi</option>
                <option value="fanta">Fanta</option>
                <option value="guarana">Guaraná</option>
        </select>
        <h3>Forma de pagamento</h3>
      <label><input type="radio" name="pagar" value="pagseguro">PagSeguro</label>
      <label><input type="radio" name="pagar" value="presencial">Presencial</label>
            <div class="container">
                <div class="row">
                    <br>
                
                    <button type="submit" name="escolha" class="btn btn-success" value="Finalizar Pedido">Finalizar Pedido</button><br><br>
                    
                    
                    
                    <%
                        String mensagem=null;
                        mensagem = request.getParameter("msn");
                        if (mensagem != null){
                    %>
                    <h4><%=mensagem%></h4>
                    <%}%>
                </div>
            </div>               
                  

        
        </form> 
       
                
        <%  
            
            String flag = null;
            double valorPizza = 0;
            double valorBebida=0;
            
            
            flag = request.getParameter("flag");
            
            if(flag.equalsIgnoreCase("2")){
                valorPizza = Double.parseDouble(request.getParameter("precop"));
                valorBebida = Double.parseDouble(request.getParameter("precob"));
            }

        %>  
                
        <div>    <!-- Declaração do formulário -->  
    <form method="post" target="pagseguro"  
    action="https://sandbox.pagseguro.uol.com.br/v2/checkout/payment.html">  
      
            <!-- Campos obrigatórios -->  
            <input name="receiverEmail" value="leandroboka@yahoo.com.br" type="hidden">  
            <input name="currency" value="BRL" type="hidden">  
   
            <!-- Itens do pagamento (ao menos um item é obrigatório) -->  
            <input name="itemId1" value="0001" type="hidden">
            <input name="itemDescription1" value="${param.pizza}" type="hidden">  <!-- sabor da pizza -->
            <input name="itemAmount1" value="${param.precop}" type="hidden">  <!-- Preco -->
            <input name="itemQuantity1" value="1" type="hidden">  
            <!-- tamanho: precisa ser numerico, entao, vamos comentar por ora
            <input name="itemWeight1" value="${param.tamanho}" type="hidden">-->
            <input name="itemId2" value="0002" type="hidden">  
            <input name="itemDescription2" value="${param.bebida}" type="hidden">  
            <input name="itemAmount2" value="${valorBebida}" type="hidden">  
            <input name="itemQuantity2" value="1" type="hidden">             
      
            <!-- Código de referência do pagamento no seu sistema (opcional) -->  
            <input name="reference" value="REF1234" type="hidden">  
              
            <!-- Informações de frete (opcionais) -->  
                  
            <!-- Dados do comprador (opcionais) -->  
            <input name="senderName" value="José Comprador" type="hidden">  
            <input name="senderAreaCode" value="11" type="hidden">  
            <input name="senderPhone" value="56273440" type="hidden">  
            <input name="senderEmail" value="jose@mail.com.br" type="hidden">  
      
            <!-- submit do form (obrigatório) -->  
            <div class="container">
                
    <input alt="Pague com PagSeguro" class="img-responsive" name="submit"  type="image"  
    src="https://p.simg.uol.com.br/out/pagseguro/i/botoes/pagamentos/120x53-pagar.gif">     
              
            </div>
    </form>  </div>
         
             </div>   
        <div class="col-md-7">
          <img class="pull-right img-responsive" src="img/cardapiopizza.jpg" alt="Generic placeholder image">
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
