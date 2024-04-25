<%@ page import="beans.Utilisateur" %>
<%@ page import="java.util.ArrayList" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    Utilisateur utilisateur = (Utilisateur) request.getAttribute("utilisateur");
%>

<%@include file="inc/header.jsp" %>

<section>
    <h1>Modification d'un utilisateur</h1>
    <form method="post" class="form-container">
        <div class="form-group">
            <label>Nom</label>
            <input type="text" name="nom" value="${utilisateur.nom}">
        </div>
        <div class="form-group">
            <label>Prénom</label>
            <input type="text" name="prenom" value="${utilisateur.prenom}">
        </div>
        <div class="form-group">
            <label>Login</label>
            <input type="text" name="login" value="${utilisateur.login}">
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" value="${utilisateur.password}">
        </div>
        <input type="submit" value="Modifier">
    </form>
</section>

<%@include file="inc/footer.jsp" %>

