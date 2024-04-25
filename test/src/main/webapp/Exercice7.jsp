<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Page de Connexion</title>
</head>
<body>
    <%
        String login_attendu = "admin";
        String motDePasse_attendu = "passer";

        String login_saisi = request.getParameter("login");
        String motDePasse_saisi = request.getParameter("motDePasse");

        if (login_saisi != null && motDePasse_saisi != null) {
            if (login_saisi.equals(login_attendu) && motDePasse_saisi.equals(motDePasse_attendu)) {
    %>
                <h1>Bienvenue, <%= login_saisi %> ! La connexion a été validée.</h1>
    <%
            } else {
    %>
                <p>La connexion a échoué. <a href="exercice7.jsp?login=<%= login_saisi %>">Retour</a></p>
    <%
            }
        } else {
    %>
            <form action="exercice7.jsp" method="post">
                <label for="login">Login :</label>
                <input type="text" name="login" value="<%= (login_saisi != null) ? login_saisi : "" %>" required>
                <br>
                <label for="motDePasse">Mot de passe :</label>
                <input type="password" name="motDePasse" required>
                <br>
                <input type="submit" value="Se connecter">
            </form>
    <%
        }
    %>
</body>
</html>
