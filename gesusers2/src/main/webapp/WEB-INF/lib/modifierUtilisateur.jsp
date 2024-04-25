<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ page import="beans.Utilisateur"%>

<%
    Utilisateur utilisateur = (Utilisateur) request.getAttribute("utilisateur");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Modification d'un utilisateur</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/css/design.css">
</head>
<body>
    <!-- Inclusion du header -->
    <%@include file="header.jsp" %>

    <h1>Modification d'un utilisateur</h1>
    <form method="post">
        <fieldset>
            <legend>Modification d'un utilisateur</legend>
            <label>Nom</label><br>
            <input type="text" name="nom" value="<%= utilisateur.getNom()%>"><br>
            <label>Prénom</label><br>
            <input type="text" name="prenom" value="<%= utilisateur.getPrenom()%>"><br>
            <label>Login</label><br>
            <input type="text" name="login" value="<%= utilisateur.getLogin()%>"><br>
            <label>Password</label><br>
            <input type="password" name="password" value="<%= utilisateur.getPassword()%>"><br>
            <input type="submit" value="Modifier">
        </fieldset>
    </form>

    <!-- Inclusion du footer -->
    <%@include file="footer.jsp" %>
</body>
</html>
