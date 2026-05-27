<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>AutoLoc | Veiculos do Vendedor</title>

<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
	rel="stylesheet" />

<%-- ✅ CSS único, sem duplicata --%>
<link rel="stylesheet" href="css/styles.css" />

<script src="https://unpkg.com/lucide@latest/dist/umd/lucide.min.js"
	defer></script>
</head>

<%-- ✅ data-page="seller-vehicles" — necessário para o JS identificar a página --%>
<body data-page="seller-vehicles">

	<header class="site-header seller-header">
		<a class="brand" href="vendedorinicio.jsp"> <span
			class="brand-mark">AL</span> <span class="brand-name">Auto<span>Loc</span></span>
		</a>

		<nav class="desktop-nav" aria-label="Navegacao do vendedor">
			<a href="vendedorinicio.jsp">Inicio</a> <a href="vendedorpainel.jsp">Loja</a>
			<a class="active" href="vendedorveiculos.jsp">Veiculos</a> <a
				href="vendedorservicos.jsp">Servicos</a> <a href="veiculos.jsp">Ver
				consumidor</a>
		</nav>

		<div class="header-actions">
			<a class="icon-btn" href="index.jsp" aria-label="Sair"
				data-clear-role> <i data-lucide="log-out"></i>
			</a>
		</div>
	</header>

	<main class="seller-shell">

		<section class="seller-page-heading">
			<div>
				<span class="section-kicker">Estoque</span>
				<h1>Veiculos que voce esta vendendo.</h1>
				<p>Cadastre modelos com preco, ano, quilometragem e status para
					controlar seu estoque.</p>
			</div>
			<a class="secondary-btn" href="veiculos.jsp">Ver vitrine do
				consumidor</a>
		</section>

		<section class="seller-grid">

			<%-- ✅ CORREÇÃO PRINCIPAL: adicionado data-vehicle-form --%>
			<%-- ✅ Removido action e method — o JS salva no localStorage --%>
			<form class="seller-card seller-form" data-vehicle-form>

				<div class="seller-card-title">
					<span><i data-lucide="car"></i></span>
					<div>
						<h2>Cadastrar veiculo</h2>
						<p>Adicione os principais dados de venda.</p>
					</div>
				</div>

				<%-- Modelo --%>
				<label> Modelo
				<input name="modelo" type="text" placeholder="Ex: Porsche 911 Carrera"
					required /></label>

				<%-- Marca --%>
				<label> Marca
				<input name="marca" type="text" placeholder="Porsche" /></label>

				<%-- Ano --%>
				<label>Ano
				<input name="ano" type="number" min="1980" max="2030"
					placeholder="2024" />
					</label>

				<%-- Quilometragem --%>
				<label> Quilometragem
				<input name="quilometragem" type="number" min="0" placeholder="5200" /></label>

				<%-- Preco --%>
				<label>Preco
				<input name="preco" type="number" min="0" step="1000"
					placeholder="850000" />
					</label>

				<%-- Descricao --%>
				<label>Descrição
				<textarea name="descricao" rows="3"
					placeholder="Estado, opcionais, garantia e diferenciais"></textarea>
					</label>

				<label> Portas <select name="portas">
						<option value="">Selecione</option>
						<option value="2">2 portas</option>
						<option value="3">3 portas</option>
						<option value="4">4 portas</option>
						<option value="5">5 portas</option>
						<option value="6">6 portas</option>
				</select>
				</label> <label> Cambio <select name="cambio">
						<option value="">Selecione</option>
						<option value="Manual">Manual</option>
						<option value="Automatico">Automatico</option>
				</select>
				</label> <label> Combustivel <select name="combustivel">
						<option value="">Selecione</option>
						<option value="Gasolina">Gasolina</option>
						<option value="Etanol">Etanol</option>
						<option value="Flex">Flex</option>
						<option value="Diesel">Diesel</option>
						<option value="Eletrico">Eletrico</option>
						<option value="Hibrido">Hibrido</option>
				</select>
				</label> <label> Estado <input name="estado" type="text"
					placeholder="SP" />
				</label> <label> Cidade <input name="cidade" type="text"
					placeholder="Sao Paulo" />
				</label> <label> Troca <select name="troca">
						<option value="">Selecione</option>
						<option value="Sim">Sim</option>
						<option value="Nao">Nao</option>
				</select>
				</label> <label> Cor <input name="cor" type="text"
					placeholder="Azul" />
				</label> <label> Final-Placa <input name="placa" type="text"
					placeholder="22" />
				</label> <label> Tipo de carroceria <select name="carroceria">
						<option value="">Selecione</option>
						<option value="Sedan">Sedan</option>
						<option value="Hatch">Hatch</option>
						<option value="SUV">SUV</option>
						<option value="Picape">Picape</option>
						<option value="Coupe">Coupe</option>
						<option value="Conversivel">Conversivel</option>
						<option value="Perua">Perua</option>
						<option value="Van">Van</option>
						<option value="Minivan">Minivan</option>
						<option value="Bau">Bau</option>
				</select>
				</label> <label> Tipo de Chassi <select name="chassi">
						<option value="">Selecione</option>
						<option value="Monobloco">Monobloco</option>
						<option value="Longarina">Longarina</option>
						<option value="Tubular">Tubular</option>
						<option value="Backbone">Backbone</option>
						<option value="Space Frame">Space Frame</option>
						<option value="Escada">Escada</option>
						<option value="Plataforma">Plataforma</option>
				</select>
				</label> <label> Status <select name="status">
						<option value="Ativo">Ativo</option>
						<option value="Pausado">Pausado</option>
						<option value="Vendido">Vendido</option>
				</select>
				</label> <label> Foto <input type="text" name="foto"
					placeholder="URL da imagem" />
				</label>

				<button class="primary-btn" type="submit">Adicionar veiculo</button>
				<button class="primary-btn" type="button">Adicionar Fotos</button>

			</form>

			<div class="seller-card">
				<div class="seller-card-title">
					<span><i data-lucide="clipboard-list"></i></span>
					<div>
						<h2>Veiculos cadastrados</h2>
						<p data-vehicle-list-count>0 itens</p>
					</div>
				</div>
				<div class="seller-list" data-seller-vehicles></div>
			</div>

		</section>
	</main>

	<script src="js/scripts.js"></script>
</body>
</html>
