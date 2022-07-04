<%@ page pageEncoding="UTF-8" %>
<html>
    <head>
        <title>Test - Accueil</title>
    </head>
    <body>
        <%@ include file="menu.jsp" %>
        <c:set var="createur" value="Erwan" scope="page"/>
        <p>
            Bienvenue sur l'accueil ${ auteur.prenom } ${ auteur.nom }
        </p>
        <p>
            <c:set target="${auteur}" property="prenom" value="${createur}" />
            <c:out value="Vous êtes connectés en tant que ${ auteur.prenom } ${ auteur.nom }" 
            default="Vous n'êtes pas connectés" />
        </p>
        <p>
            <c:if test="${ auteur.prenom == 'Erwan' }" var="variable" scope="session">
                <c:out value="Cette page a été créée par Erwan !" />
            </c:if> <!-- variable est un attribut de session -->
            <!-- cette syntaxe ne permet pas les else/elif -->
        </p>
        <p>
            <c:choose>
                <c:when test="${ auteur.prenom == 'Erwan' }">
                    <c:out value="Cette page a été créée par Erwan !" />
                </c:when>
                <c:when test="${ auteur.prenom == createur }">
                    <c:out value="Vous avez créé cette page !" />
                </c:when>
                <c:otherwise>
                    <c:out value="Cette page n'a pas été créée par Erwan !" />
                </c:otherwise>
            </c:choose> 
            <!-- equivalent à if/elif/else -->
        </p>
    </body>
</html>