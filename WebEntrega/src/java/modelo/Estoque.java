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
public class Estoque {
    private Bebida bebida;
    private Pizza pizza;
    private int nroPizzas;
    private int nroBebidas;
    
    //getters e setters
    public int getNroPizzas(){
        return nroPizzas;
    }
    
    public int getNroBebidas(){
        return nroBebidas;
    }
    
    public void setNroPizzas(int nPizzas){
        nroPizzas = nPizzas;
    }
    
    public void setNroBebidas(int nBebidas){
        nroBebidas = nBebidas;
    }
    
    public void utilizarPizza(){
        this.setNroPizzas(nroPizzas - 5);
    }
    
    public void utilizarBebida(){
        this.setNroBebidas(nroBebidas - 10);
    }
    
    //Métodos da classe
    public boolean adquirirPizza(){
        if (getNroPizzas() < 10){
            this.setNroPizzas(this.getNroPizzas()+20);
            return true;
        }
        else
            return false;
    }
    
    public boolean adquirirBebida(){
        if (getNroBebidas() < 10){
            this.setNroBebidas(this.getNroBebidas()+20);
            return true;
        }  
        else
            return false;
    }
}
