<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="com.gabrielez.CarRental.entity.Prenotazione.Stato" %>

<div id="customers"> <div class="customer_card active_customer" onclick="servletToGet('./MostraPrenotazioni?username=${sessionScope.loggedUser.username}')">
    <div>
        <div>${sessionScope.loggedUser.name} ${sessionScope.loggedUser.surname}</div>
        <b>${sessionScope.loggedUser.username}</b>
    </div>
</div>
<div class="listaPrenotrazioni">
    <table>
        <tr>
            <th>Auto</th>
            <th>Inizio</th>
            <th>Fine</th>
            <th>Stato Approvazione</th>
        </tr>
        <c:forEach var="prenotazione" items="${listaPrenotazioni}">
            <tr>
                <td>${prenotazione.auto.costruttore} ${prenotazione.auto.modello}</td>
                <td><fmt:formatDate type = "date" value = "${prenotazione.inizio}"/></td>
                <td><fmt:formatDate type = "date" value = "${prenotazione.fine}"/></td>
                <td class="cellaStatoPrenotazione">
                    <c:choose>
                        <%--Non riesco ad effettuare la comparazione con Enum dentro a ${}--%>
                        <c:when test="${prenotazione.stato eq 'APPROVATO'}">
                            <div>✔️</div>
                        </c:when>
                        <c:when test="${prenotazione.stato eq 'RIFIUTATO'}">
                            <div>❌</div>
                        </c:when>
                        <c:otherwise>
                            <div>🕒</div>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <hr>
        </c:forEach>
    </table>
</div>
</div>

