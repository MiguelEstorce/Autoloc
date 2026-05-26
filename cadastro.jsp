<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cadastro - AutoLoc</title>

<link rel="stylesheet" href="cadastro.css">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
</head>

<body>

	<div class="container">

		<!-- LADO FORM -->
		<div class="lado-cadastro">

			<div class="caixa-cadastro">

				<!-- LOGO MOBILE -->
				<div class="logo-mobile">
					<img src="img/logoautolocksemfundo.png" alt="">
				</div>

				<div class="botoes-topo">
					<button type="button" onclick="window.location.href='index.jsp'">
						Entrar</button>

					<button type="button" class="ativo">Criar Conta</button>
				</div>

				<h1>Criar Conta</h1>

				<p class="subtitulo">Preencha os dados para começar.</p>

				<form action="CadastroServlet" method="post">

					<!-- BOTÃO VENDEDOR / USUÁRIO -->
					<div class="tipo-conta">

						<button type="button" class="tipo-btn ativo" id="btnVendedor">
							Vendedor</button>

						<button type="button" class="tipo-btn" id="btnUsuario">
							Usuário</button>

					</div>

					<input type="hidden" name="tipoConta" id="tipoConta"
						value="vendedor">

					<!-- FORM VENDEDOR -->
					<div id="formVendedor">

						<div class="grupo-input full">
							<label>Nome da Empresa</label> <input type="text" name="empresa"
								placeholder="Digite o nome da empresa">
						</div>

						<div class="grupo-input">
							<label>Nome</label> <input type="text" name="nomeVendedor"
								placeholder="Digite seu nome">
						</div>

						<div class="grupo-input">
							<label>CPF</label> <input type="text" name="cpfVendedor"
								placeholder="Digite seu CPF">
						</div>

						<div class="grupo-input">
							<label>CNPJ</label> <input type="text" name="cnpj"
								placeholder="Digite o CNPJ">
						</div>

						<div class="grupo-input">
							<label>CEP</label> <input type="text" name="cep"
								placeholder="Digite o CEP">
						</div>

						<div class="grupo-input full">
							<label>Endereço</label> <input type="text" name="endereco"
								placeholder="Digite o endereço">
						</div>

						<div class="grupo-input">
							<label>Telefone</label> <input type="text"
								name="telefoneVendedor" placeholder="Digite o telefone">
						</div>

						<div class="grupo-input">
							<label>Email</label> <input type="email" name="emailVendedor"
								placeholder="Digite seu email">
						</div>

						<div class="grupo-input full">
							<label>Senha</label> <input type="password" name="senhaVendedor"
								placeholder="Digite sua senha">
						</div>

					</div>

					<!-- FORM USUÁRIO -->
					<div id="formUsuario" style="display: none;">

						<div class="grupo-input full">
							<label>Nome</label> <input type="text" name="nomeUsuario"
								placeholder="Digite seu nome">
						</div>

						<div class="grupo-input">
							<label>CPF</label> <input type="text" name="cpfUsuario"
								placeholder="Digite seu CPF">
						</div>

						<div class="grupo-input">
							<label>Email</label> <input type="email" name="emailUsuario"
								placeholder="Digite seu email">
						</div>

						<div class="grupo-input full">
							<label>Senha</label> <input type="password" name="senhaUsuario"
								placeholder="Digite sua senha">
						</div>

						<div class="grupo-input full">
							<label>Confirmar senha</label> <input type="password"
								name="confirmarSenha" placeholder="Confirme sua senha">
						</div>

					</div>

					<div class="opcoes">
						<label> <input type="checkbox" required> Aceito os
							termos
						</label>
					</div>

					<button type="submit" class="botao-cadastro">Criar Conta</button>

				</form>

			</div>
		</div>

		<!-- LADO INFO -->
		<div class="lado-info">

			<div class="logo">
				<img src="img/logoautolocksemfundo.png">
			</div>

			<h2 class="texto-principal">Crie sua conta e encontre oficinas
				com facilidade</h2>

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

	<script>
		const btnVendedor = document.getElementById("btnVendedor");
		const btnUsuario = document.getElementById("btnUsuario");

		const formVendedor = document.getElementById("formVendedor");
		const formUsuario = document.getElementById("formUsuario");

		const tipoConta = document.getElementById("tipoConta");

		/* COMEÇA EM VENDEDOR */
		formVendedor.style.display = "contents";
		formUsuario.style.display = "none";

		/* BOTÃO USUÁRIO */
		btnUsuario.addEventListener("click", function() {

			formVendedor.style.display = "none";
			formUsuario.style.display = "contents";

			btnUsuario.classList.add("ativo");
			btnVendedor.classList.remove("ativo");

			tipoConta.value = "usuario";

		});

		/* BOTÃO VENDEDOR */
		btnVendedor.addEventListener("click", function() {

			formVendedor.style.display = "contents";
			formUsuario.style.display = "none";

			btnVendedor.classList.add("ativo");
			btnUsuario.classList.remove("ativo");

			tipoConta.value = "vendedor";

		});
	</script>

</body>

</html>
