package com.octest.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import com.octest.forms.ConnectionForm;

public class RealLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RealLogin() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //HttpSession session = request.getSession();
        //String username = (String) session.getAttribute("username");
        //session.invalidate(); //permet de supprimer la session
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) {
                    String username = cookie.getValue();
                    request.setAttribute("username", username);
                }
            }
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/reallogin.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        //String password = request.getParameter("password");

        ConnectionForm form = new ConnectionForm();
        form.verifierIdentifiants(request);
        if (form.isConnected()) {

            Cookie cookie = new Cookie("username", username);
            cookie.setMaxAge(60 * 60); //cookie expire dans 1 heure, à la fin de la sessions par defaut
            response.addCookie(cookie);
        }
        request.setAttribute("form", form);
        //Cookie cookie = new Cookie("username", username);
        //cookie.setMaxAge(60 * 60); //cookie expire dans 1 heure 
        //response.addCookie(cookie);
        
        //HttpSession session = request.getSession(); // On récupère la session de l'utilisateur
        //session.setAttribute("username", username); //On sauvegarde le nom d'utilisateur dans la session

        this.getServletContext().getRequestDispatcher("/WEB-INF/reallogin.jsp").forward(request, response);
    }

    
}
