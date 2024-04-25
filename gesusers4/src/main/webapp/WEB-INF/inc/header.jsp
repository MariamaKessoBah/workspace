<%@ page language="java" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Gestion des utilisateurs</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/design.css'/>">
</head>

<body>

<header>
        <h1 id="titreP">Gestion des utilisateurs</h1>
        <hr>
    
    <div class="navbar">
    <span class="separator">|</span>
    <a href='<c:url value="/list"/>'>Accueil</a>
    <span class="separator">|</span>
    <a href='<c:url value="/list"/>'>Lister</a>
    <span class="separator">|</span>
    <a href='<c:url value="/add"/>'>Ajouter</a>
    <span class="separator">|</span>
</div>

</header>
