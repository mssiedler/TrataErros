<%-- 
    Document   : cadastrar-ok
    Created on : 27/07/2016, 11:00:56
    Author     : marcelosiedler
--%>


<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDAO"%>
<%
if(request.getParameter("txtNome")==null || request.getParameter("txtlogin")==null)
{
    response.sendRedirect("index.jsp");
    //retorna para o formulário e não executa mais nada
    return;
}

UsuarioDAO dao = new UsuarioDAO();
Usuario u = new Usuario();
u.setLogin(request.getParameter("txtlogin"));
u.setNome(request.getParameter("txtNome"));
u.setSenha(Integer.parseInt(request.getParameter("txtSenha")));

dao.incluir(u);

String msg = "Cadastro OK";


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%=msg%></h1>
        
        
    </body>
</html>
