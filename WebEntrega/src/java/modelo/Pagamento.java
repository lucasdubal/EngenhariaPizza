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
public class Pagamento {
    private double valor;
    private String formaPgto;
    private String situacaoPgto;
    
    //getters e setters
    public double getValor(){
        return valor;
    }
    
    public String getFormaPgto(){
        return formaPgto;
    }
    
    public String getSituacaoPgto(){
        return situacaoPgto;
    }
    
    public void setValor(double val){
        valor = val;
    }
    
    public void setFormaPgto(String pag){
        formaPgto = pag;
    }
    
    public void setSituacaoPgto(String spgto){
        situacaoPgto = spgto;
    }
    
    //public String 
}
