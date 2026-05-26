<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AutoLoc</title>

<link rel="icon" type="image/png" href="img/logocerta.png">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet" href="css/login.css">
</head>

<body>

	<div class="blur blur1"></div>
	<div class="blur blur2"></div>

	<div class="main-container">

		<!-- LOGIN -->
		<div class="right-side">

			<div class="login-box">

				<div class="logo-mobile">
					<img src="img/logoautolocksemfundo.png" alt="">
				</div>

				<div class="tabs">

					<button class="active" type="button">Entrar</button>

					<button type="button" onclick="window.location.href='cadastro.jsp'">

						Criar Conta</button>

				</div>

				<h1>Bem-vindo!</h1>

				<p class="subtitle">Entre na sua conta para continuar.</p>

				<!-- FORM LOGIN -->
				<form action="loginu" method="post">

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

						</label> <a href="#"> Esqueceu a senha? </a>

					</div>

					<button class="login-btn" type="submit">Entrar</button>

				</form>

				<div class="divider">ou continue com</div>

				<div class="socials">

					<button class="social-btn google-btn">

						<img src="imagem/google.png" alt="Google"> <span>Google</span>

					</button>

				</div>

				<p class="terms">

					Ao continuar, você concorda com nossos <span>Termos de Uso</span> e

					<span>Política de Privacidade</span>.

				</p>

			</div>

		</div>

		<!-- CONTEÚDO -->
		<div class="left-side">

			<div class="logo">

				<img src="imagem/logoautolocksemfundo.png" class="logo-img">

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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
	<script type="js/scripts.js"></script>
</body>

</html>
