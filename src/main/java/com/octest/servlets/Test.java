package com.octest.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Test(){
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] titres = {"Titre 1", "Titre 2", "Titre 3"};
        request.setAttribute("titres", titres);
       String prenom = request.getParameter("name");//dans l'url : ?name=bidule&age=...
        String message = "Au revoir !";
        request.setAttribute("name", prenom); 
        request.setAttribute("variable", message); //on definit un nom et l'attribut associé, on pourra le recup dans le jsp
        request.setAttribute("heure", "soir"); //heure = "soir"
        this.getServletContext().getRequestDispatcher("/WEB-INF/bonjour.jsp").forward(request, response);
        //on recupere le fichier jsp/html et c'est notre reponse
        //dans web-inf on mettra donc nos vues
        
        /*response.setContentType("text/html"); //on indique que l'on va renvoyer du html
        response.setCharacterEncoding("UTF-8");

        PrintWriter out = response.getWriter(); //on va pouvoir afficher des lignes
        out.println("Bonjour!"); //ecrit "bonjour!" sur la page*/
        


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {

    }
}

