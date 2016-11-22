/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
import modelo.Bebida;
import modelo.Pizza;
import modelo.Cliente;
/**
 *
 * @author leandro
 */
public class Pedido {
    
    private int id;
    private Cliente cliente;
    private Bebida soda;
    private Pizza pizza;
    private float total;
    private String status;

    /**
     * @return the soda
     */
    public Bebida getSoda() {
        return soda;
    }

    /**
     * @param soda the soda to set
     */
    public void setSoda(Bebida soda) {
        this.soda = soda;
    }

    /**
     * @return the bebida
     */
    public Pizza getPizza() {
        return pizza;
    }

    /**
     * @param bebida the bebida to set
     */
    public void setPizza(Pizza p) {
        this.pizza = p;
    }
    
    
    public String getNomePizza(){
        return this.pizza.getNome();
    }
    
    public String getTamanho(){
        return this.pizza.getTamanho();
    }

    /**
     * @return the total
     */
    public float getTotal() {
        return total;
    }

    /**
     * @param total the total to set
     */
    public void setTotal(float total) {
        this.total = total;
    }

    /**
     * @return the cliente
     */
    public Cliente getCliente() {
        return cliente;
    }

    /**
     * @param cliente the cliente to set
     */
    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        if (this.getId() < 4){
            this.status = "Entrando no forno";
        } else if (this.getId() >=4 && this.getId()<7){
            this.status = "Quase pronta";
        } else 
            this.status = "Quase chegando na sua casa!";
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }
    
    
    
}
