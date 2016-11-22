/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.uol.pagseguro;

/**
 *
 * @author leandro
 */

import java.math.BigDecimal;

import br.com.uol.pagseguro.domain.PaymentRequest;
import br.com.uol.pagseguro.enums.Currency;
import br.com.uol.pagseguro.enums.DocumentType;
import br.com.uol.pagseguro.enums.ShippingType;
import br.com.uol.pagseguro.exception.PagSeguroServiceException;
import br.com.uol.pagseguro.properties.PagSeguroConfig;

public class CriaPagamento {

    /**
     * Class with a main method to illustrate the usage of the domain class PaymentRequest
     */
    public static void main(String[] args) {

        PaymentRequest paymentRequest = new PaymentRequest();

        paymentRequest.addItem("0001", //
                "Pizza Pekenina", //
                Integer.valueOf(1), //
                new BigDecimal("25.00"), //
                new Long(1000),
                null);
        
        paymentRequest.addItem("0002", //
                "Pizza Mediazita", //
                Integer.valueOf(2), //
                new BigDecimal("35.00"), //
                new Long(750),
                null);
        
        paymentRequest.addItem("0003", //
                "Pizza Gigante", //
                Integer.valueOf(3), //
                new BigDecimal("45.00"), //
                new Long(750),
                null);
        
        paymentRequest.setShippingAddress("BRA", //
                "RS", //
                "Porto Alegre", //
                "Humaita", //
                "90250210", //
                "Av. Palmira Gobbi", //
                "1115", //
                "3o andar");

        paymentRequest.setShippingType(ShippingType.fromValue(5));

        //paymentRequest.setShippingCost(new BigDecimal("2.02"));

        paymentRequest.setSender("João Comprador", //
                "comprador@uol.com.br", //
                "11", //
                "56273440", //
                DocumentType.CPF, //
                "000.000.001-91");

        paymentRequest.setCurrency(Currency.BRL);

        // Sets a reference code for this payment request, it's useful to
        // identify this payment in future notifications
        paymentRequest.setReference("REF1234");

        paymentRequest.setNotificationURL("http://www.meusite.com.br/notification");

        paymentRequest.setRedirectURL("http://www.meusite.com.br/redir");

        try {

            Boolean onlyCheckoutCode = false;

            // Set your account credentials on src/pagseguro-config.properties
            String paymentURL = paymentRequest.register(PagSeguroConfig.getAccountCredentials(), onlyCheckoutCode);

            System.out.println(paymentURL);

        } catch (PagSeguroServiceException e) {
            System.err.println(e.getMessage());
        }
    }

    private CriaPagamento() {
    }
}