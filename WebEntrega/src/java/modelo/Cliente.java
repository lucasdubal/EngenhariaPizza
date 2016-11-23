/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author leandro
 */
public class Cliente {
    private int idCliente;
    private String nome, endereco, email, telefone, tipo;
    private Pedido pedido;
    
    
// Métodos Getters e Setters
public int getIdCliente(){
    return idCliente;
}

public String getNome(){
    return nome;
}

public String getEndereco(){
    return endereco;
}

public String getEmail(){
    return email;
}

public String getTelefone(){
    return telefone;
}

public Pedido getPedido(){
    return pedido;
}

public void setIdCliente(int id){
    idCliente = id;
}

public void setNome(String n){
    nome = n;
}

public void setEndereco(String ed){
    endereco = ed;
}

public void setEmail(String em){
    email = em;
}

public void setTelefone(String tel){
    telefone = tel;
}
    /**
     * @return the tipo
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * @param tipo the tipo to set
     */
    /**
     * @param tipo the tipo to set
     */
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

}
