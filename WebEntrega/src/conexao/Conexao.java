package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
    
    private Connection conexao;
    
    public Conexao() throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        conexao = DriverManager.getConnection("jdbc:mysql://localhost/webentrega", "root", "");
    }
    
    public static void main(String[] args) {
        try{
            new Conexao();
            System.out.println("Conectou com sucesso!");
        } catch (Exception e){
            System.out.println("Não conectou:"+e);
        }
    }
}
