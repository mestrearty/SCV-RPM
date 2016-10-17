<%-- 
    Document   : manterPolo
    Created on : 13/09/2016, 10:11:29
    Author     : 041801-Nead
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisa de Polos</title>
    </head>
    <body>
        <h1>Pesquisa de Polos</h1>
        <table border=1>
            <tr>
                <th>Codigo:</th>
                <th>Cidade:</th>
                <th>Logradouro:</th>
                <th>Bairo:</th>
                <th>Telefone:</th>
                <th>Email:</th>
                <th>Numero:</th>
                <th>Modelo:</th>
                <th colspan=2>Ação:</th>
            </tr>
            <c:forEach items="${polos}" var="polo">
                <tr>
                    <td><c:out value="${polo.codPolo}" /></td>
                    <td><c:out value="${polo.cidade}" /></td>
                    <td><c:out value="${polo.logradouro}" /></td>
                    <td><c:out value="${polo.bairro}" /></td>
                    <td><c:out value="${polo.telefone}" /></td>
                    <td><c:out value="${polo.email}" /></td>
                    <td><c:out value="${polo.numero}" /></td>
                    <td><c:out value="${polo.modelo}" /></td>
                    <td><a href="ManterPoloContoller?acao=prepararEditar&codPolo=<c:out value="${polo.codPolo}"/>">Editar</a> </td>
                    <td><a href="ManterPoloContoller?acao=prepararExcluir&codPolo=<c:out value="${polo.codPolo}"/>">Excluir</a> </td>
                </tr>
            </c:forEach>
        </table>
        <form action="ManterPoloController?acao=prepararIncluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
    </body>
</html>
