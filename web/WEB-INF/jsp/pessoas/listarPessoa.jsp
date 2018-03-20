<%-- 
    Document   : cadastro
    Created on : 25/04/2017, 23:25:23
    Author     : Edson OliveiraJr <edson@din.uem.br> - www.din.uem.br/~smarty
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<link href="<c:url value="resources/css/style.css" />" rel="stylesheet" type="text/css" />-->
        <title>Listar Pessoas</title>
        
        <script src="<c:url value='resources/js/jquery-3.2.1.min.js' />" ></script>
        <script src="<c:url value='resources/js/script.js' />" ></script>
    </head>
    <body>
        <table border="1" style="border-collapse: collapse;">
            <tr>
                <th>Nome</th>
                <th>Sobrenome</th>
                <th>Nascimento</th>
                <th>CPF</th>
            </tr>
            <c:forEach var="pessoa" items="<%= session.getAttribute("pessoas") %>">
                <tr>
                    <td><c:out value="${pessoa.getNome()}" /></td>
                    <td><c:out value="${pessoa.getSobrenome()}" /></td>
                    <td><c:out value="${pessoa.getNascimento()}" /></td>
                    <td><c:out value="${pessoa.getCpf()}" /></td>
                </tr>
            </c:forEach>
        </table>
       
    </body>
</html>
