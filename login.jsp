<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AutoLoc</title>

<!-- CSS e recursos usando contexto do projeto -->
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/img/logocerta.png">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/style.css">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background-color: black;
	background: linear-gradient(28deg, #D4AF37, black, #D4AF37);
}
/*-------------------------------------------------------------*/
/* RESET */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

/* BODY */
body {
	min-height: 100vh;
	background: linear-gradient(120deg, #D4AF37, #000, #D4AF37);
	font-family: 'Poppins', sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 15px;
}

/* CONTAINER */
.container {
	width: 89%;
	max-width: 1280px;
	min-height: 760px;
	background: #151515;
	border-radius: 30px;
	overflow: hidden;
	border: 1px solid rgba(212, 175, 55, .2);
	display: flex;
}

/* =======================
   LOGIN (ESQUERDA)
======================= */
.right-side {
	width: 500px;
	min-width: 0;
	background: #151515;
	padding: 35px;
	display: flex;
	justify-content: center;
	align-items: center;
	border-right: 1px solid rgba(212, 175, 55, 0.12);
	margin: 0;
}

.login-box {
	width: 100%;
}

/* BOTÕES TOPO LOGIN */
.tabs {
	display: flex;
	background: #151515;
	border-radius: 16px;
	padding: 6px;
	margin-bottom: 35px;
	gap: 6px;
	border: 1px solid rgba(212, 175, 55, 0.10);
}

.tabs button {
	flex: 1;
	height: 50px;
	border: none;
	border-radius: 12px;
	background: transparent;
	color: white;
	font-size: 16px;
	cursor: pointer;
	transition: .2s ease;
}

.tabs .active {
	background: linear-gradient(135deg, #8B6914, #D4AF37, #FFD966);
	color: black;
	font-weight: bold;
}

.login-box h1 {
	color: #fff;
	font-size: 58px;
	margin-bottom: 8px;
}

.subtitle {
	color: #999;
	margin-bottom: 30px;
	font-size: 18px;
}

.input-group {
	margin-bottom: 22px;
}

.input-group label {
	display: block;
	color: #fff;
	margin-bottom: 8px;
}

.input-group input {
	width: 100%;
	padding: 18px;
	border-radius: 16px;
	border: 1px solid rgba(212, 175, 55, 0.20);
	background: #1b1b1b;
	/* igual cadastro */
	color: white;
	outline: none;
	font-size: 16px;
}

.options {
	display: flex;
	justify-content: space-between;
	margin-bottom: 25px;
	color: #fff;
	font-size: 14px;
}

.options a {
	color: #D4AF37;
	text-decoration: none;
}

/* BOTÃO */
.login-btn {
	width: 100%;
	padding: 18px;
	border: none;
	border-radius: 16px;
	background: linear-gradient(135deg, #8B6914, #D4AF37, #FFD966);
	color: #000;
	font-size: 22px;
	font-weight: bold;
	cursor: pointer;
}

.divider {
	text-align: center;
	color: #999;
	margin: 28px 0;
}

.social-login {
	display: flex;
	justify-content: center;
}

.google-btn {
	width: 260px;
	height: 55px;
	border: none;
	border-radius: 12px;
	background: #fff !important;
	color: black !important;
	display: flex;
	align-items: center;
	justify-content: center;
	gap: 10px;
	font-size: 18px;
	cursor: pointer;
	margin: 0 auto;
	/* centraliza */
}

.google-btn img {
	width: 22px;
}

.terms {
	text-align: center;
	margin-top: 20px;
	color: #777;
	font-size: 14px;
	line-height: 1.6;
}

/* =======================
   INFO (DIREITA)
======================= */
.left-side {
	flex: 1;
	background: #050505;
	/* preto */
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	text-align: center;
	padding: 40px 40px;
}

/* LOGO */
.logo {
	margin-bottom: 30px;
}

.logo-img {
	width: 260px;
}

/* TITULO */
.top-text {
	color: #fff;
	font-size: 42px;
	font-weight: 700;
	line-height: 1.2;
	max-width: 650px;
	margin-bottom: 40px;
}

/* FEATURES */
.feature {
	width: 100%;
	max-width: 520px;
	display: flex;
	align-items: center;
	gap: 20px;
	margin-bottom: 30px;
	text-align: left;
}

.icon {
	min-width: 70px;
	height: 70px;
	border-radius: 50%;
	border: 2px solid #D4AF37;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 28px;
}

.feature h3 {
	color: #fff;
	font-size: 28px;
	font-weight: 700;
	margin-bottom: 4px;
}

.feature p {
	color: #ddd;
	font-size: 16px;
}

/* CARDS */
.stats {
	display: flex;
	justify-content: center;
	gap: 18px;
	margin-top: 25px;
}

.card {
	width: 140px;
	background: #f5f5f5;
	border-radius: 16px;
	padding: 22px;
	text-align: center;
}

.card h2 {
	color: #D4AF37;
	font-size: 38px;
}

.card span {
	color: #777;
}

/* MOBILE */
.logo-mobile {
	display: none;
}

@media ( max-width :900px) {
	html, body {
		margin: 0;
		padding: 0;
		width: 100%;
		overflow-x: hidden;
		background: #151515;
	}
	body {
		display: block;
	}
	.container {
		width: 90%;
		max-width: 100%;
		min-height: 100vh;
		margin: 0;
		border-radius: 0;
		border: none;
		flex-direction: column;
		background: #151515;
		overflow: hidden;
	}
	.right-side {
		width: 100%;
		min-width: 100%;
		padding: 30px 20px;
	}
	.login-box {
		width: 100%;
	}
	.left-side {
		background: #151515;
		padding: 40px 20px;
	}
	.logo {
		display: none;
	}
	.logo-mobile {
		display: flex;
		justify-content: center;
		margin-bottom: 25px;
	}
	.logo-mobile img {
		width: 220px;
	}
	.top-text {
		font-size: 28px;
		max-width: 340px;
	}
	.feature {
		max-width: 340px;
		gap: 15px;
	}
	.feature h3 {
		font-size: 22px;
	}
	.feature p {
		font-size: 14px;
	}
	.stats {
		flex-wrap: wrap;
	}
	.card {
		width: 130px;
	}
	.tabs {
		width: 100%;
	}
	.tabs button {
		font-size: 15px;
		height: 52px;
	}
	.options {
		flex-wrap: wrap;
		gap: 10px;
		font-size: 13px;
	}
	.login-box h1 {
		font-size: 52px;
	}
	.input-group input {
		width: 100%;
	}
	.google-btn {
		width: 100%;
		max-width: 260px;
	}
}
</style>
</head>

<body>

	<div class="blur blur1"></div>
	<div class="blur blur2"></div>

	<div class="container">

		<!-- LADO DIREITO (LOGIN) -->
		<div class="right-side">

			<div class="login-box">

				<!-- LOGO MOBILE -->
				<div class="logo-mobile">
					<img
						src="${pageContext.request.contextPath}/imagem/logoautolocksemfundo.png"
						alt="Logo">
				</div>

				<!-- TABS -->
				<div class="tabs">
					<button class="active">Entrar</button>
					<button onclick="window.location.href='cadastro.jsp'">Criar
						Conta</button>
				</div>

				<h1>Bem-vindo!</h1>

				<p class="subtitle">Entre na sua conta para continuar.</p>

				<!-- FORMULÁRIO -->
				<form action="login" method="post">

					<div class="input-group">
						<label>Email</label> <input type="email" name="email"
							placeholder="Digite seu email" required>
					</div>

					<div class="input-group">
						<label>Senha</label> <input type="password" name="senha"
							placeholder="Digite sua senha" required>
					</div>

					<div class="options">
						<label> <input type="checkbox"> Lembrar de mim
						</label> <a href="#">Esqueceu a senha?</a>
					</div>

					<button type="submit" class="login-btn">Entrar</button>

				</form>

				<!-- DIVIDER -->
				<div class="divider">ou continue com</div>

				<!-- GOOGLE LOGIN -->
				<div class="socials">

					<button class="social-btn google-btn">
						<img src="${pageContext.request.contextPath}/imagem/google.png"
							alt="Google"> <span>Google</span>
					</button>

				</div>

				<!-- TERMOS -->
				<p class="terms">
					Ao continuar, você concorda com nossos <span>Termos de Uso</span> e
					<span>Política de Privacidade</span>.
				</p>

			</div>

		</div>

		<!-- LADO ESQUERDO (INFO) -->
		<div class="left-side">

			<div class="logo">
				<img
					src="${pageContext.request.contextPath}/imagem/logoautolocksemfundo.png"
					class="logo-img">
			</div>

			<p class="top-text">Encontre oficinas e serviços automotivos com
				facilidade</p>

			<div class="feature">
				<div class="icon">🔍</div>
				<div>
					<h3>Busca Inteligente</h3>
					<p>Encontre oficinas e serviços próximos rapidamente.</p>
				</div>
			</div>

			<div class="feature">
				<div class="icon">⭐</div>
				<div>
					<h3>Avaliações Reais</h3>
					<p>Veja comentários de outros clientes.</p>
				</div>
			</div>

			<div class="feature">
				<div class="icon">⚡</div>
				<div>
					<h3>Atendimento Rápido</h3>
					<p>Entre em contato facilmente.</p>
				</div>
			</div>

			<div class="stats">

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

	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
	<script>
	const tabs = document.querySelectorAll(".tabs button");

	tabs.forEach((tab) => {

	    tab.addEventListener("click", () => {

	        tabs.forEach((btn) => {
	            btn.classList.remove("active");
	        });

	        tab.classList.add("active");

	    });

	});

	</script>

</body>

</html>
