<%-- 
    Document   : cardapio
    Created on : 11/10/2016, 10:58:31
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
        <h3>Escolha da Pizza</h3>
        <form action="TestaPedido">
            <select name="tamanho">
                <option value="pequena">Pekenina</option>
                <option value="media">Mediazita</option>
                <option value="grande">Gigante</option>
            </select>
            <select name="pizza">
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
                <option value="coca">Coca</option>
                <option value="pepsi">Pepsi</option>
                <option value="fanta">Fanta</option>
                <option value="guarana">Guaraná</option>
        </select>
            <input name="escolha" type="submit" value="Escolher">
            <input name="escolha" type="submit" value="Listar">
            <input name="escolha" type="submit" value="Status">
        </form>
        
        <%
            String mensagem = request.getParameter("msn");
            if (mensagem != null){
                out.print(mensagem);
            }
        %>
        
       
    </body>
</html>
