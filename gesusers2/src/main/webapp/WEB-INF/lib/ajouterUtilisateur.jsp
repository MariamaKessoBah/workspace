<%@ page language="java" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Ajout d'un utilisateur</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/css/design.css">
</head>
<body>
    <!-- En-tête -->
    <%@include file="header.jsp" %>

    <h1>Ajout d'un utilisateur</h1>
    <form  method="post">
        <label>Nom</label><br>
        <input type="text" name="nom"><br>
        <label>Pr&eacute;nom</label><br>
        <input type="text" name="prenom"><br>
        <label>Login</label><br>
        <input type="text" name="login"><br>
        <label>Password</label><br>
        <input type="password" name="password"><br>
        <input type="submit" value="Ajouter">
    </form>

    <!-- Pied de page -->
    <%@include file="footer.jsp" %>
</body>
</html>
