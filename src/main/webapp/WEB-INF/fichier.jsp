<%@ page pageEncoding="UTF-8" %>
<html>
    <head>
        <title>Envoi de fichier</title>
    </head>
    <body>
        <%@ include file="menu.jsp" %>
        <c:if test="${ !empty fichier}" >
            <p>
                <c:out value="Le fichier '${fichier}' (${ description }) a été envoyé." />
            </p>
        </c:if>
        <form action="fichier" method="post" enctype="multipart/form-data">
        <p>
            <label for="description">Description</label>
            <input type="text" name="description" id="description" />
        </p>
        <p>
            <label for="fichier">Fichier :</label>
            <input type="file" name="fichier" id="fichier" />
        </p>
            <input type="submit" value="Envoyer" />
        </form>
    </body>
</html>