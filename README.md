Ceci est mon premier projet pour apprendre javaEE/Maven.

Structure du projet:
src/main/ :
    - java/ : classes java
    - resources/ : 
    - webapp/ : html (jsp), css, ...
    - webapp/WEB-INF : fichiers de configuration et nos vues aussi ?

Pour actualiser le serveur :
 - mvn clean package
 - clic droit et "publish server"

Création du projet:
 - clic droit : create maven project
 - ajouter dossier java
 - dans java projects, ajouter un servlet : ajouter un package puis une classe (sans @WebServlet())
 - mvn clean package
 - créer un serveur et clic droit sur test.war et Run on server

Un fichier jsp est une sorte de fichier html améliorer, dans lequel on peut mettre du code en java

 Structure d'un servlet:
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

    protected void doGet(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {

    }
}

Structure du web.xml : 
<!--
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://xmlns.jcp.org/xml/ns/javaee" xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_4_0.xsd" version="4.0">  <servlet>
    <servlet-name>Test</servlet-name>
    <servlet-class>com.octest.servlets.Test</servlet-class>
  </servlet>
  <servlet-mapping>
    <servlet-name>Test</servlet-name>
    <url-pattern>/bonjour</url-pattern>
  </servlet-mapping>
</web-app>
-->

À ajouter dans le pom.xml:
<!--
<dependency>
  <groupId>javax.servlet</groupId>
  <artifactId>javax.servlet-api</artifactId>
  <version>3.1.0</version>
  <scope>provided</scope>
</dependency>
-->
On préfère utiliser la jstl plutôt que de mettre du java dans un .jsp
Définir une variable dans un .jsp:
<!-- <c:set var="pseudo" value="erwan" scope="page" /> -->
scope désigne la portée de la variblé crée (page, session, application)
supprimer une variable:
<!--<c:remove var="pseudo" scope="page" />-->
modifier une variable:
<!-- <c:set target="${ auteur }" property="prenom" value="Mathieu" /> -->

Normalement, on devrait pouvoir mettre l'encodage utf-8 dans le taglibs.jsp mais ça ne marche pas
java dans un fichier .jsp:
<!-- 
  <% 
    for (int i=0; i<5; i++) {
      out.println(String.format("compteur %d <br>",i));
    }
  %>
-->
