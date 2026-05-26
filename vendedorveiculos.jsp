<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>AutoLoc | Veiculos do Vendedor</title>

  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet" />
  
  <link rel="stylesheet" href="styles.css?v=20260519-theme" />
  
  <script src="https://unpkg.com/lucide@latest/dist/umd/lucide.min.js" defer></script>
  <link rel="stylesheet" href="css/styles.css">
</head>

<body data-page="seller-vehicles">

  <header class="site-header seller-header">
    <a class="brand" href="vendedorinicio.jsp">
      <span class="brand-mark">AL</span>
      <span class="brand-name">Auto<span>Loc</span></span>
    </a>

    <nav class="desktop-nav" aria-label="Navegacao do vendedor">
      <a href="vendedorinicio.jsp">Inicio</a>
      <a href="vendedorpainel.jsp">Loja</a>
      <a class="active" href="vendedorveiculos.jsp">Veiculos</a>
      <a href="vendedorservicos.jsp">Servicos</a>
      <a href="veiculos.jsp">Ver consumidor</a>
    </nav>

    <div class="header-actions">
      <a class="icon-btn" href="index.jsp" aria-label="Sair" data-clear-role>
        <i data-lucide="log-out"></i>
      </a>
    </div>
  </header>

  <main class="seller-shell">

    <section class="seller-page-heading">
      <div>
        <span class="section-kicker">Estoque</span>
        <h1>Veiculos que voce esta vendendo.</h1>
        <p>Cadastre modelos com preco, ano, quilometragem e status para controlar seu estoque.</p>
      </div>

      <a class="secondary-btn" href="veiculos.jsp">
        Ver vitrine do consumidor
      </a>
    </section>

    <section class="seller-grid">

      <form class="seller-card seller-form" data-vehicle-form>
        
        <div class="seller-card-title">
          <span><i data-lucide="car"></i></span>
          <div>
            <h2>Cadastrar veiculo</h2>
            <p>Adicione os principais dados de venda.</p>
          </div>
        </div>

        <label>
          Modelo
          <input name="nome" type="text" placeholder="Ex: Porsche 911 Carrera" required />
        </label>

        <label>
          Marca
          <input name="modelo" type="text" placeholder="Porsche" />
        </label>

        <label>
          Ano
          <input name="ano" type="number" min="1980" max="2030" placeholder="2024" />
        </label>

        <label>
          Quilometragem
          <input name="quilometragem" type="number" min="0" placeholder="5200" />
        </label>

        <label>
          Preco
          <input name="preco" type="number" min="0" step="1000" placeholder="850000" />
        </label>
        
         <label>
          Portas
          <input name="porta" type="number" min="0" step="6" placeholder="6" />
        </label>
        
         <label>
          Cambio
          <input name="cambio" type="text"  placeholder="Automatico/Manual" />
        </label>
        
         <label>
          Combustivel
          <input name="combustivel" type="text" placeholder="Gasolina/Etanol/Diesel " />
        </label>
        
         <label>
          Estado
          <input name="estado" type="text" placeholder="Sp" />
        </label>
        
        <label>
          Cidade
          <input name="cidade" type="text" placeholder="São Paulo" />
        </label>
        
        <label>
          Troca
          <input name="troca" type="text" placeholder="Aceita Trocas?" />
        </label>
        
        <label>
          Cor
          <input name="cor" type="text" placeholder="Azul" />
        </label>
        
        <label>
          Final-Placa
          <input name="placa" type="text" placeholder="22" />
        </label>
        
        <label>
          Carroceria
          <input name="carroceria" type="text" placeholder="Baú" />
        </label>
        
        <label>
          Chassi
          <input name="chassi" type="text" placeholder="Sedan" />
        </label>
        
        

        <label>
          Status
          <select name="status">
            <option value="Ativo">Ativo</option>
            <option value="Pausado">Pausado</option>
            <option value="Vendido">Vendido</option>
          </select>
        </label>

        <label class="full-field">
          Descricao
          <textarea name="descricao" rows="3" placeholder="Estado, opcionais, garantia e diferenciais"></textarea>
        </label>

        <button class="primary-btn" type="submit">
          Adicionar veiculo
        </button>
        
         <button class="primary-btn" type="submit">
          Adicionar Fotos
        </button>

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
