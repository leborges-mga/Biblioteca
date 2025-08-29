<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.biblioteca.model.Livro" %>

<html>
<head>
    <title>Editar Livro</title>
</head>
<body>
<h1>Editar Livro</h1>

<%
    Livro livro = (Livro) request.getAttribute("livro");
    if (livro == null) {
%>
<p>Livro não encontrado.</p>
<%
} else {
%>
<form action="${pageContext.request.contextPath}/EditarLivroServlet" method="post">
    <input type="hidden" name="isbn" value="<%= livro.getIsbn() %>">

    <label>Título:</label>
    <input type="text" name="titulo" value="<%= livro.getTitulo() %>" required><br><br>

    <label>Autor:</label>
    <input type="text" name="autor" value="<%= livro.getAutor() %>" required><br><br>

    <label>Ano:</label>
    <input type="text" name="ano" value="<%= livro.getAno() %>" required><br><br>

    <button type="submit">Salvar</button>
</form>
<%
    }
%>

<br>
<a href="${pageContext.request.contextPath}/pages/editarLivros.jsp">
    <button>Voltar para lista</button>
</a>

</body>
</html>
