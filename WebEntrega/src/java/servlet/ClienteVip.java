/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.ClientePadraoDAO;
import dao.ClienteVipDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Bebida;
import modelo.Cliente;
import modelo.Pedido;
import modelo.Pizza;

/**
 *
 * @author user
 */
@WebServlet(name = "ClienteVip", urlPatterns = {"/ClienteVip"})
public class ClienteVip extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        
        String nomep = request.getParameter("pizza");
	String tamanhop = request.getParameter("tamanho");
        String nomeb = request.getParameter("bebida");
	String tipob = request.getParameter("tipobebida");
        String insere = null;
        Pizza pizza = new Pizza();
        pizza.setTamanho(tamanhop);
        pizza.setNome(nomep);
        Pedido p = new Pedido();
        Bebida b = new Bebida();
        Cliente c = new Cliente();
        c.setTipo("v");
        p.setCliente(c);
        
        String acao = request.getParameter("escolha");
        
        if (acao.equalsIgnoreCase("Escolher")){
            if (tipob.equalsIgnoreCase("lata")){
                b.setPreco((float) 3.50);
                b.setNome(nomeb);
                b.setTipo(tipob);
        } else if (tipob.equalsIgnoreCase("2l")){
            b.setPreco((float)6.0);
            b.setNome(nomeb);
            b.setTipo(tipob);
        } else{
            b.setPreco(0);
            b.setNome("Nenhuma");
            b.setTipo("Nenhum");}
        if (tamanhop.equals("pequena")){
            pizza.setPreco(22);
        } else if (tamanhop.equalsIgnoreCase("media")){
            pizza.setPreco(27);
        } else if (tamanhop.equalsIgnoreCase("grande")){
            pizza.setPreco(32);}
        p.setPizza(pizza);
        p.setSoda(b);
        p.setTotal(pizza.getPreco() + b.getPreco());
        try {
            ClienteVipDAO dao = new ClienteVipDAO();
            insere = dao.InserePedidoVIP(p);
            String destino = "cardapio.jsp?msn="+insere;
            RequestDispatcher rd = request.getRequestDispatcher(destino);
            rd.forward(request, response);
        } catch (Exception e) {
            System.out.println("Deu erro no Servlet:"+e);
        }
        } else if (acao.equalsIgnoreCase("Listar")){
            List<Pedido> listapedido = new ArrayList<Pedido>();
            try{
            ClientePadraoDAO dao = new ClientePadraoDAO();
            listapedido = dao.listaPedido();
            request.setAttribute("pedido", listapedido);
            String destino = "listaPedido.jsp?flag="+1;
            RequestDispatcher rd = request.getRequestDispatcher(destino);
            rd.forward(request, response);
            } catch (Exception e) {
            System.out.println("Deu erro ao listar:"+e);} 
        } else if (acao.equalsIgnoreCase("Status")){
            String status;
            ClienteVipDAO vip = new ClienteVipDAO();

        }  else if (acao.equalsIgnoreCase("Preferenciar Vips")){
            List<Pedido> listapedido = new ArrayList<Pedido>();
            ClientePadraoDAO dao = new ClientePadraoDAO();
            listapedido = dao.preferenciarVip();
            request.setAttribute("pedido", listapedido);
            String destino = "listaPedido.jsp?flag="+2;
            RequestDispatcher rd = request.getRequestDispatcher(destino);
            rd.forward(request, response);
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(TestaPedido.class.getName()).log(Level.SEVERE, null, ex);
        }}

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(TestaPedido.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
