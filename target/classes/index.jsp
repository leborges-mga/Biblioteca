<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Biblioteca - Página Inicial</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(135deg, #3f51b5, #5a77d6);
      color: #fff;
      height: 100vh;
      margin: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-direction: column;
      text-align: center;
      padding: 20px;
    }

    h1 {
      font-size: 3rem;
      margin-bottom: 0.3em;
      text-shadow: 0 2px 6px rgba(0,0,0,0.4);
    }

    p {
      font-size: 1.25rem;
      margin-bottom: 2em;
      max-width: 600px;
      text-shadow: 0 1px 4px rgba(0,0,0,0.3);
    }

    .btn-group {
      display: flex;
      gap: 20px;
      flex-wrap: wrap;
      justify-content: center;
      width: 100%;
      max-width: 400px;
    }

    a.button-link {
      background-color: #ffca28;
      color: #3f51b5;
      padding: 15px 25px;
      text-decoration: none;
      font-weight: 700;
      font-size: 1.1rem;
      border-radius: 10px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.2);
      transition: background-color 0.3s ease, transform 0.2s ease;
      flex: 1 1 140px;
      text-align: center;
    }

    a.button-link:hover {
      background-color: #ffb300;
      transform: translateY(-3px);
      box-shadow: 0 6px 18px rgba(0,0,0,0.3);
    }
  </style>
</head>
<body>
<h1>Bem-vindo à Biblioteca Cesumar</h1>
<p>Gerencie seus livros de forma fácil e rápida. Cadastre novos livros, edite informações e mantenha sua coleção organizada.</p>

<div class="btn-group">
  <a href="${pageContext.request.contextPath}/pages/cadastrarLivro.jsp" class="button-link">Cadastrar Novo Livro</a>
  <a href="${pageContext.request.contextPath}/pages/editarLivros.jsp" class="button-link">Listar Livros</a>
</div>
</body>
</html>
