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
               
        
 <h1>Selecione a pessoa para pesquisar as contas</h1><br />

        <form action="gerarExtrato" method="post">

        <!-- DADOS PESSOAIS-->
        <fieldset>
         <h3>Dados Pessoais</h3>
         
            <label for="pessoa">Pessoas: </label>
            <select name="pessoa">
                <option> </option>
            </select>
            
        </fieldset>

        <br />
        <input type="submit" value="Pesquisar">

        </form>
       
    </body>
</html>
