package com.octest.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Prenom extends HttpServlet{
    private static final long serialVersionUID = 1L;
    
    public Prenom(){
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/prenom.jsp").forward(request, response);

        
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String prenom = request.getParameter("prenom"); //recupere la prenom du formulaire
        request.setAttribute("prenom", prenom); //on envoie le prenom a la jsp
        this.getServletContext().getRequestDispatcher("/WEB-INF/prenom.jsp").forward(request, response);
        //on renvoie la page prenom.jsp, la même que pour la requete get
    }

    
}
