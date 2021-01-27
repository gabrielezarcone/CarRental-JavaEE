<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<div id="infoUser">
    <h1>Username</h1>
    <p>${sessionScope.loggedUser.username}</p>
    <h1>Nome</h1>
    <p>${sessionScope.loggedUser.name}</p>
    <h1>Cognome</h1>
    <p>${sessionScope.loggedUser.surname}</p>
    <h1>Data di nascita</h1>
    <p><fmt:formatDate pattern="dd/MM/yyyy" value="${sessionScope.loggedUser.birth_date}"/> </p>
</div>