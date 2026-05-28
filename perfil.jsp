<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>AutoLoc | Perfil</title>

  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet" />

  <link rel="stylesheet" href="styles.css?v=20260519-theme" />
  <script src="https://unpkg.com/lucide@latest/dist/umd/lucide.min.js" defer></script>
  <link rel="stylesheet" href="css/styles.css">
</head>

<body data-page="profile">

<header class="site-header">

  <a class="brand" href="consumidor.jsp">
    <span class="brand-mark">AL</span>
    <span class="brand-name">Auto<span>Loc</span></span>
  </a>

  <nav class="desktop-nav" aria-label="Navegacao principal">
    <a href="consumidor.jsp">Inicio</a>
    <a href="veiculos.jsp">Veiculos</a>
    <a href="servicos.html">Servicos</a>
    <a href="favoritos.jsp">
      Favoritos <span data-favorite-count>0</span>
    </a>
  </nav>

  <div class="header-actions">
    <a class="icon-btn" href="favoritos.jsp">
      <i data-lucide="heart"></i>
    </a>

    <a class="profile-link active" href="perfil.jsp">
      <i data-lucide="user"></i>
    </a>
  </div>

</header>

<main class="container">

  <section class="profile-hero">
    <div class="profile-avatar" data-profile-initials>PS</div>

    <div>
      <span class="eyebrow">Área do cliente</span>

      <h1 data-profile-name>Pedro Silva</h1>

      <p>
        <span data-profile-email>pedro@email.com</span>
        &middot;
        <span data-profile-phone>(11) 99999-0000</span>
      </p>
    </div>
  </section>

  <section class="profile-grid">

    <form class="profile-card-large" data-profile-form>

      <div class="section-title compact">
        <div>
          <span class="section-kicker">Dados pessoais</span>
          <h2>Meu perfil</h2>
        </div>
      </div>

      <label>
        Nome completo
        <input name="name" type="text" required />
      </label>

      <label>
        Email
        <input name="email" type="email" required />
      </label>

      <label>
        Telefone
        <input name="phone" type="tel" required />
      </label>

      <label class="switch-row">
        <span>
          <strong>Notificações</strong>
          <small>Receber novidades e alertas dos favoritos.</small>
        </span>
        <input name="notifications" type="checkbox" />
      </label>

      <label class="switch-row">
        <span>
          <strong>Financiamento</strong>
          <small>Permitir contato sobre simulações e condições.</small>
        </span>
        <input name="financing" type="checkbox" />
      </label>

      <button class="primary-btn" type="submit">
        Salvar alterações
      </button>

    </form>

    <aside class="profile-side">

      <article class="stat-card">
        <strong data-favorite-count>0</strong>
        <span>Favoritos salvos</span>
      </article>

      <article class="mini-card">
        <i data-lucide="shield-check"></i>
        <h3>Conta protegida</h3>
        <p>Seus dados ficam neste navegador para personalizar a experiência.</p>
      </article>

      <article class="mini-card">
        <i data-lucide="headphones"></i>
        <h3>Consultoria ativa</h3>
        <p>Registre interesse em um veículo para iniciar o atendimento.</p>
      </article>

    </aside>

  </section>

</main>

<nav class="bottom-nav" aria-label="Navegação inferior">

  <a class="nav-item" href="consumidor.jsp">
    <i data-lucide="home"></i>Inicio
  </a>

  <a class="nav-item" href="veiculos.jsp">
    <i data-lucide="car"></i>Veiculos
  </a>

  <a class="nav-item" href="servicos.jsp">
    <i data-lucide="wrench"></i>Servicos
  </a>

  <a class="nav-item" href="favoritos.jsp">
    <i data-lucide="heart"></i>Favoritos
  </a>

  <a class="nav-item active" href="perfil.jsp">
    <i data-lucide="user"></i>Perfil
  </a>

</nav>
<script src="js/scripts.js"></script>
</body>
</html>
