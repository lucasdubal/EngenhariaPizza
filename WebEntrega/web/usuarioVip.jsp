<%-- 
    Document   : usuarioVip
    Created on : 03/11/2016, 10:20:00
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
        <form action="ClienteVip">
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
            <input type="submit" name="escolha" value="Escolher">
            <input type="submit" name="escolha" value="Status do Pedido">
        </form>
    </body>
</html>
