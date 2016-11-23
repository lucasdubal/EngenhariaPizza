package dao;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Cliente;
import modelo.Pedido;
import modelo.Pizza;

public class ClienteVipDAO {

    private Connection con;
    private PreparedStatement query;
    private ResultSet result;
    
    public ClienteVipDAO(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
    
    public String InserePedidoVIP(Pedido p) {
        int verifica=0;
        String mensagem=null;
            try {
                this.con = DriverManager.getConnection("jdbc:mysql://localhost/webentrega","root","");
                Statement stm = con.createStatement();
                ResultSet rs = stm.executeQuery("Select count(idpedido) from pedido");
                while (rs.next()){
                    verifica = rs.getInt(1);
                        }
                        if (verifica < 10){
                            this.query = this.con.prepareStatement("insert into pedido(idcliente,total,tamanhoPizza,pizzaSabor,tipo,bebidaNome, bebidaTipo) values (?,?,?,?,?,?,?)");
                            this.query.setString(1,"2");
                            this.query.setString(2, String.valueOf(p.getTotal()));
                            this.query.setString(3, p.getPizza().getTamanho());
                            this.query.setString(4, p.getPizza().getNome());
                            this.query.setString(5, p.getCliente().getTipo());
                            this.query.setString(6, p.getSoda().getNome());
                            this.query.setString(7, p.getSoda().getTipo());
                            this.query.executeUpdate();
                            this.query.close();
                            mensagem = "Inserido";}
                        else {
                            mensagem = "Lista de pedidos está cheia";
                        }
			this.con.close();                   
		} catch (Exception e) {
			System.out.println("Nao rolou no DAO:"+e);
		}
                return mensagem;
	}
     
    public String statusPedido(int tipo, Pedido p){
        
        String status = "";
        
        try {
            this.con = DriverManager.getConnection("jdbc:mysql://localhost/webentrega","root","");
            if (tipo != 2 ){
                System.out.println("Problema encontrado. O cliente não é VIP");
            } else if (tipo == 2){
                status = p.getStatus();
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClienteVipDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    }
 

}
