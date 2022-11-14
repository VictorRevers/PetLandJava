<%-- 
    Document   : login
    Created on : 14 de nov. de 2022, 16:41:35
    Author     : victo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/style.css">
    <title>PetLand - Login</title>
</head>
<body>
    <header class="header">
        <h1><a href="../index.html">Petland</a></h1>
        <div class="buttons">
            <button class="button"><a href="./createAccount.html">Cadastrar</a></button>
        </div>       
    </header>
    <main class="main-content">
        <div class="login-container">
            <h1>Login</h1>           
            <form action="login" method="POST" >
                <input type="text" name="usuario" placeholder="Usuário" onfocus="inputFocus(this)" onblur="inputBlur(this)"><br>
                <input type="password" name="senha" placeholder="Senha" onfocus="inputFocus(this)" onblur="inputBlur(this)"><br>
                <% if(request.getAttribute("resposta")!= null){
                    out.print("<br>" + "<p style='color:red;'>"+ request.getAttribute("resposta") + "</p>" );
                }                  
                %>
                <button type="submit">Logar</button><br>
                <a href="">Esqueceu a senha?</a>
            </form>
        </div>
    </main>
    <footer class="footer">
        <p>Direitos reservados: Grupo de Alunos da<a href="https://www.unicarioca.edu.br/" target="_blank"> UniCarioca</a></p>
    </footer>
    
    <script src="../assets/js/script.js"></script>
</body>
</html>
