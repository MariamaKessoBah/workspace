<%@ page language="java" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Suppression d'un utilisateur</title>
</head>
<body>
    <h1>Suppression d'un utilisateur</h1>
    <form method="post" action="remove">
        <label>ID de l'utilisateur à supprimer</label><br>
        <input type="text" name="userId"><br>
        <input type="submit" value="Supprimer">
    </form>
</body>
</html>
