<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cadastrar Livro</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f4f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #fff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.15);
            width: 100%;
            max-width: 400px;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #555;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px 12px;
            margin-bottom: 20px;
            border: 1.8px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            border-color: #3f51b5;
            outline: none;
            box-shadow: 0 0 8px rgba(63, 81, 181, 0.3);
        }

        button {
            width: 100%;
            background-color: #3f51b5;
            color: white;
            padding: 12px 0;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #303f9f;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Cadastrar Livro</h1>
    <form action="${pageContext.request.contextPath}/LivroServlet" method="post">
        <label for="titulo">Título:</label>
        <input type="text" id="titulo" name="titulo" placeholder="Digite o título do livro" required>

        <label for="autor">Autor:</label>
        <input type="text" id="autor" name="autor" placeholder="Digite o nome do autor" required>

        <label for="ano">Ano:</label>
        <input type="number" id="ano" name="ano" placeholder="Digite o ano de publicação" required min="1000" max="2099">

        <button type="submit">Cadastrar</button>
    </form>
</div>
</body>
</html>
