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
    
    public void InserePedidoVIP(Pedido p) {
		try {
			this.con = DriverManager.getConnection("jdbc:mysql://localhost/webentrega","root","");
                        this.query = this.con.prepareStatement("insert into pedido(idcliente,total,tamanhoPizza,pizzaSabor,tipo) values (?,?,?,?,?)");
			this.query.setString(1,"2");
			this.query.setString(2, String.valueOf(p.getTotal()));
                        this.query.setString(3, p.getPizza().getTamanho());
                        this.query.setString(4, p.getPizza().getNome());
                        this.query.setInt(5, 2);
                        this.query.executeUpdate();
                        Cliente c = new Cliente();
                        c.setTipo(2);
                        p.setCliente(c);
                        this.query.close();
			this.con.close();
                        
		} catch (Exception e) {
			System.out.println("Nao rolou:"+e);
		}
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