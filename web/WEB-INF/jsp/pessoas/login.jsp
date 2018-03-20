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
               
        
 <h1> Efetuar Login </h1><br />
        <%
            String erro = request.getParameter("erro");
            if(erro != null){
                out.print("<div class='erro'>"+erro+"</div>");
            }
        %>
        <form action="efetuarLogin" method="post">

        <!-- DADOS PESSOAIS-->
        <fieldset>
         <h3>Dados</h3>
        
            <label for="login">Nome: </label>
            <input type="text" name="login" required>
            
            <br><br>
            <label for="senha">Senha: </label>
            <input type="password" name="senha" required>
            <br><br>
        </fieldset>

        <input type="submit" value="Logar">
        <p>Não possui cadastro ainda? <a href="cadastrarUsuario">Clique aqui!</a></p>
        </form>
       
    </body>
</html>
