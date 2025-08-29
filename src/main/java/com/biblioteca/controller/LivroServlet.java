package com.biblioteca.controller;

import com.biblioteca.dao.LivroDAO;
import com.biblioteca.model.Livro;
import com.biblioteca.util.ISBNGenerator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/LivroServlet")
public class LivroServlet extends HttpServlet {
    private LivroDAO livroDAO = new LivroDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String ano = request.getParameter("ano");

        String isbn = ISBNGenerator.gerarISBN();

        Livro livro = new Livro(titulo, autor, Integer.parseInt(ano), isbn);
        livroDAO.cadastrarLivro(livro);

        List<Livro> livros = livroDAO.listarLivros();
        request.setAttribute("livros", livros);

        RequestDispatcher dispatcher = request.getRequestDispatcher("pages/editarLivros.jsp");
        dispatcher.forward(request, response);
    }
}
