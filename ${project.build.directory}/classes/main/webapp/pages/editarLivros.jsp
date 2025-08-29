<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.biblioteca.model.Livro" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Livros</title>
</head>
<body>
    <h2>Lista de Livros</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Ano</th>
            <th>ISBN</th>
            <th>Ações</th>
        </tr>
        <%
            List<Livro> livros = (List<Livro>) request.getAttribute("livros");
            if (livros != null) {
                for (Livro livro : livros) {
        %>
        <tr>
            <td><%= livro.getId() %></td>
            <td><%= livro.getTitulo() %></td>
            <td><%= livro.getAutor() %></td>
            <td><%= livro.getAno() %></td>
            <td><%= livro.getIsbn() %></td>
            <td>
                <a href="../livros?action=editar&isbn=<%= livro.getIsbn() %>">Editar</a>
                |
                <a href="../livros?action=excluir&isbn=<%= livro.getIsbn() %>" onclick="return confirm('Deseja excluir este livro?');">Excluir</a>
            </td>
        </tr>
        <%
                }
            }
        %>
    </table>
    <br/>
    <a href="../index.jsp">Voltar ao Menu</a>
</body>
</html>
