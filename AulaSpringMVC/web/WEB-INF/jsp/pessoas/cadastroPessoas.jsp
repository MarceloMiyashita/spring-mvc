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
               
        
 <h1> Preencha o formulário abaixo</h1><br />

        <form action="persistePessoa" method="post">

        <!-- DADOS PESSOAIS-->
        <fieldset>
         <h3>Dados Pessoais</h3>
        
            <label for="nome">Nome: </label>
            <input type="text" name="nome">
            
            <br><br>
            <label for="sobrenome">Sobrenome: </label>
            <input type="text" name="sobrenome">
            
            <br><br>
            <label>Nascimento: </label>
            <input type="text" name="nascimento" size="2" maxlength="8"> 
            
            <br><br>
            <label for="rg">RG: </label>
            <input type="text" name="rg" size="13" maxlength="13"> 
            
            <br><br>
            <label>CPF:</label>
            <input type="text" name="cpf" size="9" maxlength="11">
        </fieldset>

        <br />
        <!-- ENDEREÇO -->
        <fieldset>
         <h3>Dados de Endereço</h3>
            <label for="rua">Rua:</label>
            <input type="text" name="rua">

            <br><br>
            <label for="numero">Numero:</label>
            <input type="text" name="numero" size="4">
            
            <br><br>
            <label for="bairro">Bairro: </label>
            <input type="text" name="bairro">
            
            <br><br>
            <label for="estado">Estado:</label>
            <select name="estado"> 
            <option value="ac">Acre</option> 
            <option value="al">Alagoas</option> 
            <option value="am">Amazonas</option> 
            <option value="ap">Amapá</option> 
            <option value="ba">Bahia</option> 
            <option value="ce">Ceará</option> 
            <option value="df">Distrito Federal</option> 
            <option value="es">Espírito Santo</option> 
            <option value="go">Goiás</option> 
            <option value="ma">Maranhão</option> 
            <option value="mt">Mato Grosso</option> 
            <option value="ms">Mato Grosso do Sul</option> 
            <option value="mg">Minas Gerais</option> 
            <option value="pa">Pará</option> 
            <option value="pb">Paraíba</option> 
            <option value="pr">Paraná</option> 
            <option value="pe">Pernambuco</option> 
            <option value="pi">Piauí</option> 
            <option value="rj">Rio de Janeiro</option> 
            <option value="rn">Rio Grande do Norte</option> 
            <option value="ro">Rondônia</option> 
            <option value="rs">Rio Grande do Sul</option> 
            <option value="rr">Roraima</option> 
            <option value="sc">Santa Catarina</option> 
            <option value="se">Sergipe</option> 
            <option value="sp">São Paulo</option> 
            <option value="to">Tocantins</option> 
           </select>
            
            <br/><br/>   
            <label for="cidade">Cidade: </label>
            <input type="text" name="cidade">
            
            <br/><br/>
            <label for="cep">CEP: </label>
            <input type="text" name="cep" size="5" maxlength="5"> - <input type="text" name="cep2" size="3" maxlength="3">

        </fieldset>
        <br />

        <!-- DADOS DE LOGIN -->
        <fieldset>
         <h3>Dados de login</h3>

            <label for="email">E-mail: </label>
            <input type="text" name="email">
            
            <br/><br/>
            <label for="imagem">Imagem de perfil:</label>
            <input type="file" name="imagem" >
            
            <br/><br/>
            <label for="login">Login de usuário: </label>
            <input type="text" name="login">
            
            <br/><br/>
            <label for="pass">Senha: </label>
            <input type="password" name="senha">
            
            <br/><br/>
            <label for="passconfirm">Confirme a senha: </label>
            <input type="password" name="senhaconfirm">
        </fieldset>
        <br />
        
         <!-- DADOS DA CONTA -->
         <!--<h3> Dados da Conta - <a href="#" id="add-conta" class="btn-add">Adicionar Conta</a></h3>-->
        <h3> Dados da Conta</h3>
        <fieldset>
            <label for="tipoconta">Tipo de Conta: </label>
             <select name="tipoconta" required>
                 <option value="1">Poupança</option>
                 <option value="2">Conta Corrente</option>
             </select>

            <br/><br/>
            <label for="agencia">Agência:</label>
            <input type="text" name="agencia" required>

            <br/><br/>
            <label for="conta">Conta:</label>
            <input type="text" name="conta" required>
        </fieldset>
       
        <input type="submit">
        <input type="reset" value="Limpar">
        </form>
       
    </body>
</html>
