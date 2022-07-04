package com.octest.forms;

import javax.servlet.http.HttpServletRequest;

public class ConnectionForm {
    private String resultat;
    private boolean connected;

    public void verifierIdentifiants(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (password.equals(username + "123")) {
            resultat = "Vous êtes connectés " + username;
            connected = true;
        } 
        else {
            resultat = "Identifiants incorrects";
            connected = false;
        }
    }
    public String getResultat() {
        return this.resultat;
    }

    public void setResultat(String resultat) {
        this.resultat = resultat;
    }

    public boolean isConnected() {
        return this.connected;
    }

    


    
}
