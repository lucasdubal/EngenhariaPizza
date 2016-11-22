/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author leandro
 */
package br.com.uol.pagseguro;

import br.com.uol.pagseguro.domain.AccountCredentials;
import br.com.uol.pagseguro.exception.PagSeguroServiceException;
import br.com.uol.pagseguro.properties.PagSeguroConfig;
import br.com.uol.pagseguro.service.SessionService;

/**
 * Class with a main method to illustrate the usage of the SessionService to create Session to Direct Payment
 */
public class CriaSessao {

    public static void main(String[] args) {
        try {
            final AccountCredentials accountCredentials = PagSeguroConfig.getAccountCredentials();

            final String sessionId = SessionService.createSession(accountCredentials);

            System.out.println("Session ID: " + sessionId);
        } catch (PagSeguroServiceException e) {
            System.err.println(e.getMessage());
        }
    }

}

