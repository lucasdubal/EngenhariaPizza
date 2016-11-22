<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Pedido"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
                