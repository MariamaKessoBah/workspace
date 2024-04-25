<%@ page import="beans.Utilisateur" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="inc/header.jsp" %>


<section>
    <c:if test="${!empty statusMessage}">
        <div class="alert alert-${status ? 'success' : 'danger'}">
            ${statusMessage}      
        </div>
    </c:if>
    
    <h1 id="titreP">Ajouter un utilisateur</h1>
    <form method="post" class="form-container">
        <div class="form-group">
            <label>Nom</label>
            <input type="text" name="nom" value="${utilisateur == null ? '' : utilisateur.nom}">
            <c:if test="${!empty erreurs.nom}">
                <span class="errorText">${erreurs.nom}</span>
            </c:if>
        </div>
        <div class="form-group">
            <label>Prénom</label>
            <input type="text" name="prenom" value="${utilisateur == null ? '' : utilisateur.prenom}">
            <c:if test="${!empty erreurs.prenom}">
                <span class="errorText">${erreurs.prenom}</span>
            </c:if>
        </div>
        <div class="form-group">
            <label>Login</label>
            <input type="text" name="login" value="${utilisateur == null ? '' : utilisateur.login}">
            <c:if test="${!empty erreurs.login}">
                <span class="errorText">${erreurs.login}</span>
            </c:if>
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password">
            <c:if test="${!empty erreurs.password}">
                <span class="errorText">${erreurs.password}</span>
            </c:if>
        </div>
        <div class="form-group">
            <label>Password (confirmation)</label>
            <input type="password" name="passwordBis">
            <c:if test="${!empty erreurs.passwordBis}">
                <span class="errorText">${erreurs.passwordBis}</span>
            </c:if>
        </div>
        <input type="submit" value="Ajouter">
    </form>
</section>

<%@ include file="inc/footer.jsp" %>


