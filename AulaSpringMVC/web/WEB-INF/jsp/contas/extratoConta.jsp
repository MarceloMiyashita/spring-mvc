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
        <link href="<c:url value="resources/css/style.css" />" rel="stylesheet" type="text/css" />
        <title>JSP Page</title>
        
        <script src="<c:url value='resources/js/jquery-3.2.1.min.js' />" ></script>
        <script src="<c:url value='resources/js/script.js' />" ></script>
    </head>
    <body>
               
        
 <h1>Selecione o mês em que deseja gerar o relatório</h1><br />

        <form action="gerarExtrato" method="post">

        <!-- DADOS PESSOAIS-->
        <fieldset>
         <h3>Dados Pessoais</h3>
         
            <label for="agencia">Agencia: </label>
            <select name="agencias">
                <option> </option>
            </select>
            
            <br><br>
            <label for="mes">Mês:</label>
            <select name="mes">
                <option value="1"> Janeiro </option>
                <option value="2"> Fevereiro </option>
                <option value="3"> Março </option>
                <option value="4"> Abril </option>
                <option value="5"> Maio </option>
                <option value="6"> Junho </option>
                <option value="7"> Julho </option>
                <option value="8"> Agosto </option>
                <option value="9"> Setembro </option>
                <option value="10"> Outubro </option>
                <option value="11"> Novembro </option>
                <option value="12"> Dezembro </option>
            </select>
            
        </fieldset>

        <br />
        <input type="submit" value="Gerar">

        </form>
       
    </body>
</html>
