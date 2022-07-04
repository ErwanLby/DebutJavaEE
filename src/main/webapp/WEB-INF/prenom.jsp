<%@ page pageEncoding="UTF-8" %>
<html>
    <head>
        <title>Formulaire Prénom</title>
    </head>
    <body>
        <%@ include file="menu.jsp" %>
        <p>
            Bienvenue sur le formulaire !
        </p>
        <c:if test="${!empty prenom}">
            <p>
                Vous avez déjà saisi le prénom : <c:out value="${prenom}" />
            </p>
        </c:if>
        
        <form method="post" action="prenom"> <!-- appel la méthode doPost() de la classe Prenom -->
            <p>
                <label for="prenom">Votre prénom : </label>
                <input type="text" name="prenom" id="prenom" />
            </p>
            <p>
                <input type="submit" value="Valider" />
            </p>
        
    </body>
</html>