<%@ page pageEncoding="UTF-8" %>
<html>
    <head>
        <title>Vrai Login</title>
    </head>
    <body>
        <%@ include file="menu.jsp" %>
        <p>
            Connexion
        </p>
        <!-- <c:out value="${username}"/>
        <c:if test="${ !empty sessionScope.username }"> ou ${ username } car cookie
            <p>
                Bonjour ${sessionScope.username}, vous êtes connecté.
            </p>
        </c:if> -->
        <c:if test="${!empty form.resultat}">
            <p>
                <c:out value="${form.resultat}"/>
            </p>
        </c:if>
        <form action="realLogin" method="post">
            <table>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" id="username"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" id="password"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Login"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
