<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Pedido"%>
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
    
    <link href="css/login.css" rel="stylesheet">
    <style>
        table{
            
            padding-top: 100px;
        }
        
    </style>
    
    
  </head>
<!-- NAVBAR
================================================== -->
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
              <a class="navbar-brand" href="#">Web Entrega Pizzas </a>
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

       
        
        
        
        <%
            String flag = request.getParameter("flag");
            if (flag.equalsIgnoreCase("1")){    
        %>
<jsp:useBean id="listapedido" class="dao.ClientePadraoDAO" scope="page"></jsp:useBean> 
		<table>
                    <thead>
                        <tr>
				<td>Id Pedido</td>
                                <td>Id Cliente</td>
				<td>Sabor da Pizza</td>
				<td>Tamanho</td>
                                <td>Bebida</td>
                                <td>Tipo Bebida</td>
                                <td>Total</td>
                                <td>Status</td>
                                <td>Tipo</td>
			</tr>
                        <%for(Pedido p:listapedido.listaPedido()){%>
                    </thead>
                     <tr>
                <td><%=p.getId()%></td>
                <td><%=p.getCliente().getIdCliente()%></td>
                <td><%=p.getPizza().getNome()%></td>
                <td><%=p.getPizza().getTamanho()%></td>
                <td><%=p.getSoda().getNome()%></td>
                <td><%=p.getSoda().getTipo()%></td>
                <td><%=p.getTotal()%></td>
                <td><%=p.getStatus()%></td>
                <td><%=p.getCliente().getTipo()%></td>
</tr>
<%}%>
		</table>
                <%
        } else if (flag.equalsIgnoreCase("2")){
%>
<jsp:useBean id="listapedido2" class="dao.ClientePadraoDAO" scope="page"></jsp:useBean> 
		<table>
                    <thead>
                        <tr>
				<td>Id Pedido</td>
                                <td>Id Cliente</td>
				<td>Sabor da Pizza</td>
				<td>Tamanho</td>
                                <td>Bebida</td>
                                <td>Tipo Bebida</td>
                                <td>Total</td>
                                <td>Status</td>
                                <td>Tipo</td>
			</tr>
                        <%for(Pedido p:listapedido2.preferenciarVip()){%>
                    </thead>
                     <tr>
                <td><%=p.getId()%></td>
                <td><%=p.getCliente().getIdCliente()%></td>
                <td><%=p.getPizza().getNome()%></td>
                <td><%=p.getPizza().getTamanho()%></td>
                <td><%=p.getSoda().getNome()%></td>
                <td><%=p.getSoda().getTipo()%></td>
                <td><%=p.getTotal()%></td>
                <td><%=p.getStatus()%></td>
                <td><%=p.getCliente().getTipo()%></td>
</tr>
<%}%>
		</table>
                <%
                }%>
                <form action="TestaPedido">
                <input type="submit" name="escolha" value="Preferenciar Vips">
                </form>
    </body>
</html>
                
