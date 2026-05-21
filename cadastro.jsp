<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro - AutoLoc</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/cadastro.css">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">

    <style>
        body {
            background-color: black;
            background: linear-gradient(28deg, #D4AF37, black, #D4AF37);
        }
        /*------------------------------------------------------------*/
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    min-height: 100vh;

    display: flex;
    justify-content: center;
    align-items: center;

    background: linear-gradient(120deg, #D4AF37, #000, #D4AF37);
    padding: 30px;
}

/* CONTAINER */
.container {
    width: 100%;
    max-width: 1400px;

    display: flex;
    background: #050505;

    border-radius: 25px;
    overflow: hidden;

    border: 1px solid rgba(212, 175, 55, 0.2);
}

/* LADO FORM */
.lado-cadastro {
    width: 550px;
    background: #151515;
    /* mais claro */
    padding: 40px;
    display: flex;
    align-items: center;

    border-right: 1px solid rgba(212, 175, 55, 0.15);
}

.caixa-cadastro {
    width: 100%;
}

/* BOTÕES */
/* BOTÕES TOPO */
.botoes-topo {
    display: flex;
    background: #151515;
    border-radius: 16px;
    padding: 6px;
    margin-bottom: 25px;
    gap: 6px;

    border: 1px solid rgba(212, 175, 55, 0.18);
    /* borda em volta toda */
}

.botoes-topo button {
    flex: 1;
    height: 50px;
    border: none;
    background: transparent;
    color: white;
    border-radius: 12px;
    cursor: pointer;
    font-size: 16px;
}

.botoes-topo .ativo {
    background: linear-gradient(135deg, #8B6914, #D4AF37);
    color: black;
    font-weight: bold;
}

/* TITULO */
h1 {
    color: white;
    font-size: 40px;
}

.subtitulo {
    color: #aaa;
    margin-bottom: 25px;
}

/* GRID FORM */
form {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 15px;
}

.grupo-input {
    display: flex;
    flex-direction: column;
}

.grupo-input label {
    color: white;
    margin-bottom: 5px;
    font-size: 14px;
}

.grupo-input input {
    padding: 14px;
    border-radius: 12px;
    border: 1px solid rgba(212, 175, 55, 0.20);
    background: #1b1b1b;
    /* mais claro */
    color: white;
    outline: none;
}

.full {
    grid-column: 1 / -1;
}

/* CHECKBOX */
.opcoes {
    grid-column: 1 / -1;
    color: white;
    font-size: 14px;
}

/* BOTÃO */
.botao-cadastro {
    grid-column: 1 / -1;

    padding: 16px;
    border: none;
    border-radius: 14px;

    background: linear-gradient(135deg, #8B6914, #D4AF37, #FFD966);

    font-size: 18px;
    font-weight: bold;

    cursor: pointer;
}

/* LADO INFO */
.lado-info {
    flex: 1;
    padding: 60px;

    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    /* centraliza tudo */
    text-align: center;
}

/* LOGO */
.logo {
    display: flex;
    justify-content: center;
    /* centraliza */
    margin-bottom: 30px;
}

.logo img {
    width: 320px;
    /* tamanho da logo */
}

.texto-principal {
    color: white;
    font-size: 42px;
    margin-bottom: 40px;
}

/* ITENS */
/* ITENS */
.item-info {
    width: 100%;
    max-width: 420px;

    display: grid;
    grid-template-columns: 70px 1fr;

    align-items: center;
    column-gap: 18px;

    margin-bottom: 28px;
}

/* ÍCONE */
.icone {
    width: 56px;
    height: 56px;

    border-radius: 50%;
    border: 2px solid #D4AF37;

    display: flex;
    justify-content: center;
    align-items: center;

    font-size: 24px;

    margin: 0 auto;
}

/* TEXTO */
.item-info h3 {
    color: white;
    font-size: 18px;
    font-weight: 700;
    margin-bottom: 2px;
}

.item-info p {
    color: #ccc;
    font-size: 15px;
    line-height: 1.4;
}

/* CARDS */
.cards {
    display: flex;
    gap: 15px;
    margin-top: 30px;
}

.card {
    background: white;
    padding: 20px;
    border-radius: 15px;
    text-align: center;
    width: 130px;
}

.card h2 {
    color: #D4AF37;
}

.card span {
    color: #777;
}

/* ESCONDE NO DESKTOP */
.logo-mobile {
    display: none;
}

@media(max-width:768px) {

    .lado-cadastro {
        width: 550px;
        background: #111111;
        /* mais claro */
        padding: 40px;
        display: flex;
        align-items: center;

        border-right: 1px solid rgba(212, 175, 55, 0.12);
    }

    /* GARANTE QUE A CAIXA FIQUE NO TOPO */
    .caixa-cadastro {
        margin-top: 0;
    }

    /* LOGO MOBILE */
    .logo-mobile {
        display: flex;
        justify-content: center;
        width: 100%;
        margin-bottom: 20px;
    }

    .logo-mobile img {
        width: 220px;
    }

    /* ESCONDE A LOGO DO LADO INFO */
    .lado-info .logo {
        display: none;
    }

    body {
        padding: 0;
        background: #000;
    }

    .container {
        flex-direction: column;
        border-radius: 0;
    }

    .lado-cadastro {
        width: 100%;
        padding: 25px 20px;
    }

    /* FORM 1 COLUNA */
    form {
        grid-template-columns: 1fr;
        gap: 12px;
    }

    h1 {
        font-size: 28px;
    }

    .subtitulo {
        font-size: 14px;
    }

    .grupo-input input {
        padding: 14px;
        border-radius: 12px;
        border: 1px solid rgba(212, 175, 55, 0.18);
        background: #171717;
        /* mais claro */
        color: white;
        outline: none;
    }

    .botao-cadastro {
        padding: 18px;
        font-size: 18px;
    }

    /* AGORA O LADO INFO APARECE EMBAIXO */
    .lado-info {
        display: flex;
        width: 100%;
        padding: 30px 20px;
        text-align: center;
        align-items: center;
    }

    .texto-principal {
        font-size: 24px;
    }

    .item-info {
        flex-direction: column;
        text-align: center;
    }

    .cards {
        justify-content: center;
        flex-wrap: wrap;
    }
}
        
    </style>
</head>

<body>

    <div class="container">

        <!-- LADO FORM -->
        <div class="lado-cadastro">

            <div class="caixa-cadastro">

                <!-- LOGO MOBILE -->
                <div class="logo-mobile">
                    <img src="${pageContext.request.contextPath}/img/logoautolocksemfundo.png" alt="">
                </div>

                <div class="botoes-topo">
                    <button onclick="window.location.href='login.jsp'">Entrar</button>
                    <button class="ativo">Criar Conta</button>
                </div>

                <h1>Criar Conta</h1>
                <p class="subtitulo">Preencha os dados para começar.</p>

                <!-- FORM JSP -->
                <form action="#" method="post">

                    <div class="grupo-input full">
                        <label>Nome da Empresa</label>
                        <input type="text" name="empresa" placeholder="Digite o nome da empresa">
                    </div>

                    <div class="grupo-input">
                        <label>Nome</label>
                        <input type="text" name="nome" placeholder="Digite seu nome">
                    </div>

                    <div class="grupo-input">
                        <label>CPF</label>
                        <input type="text" name="cpf" placeholder="Digite seu CPF">
                    </div>

                    <div class="grupo-input">
                        <label>CNPJ</label>
                        <input type="text" name="cnpj" placeholder="Digite o CNPJ">
                    </div>

                    <div class="grupo-input">
                        <label>CEP</label>
                        <input type="text" name="cep" placeholder="Digite o CEP">
                    </div>

                    <div class="grupo-input full">
                        <label>Endereço</label>
                        <input type="text" name="endereco" placeholder="Digite o endereço">
                    </div>

                    <div class="grupo-input">
                        <label>Telefone</label>
                        <input type="text" name="telefone" placeholder="Digite o telefone">
                    </div>

                    <div class="grupo-input">
                        <label>Email</label>
                        <input type="email" name="email" placeholder="Digite seu email">
                    </div>

                    <div class="grupo-input full">
                        <label>Senha</label>
                        <input type="password" name="senha" placeholder="Digite sua senha">
                    </div>

                    <div class="opcoes">
                        <label>
                            <input type="checkbox" name="termos">
                            Aceito os termos
                        </label>
                    </div>

                    <button type="submit" class="botao-cadastro">Criar Conta</button>

                </form>

            </div>
        </div>

        <!-- LADO INFO -->
        <div class="lado-info">

            <div class="logo">
                <img src="${pageContext.request.contextPath}/img/logoautolocksemfundo.png">
            </div>

            <h2 class="texto-principal">
                Crie sua conta e encontre oficinas com facilidade
            </h2>

            <div class="item-info">
                <div class="icone">🚗</div>
                <div>
                    <h3>Cadastro Rápido</h3>
                    <p>Crie sua conta em poucos segundos.</p>
                </div>
            </div>

            <div class="item-info">
                <div class="icone">⭐</div>
                <div>
                    <h3>Oficinas Avaliadas</h3>
                    <p>Veja avaliações reais de outros usuários.</p>
                </div>
            </div>

            <div class="item-info">
                <div class="icone">🔧</div>
                <div>
                    <h3>Serviços Automotivos</h3>
                    <p>Encontre serviços próximos.</p>
                </div>
            </div>

            <div class="cards">
                <div class="card">
                    <h2>1.2K+</h2>
                    <span>Oficinas</span>
                </div>

                <div class="card">
                    <h2>5K+</h2>
                    <span>Usuários</span>
                </div>

                <div class="card">
                    <h2>4.9</h2>
                    <span>Avaliação</span>
                </div>
            </div>

        </div>

    </div>

</body>

</html>
