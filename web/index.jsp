<%-- 
    Document   : index
    Created on : 27/07/2016, 10:45:24
    Author     : marcelosiedler
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Formulário</h1>
        <form action="cadastrar-ok.jsp" method="post">
            <label>Login</label>
            <input type="text" name="txtLogin" /><br/>
             <label>Nome:</label>
            <input type="text" name="txtNome" /><br/>
             <label>Senha</label>
            <input type="text" name="txtSenha" />
                
            <button type="submit" >Cadastrar</button>
        </form>
    </body>
</html>
