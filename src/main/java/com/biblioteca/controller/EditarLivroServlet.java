package com.biblioteca.controller;

import com.biblioteca.dao.LivroDAO;
import com.biblioteca.model.Livro;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/EditarLivroServlet")
public class EditarLivroServlet extends HttpServlet {
    private LivroDAO livroDAO = new LivroDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String isbn = request.getParameter("isbn");
        Livro livro = livroDAO.buscarLivroPorIsbn(isbn);

        if (livro != null) {
            request.setAttribute("livro", livro);
            RequestDispatcher dispatcher = request.getRequestDispatcher("pages/editarLivroForm.jsp");
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/pages/editarLivros.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String anoStr = request.getParameter("ano");
        String isbn = request.getParameter("isbn");

        Livro livroAtualizado = new Livro(titulo, autor, Integer.parseInt(anoStr), isbn);
        livroDAO.atualizarLivro(livroAtualizado);

        request.setAttribute("livros", livroDAO.listarLivros());
        RequestDispatcher dispatcher = request.getRequestDispatcher("pages/editarLivros.jsp");
        dispatcher.forward(request, response);
    }
}
