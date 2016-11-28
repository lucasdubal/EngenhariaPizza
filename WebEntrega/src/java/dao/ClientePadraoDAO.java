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
import modelo.Bebida;
import modelo.Cliente;
import modelo.Pedido;
import modelo.Pizza;

public class ClientePadraoDAO {

    private Connection con;
    private PreparedStatement query;
    private ResultSet result;
    
    public ClientePadraoDAO(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
    
    public String InserePedido(Pedido p) {
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
                            this.query.setString(1,"1");
                            this.query.setString(2, String.valueOf(p.getTotal()));
                            this.query.setString(3, p.getPizza().getTamanho());
                            this.query.setString(4, p.getPizza().getNome());
                            this.query.setString(5, "p");
                            this.query.setString(6, p.getSoda().getNome());
                            this.query.setString(7, p.getSoda().getTipo());
                            this.query.executeUpdate();
                            this.query.close();
                        }
                        else {
                            mensagem = "Lista de pedidos está cheia";
                        }
			this.con.close();                   
		} catch (Exception e) {
			System.out.println("Nao rolou no DAO:"+e);
		}
                return mensagem;
	}
    
    public List<Pedido> listaPedido() throws SQLException{
        
        List<Pedido> lista = new ArrayList<Pedido>();
        
        try {
            
            this.con = DriverManager.getConnection("jdbc:mysql://localhost/webentrega","root","");
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("Select * from pedido");
            while(rs.next()) {
                Pizza pizza = new Pizza();
                Pedido pedido = new Pedido();
                pedido.setId(rs.getInt(1));
                pizza.setNome(rs.getString(5));
                pizza.setTamanho(rs.getString(4));
                pedido.setPizza(pizza);
                pedido.setTotal(rs.getFloat(3));
                Cliente cliente = new Cliente();
                cliente.setIdCliente(rs.getInt(2));
                cliente.setTipo(rs.getString(6));
                pedido.setCliente(cliente);
                Bebida bebida = new Bebida();
                bebida.setNome(rs.getString(7));
                bebida.setTipo(rs.getString(8));
                pedido.setSoda(bebida);
                lista.add(pedido);
            }
           
            this.con.close();
            stm.close();
        } catch (Exception e) {
            System.out.println("Deu erro:"+e);
        }
        return lista;
    }
    
            public List<Pedido> preferenciarVip() throws SQLException{
        
        List<Pedido> lista = new ArrayList<Pedido>();
        
        try {
            
            this.con = DriverManager.getConnection("jdbc:mysql://localhost/webentrega","root","");
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("Select * from pedido order by tipo");
            while(rs.next()) {
                Pizza pizza = new Pizza();
                Pedido pedido = new Pedido();
                pedido.setId(rs.getInt(1));
                pizza.setNome(rs.getString(5));
                pizza.setTamanho(rs.getString(4));
                pedido.setPizza(pizza);
                pedido.setTotal(rs.getFloat(3));
                Cliente cliente = new Cliente();
                cliente.setIdCliente(rs.getInt(2));
                cliente.setTipo(rs.getString(6));
                pedido.setCliente(cliente);
                Bebida bebida = new Bebida();
                bebida.setNome(rs.getString(7));
                bebida.setTipo(rs.getString(8));
                pedido.setSoda(bebida);
                lista.add(pedido);
                
            }
           
            this.con.close();
            stm.close();
        } catch (Exception e) {
            System.out.println("Deu erro:"+e);
        }
        return lista;
    }

}
