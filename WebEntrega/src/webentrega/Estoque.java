/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webentrega;

/**
 *
 * @author leandro
 */
public class Estoque {
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
    
    //Métodos da classe
    public boolean adquirirPizza(){
        if (getNroPizzas() < 10){
            return true;
        }
        else
            return false;
    }
    
    public boolean adquirirBebida(){
        if (nroBebidas < 10)
            return true;
        else
            return false;
    }
}
