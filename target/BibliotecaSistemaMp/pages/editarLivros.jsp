<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.biblioteca.model.Livro" %>
<%@ page import="java.util.List" %>

<html>
<head>
    <title>Lista de Livros</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f4f8;
            padding: 30px 20px;
            margin: 0;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            max-width: 900px;
            margin: 0 auto 40px;
            border-collapse: separate;
            border-spacing: 0 12px;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
        }

        th {
            background-color: #3f51b5;
            color: white;
            font-weight: 600;
            border-radius: 8px 8px 0 0;
        }

        tr {
            background-color: white;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border-radius: 8px;
        }

        tr td:first-child {
            border-top-left-radius: 8px;
            border-bottom-left-radius: 8px;
        }

        tr td:last-child {
            border-top-right-radius: 8px;
            border-bottom-right-radius: 8px;
        }

        td.actions {
            display: flex;
            gap: 10px;
        }

        button {
            background-color: #3f51b5;
            color: white;
            border: none;
            border-radius: 6px;
            padding: 8px 16px;
            cursor: pointer;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #303f9f;
        }

        form {
            margin: 0;
        }

        a.button-link {
            display: block;
            width: 220px;
            max-width: 90vw;
            margin: 0 auto;
            text-align: center;
            padding: 14px 0;
            background-color: #3f51b5;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-weight: 700;
            transition: background-color 0.3s ease;
        }

        a.button-link:hover {
            background-color: #303f9f;
        }
    </style>
</head>
<body>

<h1>Livros Cadastrados</h1>

<table>
    <tr>
        <th>Título</th>
        <th>Autor</th>
        <th>Ano</th>
        <th>ISBN</th>
        <th>Ações</th>
    </tr>

    <%
        List<Livro> livros = (List<Livro>) request.getAttribute("livros");
        if (livros != null && !livros.isEmpty()) {
            for (Livro livro : livros) {
    %>
    <tr>
        <td><%= livro.getTitulo() %></td>
        <td><%= livro.getAutor() %></td>
        <td><%= livro.getAno() %></td>
        <td><%= livro.getIsbn() %></td>
        <td class="actions">
            <form action="${pageContext.request.contextPath}/EditarLivroServlet" method="get">
                <input type="hidden" name="isbn" value="<%= livro.getIsbn() %>">
                <button type="submit">Editar</button>
            </form>

            <form action="${pageContext.request.contextPath}/ExcluirLivroServlet" method="post" onsubmit="return confirm('Tem certeza que deseja excluir este livro?');">
                <input type="hidden" name="isbn" value="<%= livro.getIsbn() %>">
                <button type="submit">Excluir</button>
            </form>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="5" style="text-align:center; padding: 30px; color: #777;">Nenhum livro cadastrado.</td>
    </tr>
    <%
        }
    %>
</table>

<a href="${pageContext.request.contextPath}/pages/cadastrarLivro.jsp" class="button-link">Cadastrar Novo Livro</a>

</body>
</html>
