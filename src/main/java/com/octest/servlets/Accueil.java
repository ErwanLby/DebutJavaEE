package com.octest.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.octest.beans.Auteur;

public class Accueil extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Accueil(){
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Auteur auteur = new Auteur(); //je n'ai pas créer de constructeur avec tous les champs
        auteur.setNom("dupont");
        auteur.setPrenom("Jean-Mich");
        auteur.setActif(true);
        request.setAttribute("auteur", auteur); //on envoie l'objet a la jsp
        this.getServletContext().getRequestDispatcher("/WEB-INF/accueil.jsp").forward(request, response);       
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {

    }
}

