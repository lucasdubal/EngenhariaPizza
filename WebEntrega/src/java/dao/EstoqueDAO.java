/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Estoque;

/**
 *
 * @author user
 */
public class EstoqueDAO {
    
     private Connection con;
    private PreparedStatement query;
    private ResultSet result;
    
    public EstoqueDAO(){
        try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}    
    }
                    
     public String utilizarPizza() throws SQLException{
         
         String mensagem=null;
         try {
            this.con = DriverManager.getConnection("jdbc:mysql://localhost/webentrega","root","");
            this.query = this.con.prepareStatement("update estoque set nroPizza = nroPizza - 5 where id = 1");
            this.query.executeUpdate();
            this.query.close();
            this.con.close();  
    } catch(Exception e) {
            System.out.println("Erro ao utilizar pizzas:"+e);
    }
         return "Utilizado!";
    }
    
    public String utilizarBebida() throws SQLException{
         try {
            this.con = DriverManager.getConnection("jdbc:mysql://localhost/webentrega","root","");
            this.query = this.con.prepareStatement("update estoque set nroBebida= nroBebida - 5 where id = 1");
            this.query.executeUpdate();
            this.query.close();
            this.con.close();  
    } catch(Exception e) {
            System.out.println("Erro ao utilizar bebidas:"+e);
    }
         return "Utilizado!";
    }
    
    //Métodos da classe
    public String adquirirPizza() throws SQLException{
        String pizza = null;
         try {
            this.con = DriverManager.getConnection("jdbc:mysql://localhost/webentrega","root","");
            this.query = this.con.prepareStatement("update estoque set nroPizza = nroPizza + 30 where id = 1");
            this.query.executeUpdate();
            this.query.close();
            this.con.close();  
    } catch(Exception e) {
            System.out.println("Erro ao adquirir pizzas:"+e);
    }
         return "Adquirido!";
    }
    
    public String adquirirBebida() throws SQLException{
         try {
            this.con = DriverManager.getConnection("jdbc:mysql://localhost/webentrega","root","");
            this.query = this.con.prepareStatement("update estoque set nroBebida= nroBebida + 30 where id = 1");
            this.query.executeUpdate();
            this.query.close();
            this.con.close();  
    } catch(Exception e) {
            System.out.println("Erro ao adquirir bebidas:"+e);
    }
         return "Adquirido!";
    }
    
    public String getPizza() throws SQLException{
        
        String pizza=null;
        try {
        this.con = DriverManager.getConnection("jdbc:mysql://localhost/webentrega","root","");
        Statement stm = con.createStatement();
        ResultSet rs = stm.executeQuery("Select nroPizza from estoque where id = 1");
        while (rs.next()){
            pizza = rs.getString("nroPizza");
        }
        } catch(Exception e) {
            System.out.println("Erro:"+e);
        }
        return pizza;
    }

    public String getBebida() throws SQLException{
        
        String bebida=null;
        try {
        this.con = DriverManager.getConnection("jdbc:mysql://localhost/webentrega","root","");
        Statement stm = con.createStatement();
        ResultSet rs = stm.executeQuery("Select nroBebida from estoque where id = 1");
        while (rs.next()){
            bebida = rs.getString("nroBebida");
        }
        } catch(Exception e) {
            System.out.println("Erro:"+e);
        }
        return bebida;
    }
}
