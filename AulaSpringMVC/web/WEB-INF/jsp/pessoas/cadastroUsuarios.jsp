<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="resources/css/style.css" />" rel="stylesheet" type="text/css" />
        <title>JSP Page</title>
        
        <script src="<c:url value='resources/js/jquery-3.2.1.min.js' />" ></script>
    </head>
    <body>
               
        
 <h1> Cadastro de Usuários</h1><br />

        <form action="persisteUsuario" method="post">

        <!-- DADOS PESSOAIS-->
        <fieldset>
         <h3>Dados</h3>
        
            <label for="login">Senha </label>
            <input type="text" name="login" required>
            
            <br><br>
            <label for="senha">Senha: </label>
            <input type="password" name="senha" required>
            <br><br>
        </fieldset>

        <input type="submit" value="Cadastrar">
        </form>
       
    </body>
</html>
