<%@ page pageEncoding="UTF-8" %>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Test</title>
    </head>
    <body>
        <%@ include file="menu.jsp" %>
        <p>
            Bonjour ${ !empty name ? name : '' }
            <!--Expression Language plutot que java dans jsp <% 
                String heure = (String) request.getAttribute("heure");
                if (heure.equals("jour")) {
                    out.println("Bonjour");
                }
                else {
                    out.println("Bonsoir");
                }
                String name = (String) request.getAttribute("name");
                if (name != null) {
                    out.println(String.format(" %s", name));
                }
                out.println(" !");
            
            %>
            -->
        </p>
        <c:if test="${ !empty sessionScope.username }">
            <p>
                Bonjour ${sessionScope.username}, vous êtes connecté.
            </p>
        </c:if>
        <p>
            ${ variable }
            <!-- <%
                String variable = (String) request.getAttribute("variable"); //on recup l'attribut
                out.println(variable);
            %> -->
        </p>
        <c:forEach begin="0" end="10" step="1" var="i">
            <p>Messsage n°${ i }</p>
        </c:forEach>
        <!-- Attention : i va de 0 à 10 inclus -->
        <c:forEach items="${ titres }" var="titre" begin="1" end="2" varStatus="status">
            <p>N°<c:out value="${status.count }"/> : <c:out value="${ titre }"/></p>
        </c:forEach>
        <!-- Attention : affiche les titres 1 et 2 -->
        <!-- status.count : compteur de boucle commence à 1 -->
        <!-- status.index : index de boucle, commence à 0 -->
        <!-- status.isFirst : est-ce la première boucle ? -->
        <!-- status.isLast : est-ce la dernière boucle ? -->
        <!-- status.isEven : est-ce une boucle pair ? -->
        <!-- status.isOdd : est-ce une boucle impaire ? -->
        <!-- status.isParam : est-ce une boucle paramétrée ? -->
        <!-- status.isEmpty : est-ce une boucle vide ? -->
        <!-- status.isNotEmpty : est-ce une boucle non vide ? -->
        <c:forTokens var="morceau" items="Une petite phrase" delims=" " varStatus="status">
            <p>
                <c:out value="${ status.index }"/> : <c:out value="${ morceau }"/>
            </p>
        </c:forTokens>
        <!-- seule boucle for qui existe en expression language :
            <c:forEach items="${liste}" var="elem">
                <p>elem</p>
            </c:forEach> -->
            <!-- <% 
                for (int i=0; i<5; i++) {
                    out.println(String.format("compteur %d <br>",i));
                }
            %> -->
        </p>
    </body>
</html>
