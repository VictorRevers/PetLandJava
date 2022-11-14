<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/style.css">
    <title>Petland - Feed</title>
</head>
<body>
    <header class="header">
        <h1>Petland</h1>

        <div class="buttons">
            <button class="button"><a href="./index.html">Sair</a></button>
        </div>
        
    </header>

    <main class="main-feed">
        <div><div class="perfil">
            <img src="./assets/imgs/perfil.jpg" alt="foto de perfil">
            <h3 class="nome-perfil"><%=request.getAttribute("usuario")%></h3>
        </div></div>
        <div class="main-feed-content">
            <div class="buttons-box">
                <button class="feed-button"><a href="./createAd.html">Criar anúncio</a></button>
                <button class="feed-button">Ver meus anúncios</button>
            </div>
        </div>
        <div class="alert-box">
            <img src="./assets/imgs/alert-bell.svg" alt="alerta">
            <h3>0 notificações</h3>
        </div>

        <div></div>
        <div class="feed-anuncios">
            <ul class="lista-anuncios">
                <li class="anuncio">
                    <h3><%= request.getAttribute("titulo")%></h3>
                    <p>Descrição: <%= request.getAttribute("descricao")%></p>
                    <p>Preço: R$ <%= request.getAttribute("preco")%></p>
                </li>
            </ul>
        </div>
        <div></div>
    </main>
</body>

<footer class="footer">
    <p>Direitos reservados: Grupo de Alunos da<a href="https://www.unicarioca.edu.br/" target="_blank"> UniCarioca</a></p>
</footer>
</html>
