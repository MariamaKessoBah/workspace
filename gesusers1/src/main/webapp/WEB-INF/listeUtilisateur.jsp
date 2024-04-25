<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Liste des utilisateurs</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/design.css">
</head>
<body>
    <!-- Inclusion du header -->
    <jsp:include page="header.jsp" />

    <h1>Liste des utilisateurs</h1>

    <c:choose>
        <c:when test="${empty utilisateurs}">
            <p>Désolé, la liste des utilisateurs est vide pour le moment !</p>
        </c:when>
        <c:otherwise>
            <table border="1" cellspacing="0" cellpadding="10">
                <tr>
                    <th>ID</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Login</th>
                    <th>Password</th>
                    <th colspan="2">Action</th>
                </tr>
                <c:forEach var="utilisateur" items="${utilisateurs}">
                    <tr>
                        <td>${utilisateur.id}</td>
                        <td>${utilisateur.nom}</td>
                        <td>${utilisateur.prenom}</td>
                        <td>${utilisateur.login}</td>
                        <td>${utilisateur.password}</td>
                        <td><a href="update?id=${utilisateur.id}">Modifier</a></td>
                        <td><a href="delete?id=${utilisateur.id}" onclick="return confirm('En etes vous sur')">Supprimer</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:otherwise>
    </c:choose>

    <!-- Inclusion du footer -->
    <jsp:include page="footer.jsp" />
</body>
</html>