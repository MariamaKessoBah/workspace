<%@ page import="beans.Utilisateur" %>
<%@ page import="java.util.ArrayList" %>

<%@include file="inc/header.jsp" %>


<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<section>
    <h1 id="titreP">Liste des utilisateurs</h1>
	<c:choose>
		<c:when test="${ empty utilisateurs}">

       		 <p>Desolé, la liste des utilisateurs est vide pour le moment !</p>
        
  		</c:when>
	<c:otherwise>
	
<table border="1" cellspacing="0" cellpadding="10">
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Prenom</th>
                <th>Login</th>
                <th>Password</th>
                <th colspan="2">Action</th> 
            </tr>
            <c:forEach var="utilisateur" items = "${ utilisateurs}">
                <tr>
                    <td><c:out value="${utilisateur.id }" /></td>
                    <td><c:out value="${utilisateur.nom }" /></td>
                    <td><c:out value="${utilisateur.prenom }" /></td>
                    <td><c:out value="${utilisateur.login }" /></td>
                    <td><c:out value="${utilisateur.password }" /></td>
                    <td><a href="update?id=${ utilisateur.id}">Modifier</a></td>
                    <td><a href="delete?id=${ utilisateur.id}" onclick="return confirm('Etes vous sur de vouloir supprimer ?')">Supprimer</a></td>
                </tr>
           </c:forEach>
        </table>
</c:otherwise>

</c:choose>
        
</section>
    
<%@include file="inc/footer.jsp" %>