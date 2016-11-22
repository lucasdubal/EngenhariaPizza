<%@page contentType="text/html" import="java.io.*" pageEncoding="UTF-8"%>
<%

  String usuario_p = config.getInitParameter("usuario");
  String senha_p = config.getInitParameter("senha");
  
  String usuario_p1 = config.getInitParameter("usuario2");
  String senha_p1 = config.getInitParameter("senha2");
  
  String usuario_p2 = config.getInitParameter("usuario3");
  String senha_p2 = config.getInitParameter("senha3");
  
  // dados informados no formulário
  String usuario = request.getParameter("usuario1");
  String senha = request.getParameter("senha1");
  
  String usuario2 = request.getParameter("usuario1");
  String senha2 = request.getParameter("senha1");
  
  String usuario3 = request.getParameter("usuario1");
  String senha3 = request.getParameter("senha1");
  
  // verifica se os dados informados estão corretos para os users
  if((usuario.equals(usuario_p)) && (senha.equals(senha_p))){
    out.println("Login efetuado com sucesso!");
    String redirectURL = "pginicial.html"; // vai direcionar pra uma outra pg
    response.sendRedirect(redirectURL);
  }
  else if ((usuario.equals(usuario_p1)) && (senha.equals(senha_p1))){ //se for o outro usuario
      out.println("Login efetuado com sucesso!");
      String redirectURL = "pginicial.html";
      response.sendRedirect(redirectURL);
  } else if ((usuario.equals(usuario_p2)) && (senha.equals(senha_p2))){ //se for o outro usuario
      out.println("Login efetuado com sucesso!");
      String redirectURL = "pginicial.html";
      response.sendRedirect(redirectURL);
  } //direcionar
  else{    
      out.println("Dados não conferem. Tente novamente"); // não é nenhum dos dois usuarios configurados
  }  
%>

