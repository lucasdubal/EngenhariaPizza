<%-- 
    Document   : estoque
    Created on : 03/11/2016, 14:00:31
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gerenciar Estoque</h1>
        <form action="EstoqueServlet">
            <input type="submit" name="acao" value="Numero de Pizzas">
            <input type="submit" name="acao" value="Numero de Bebidas">
            <input type="submit" name="acao" value="Adquirir Pizza">
            <input type="submit" name="acao" value="Adquirir Bebida">
            <input type="submit" name="acao" value="Utilizar Pizzas">
            <input type="submit" name="acao" value="Utilizar Bebidas">
        </form>
        
        <%
            String flag = null;
            String msn = null;
            msn = request.getParameter("mensagem");
            flag = request.getParameter("flag");
            
            if ((msn == null) && (flag== null)){
                out.print("");
            }
            if (msn != null){
                if ((flag.equalsIgnoreCase("1")) || (flag.equalsIgnoreCase("2"))){
                    out.print(msn);
                }
                else if (flag.equalsIgnoreCase("3")){
                    out.print("Pizzas:"+msn);
                }
                else if (flag.equalsIgnoreCase("4")){
                    out.print ("Bebidas:"+msn);
                }
            } else {
                out.print("");
            }
 
        %>
    </body>
</html>
