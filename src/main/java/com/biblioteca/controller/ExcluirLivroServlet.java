package com.biblioteca.controller;

import com.biblioteca.dao.LivroDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/ExcluirLivroServlet")
public class ExcluirLivroServlet extends HttpServlet {
    private LivroDAO livroDAO = new LivroDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String isbn = request.getParameter("isbn");
        livroDAO.excluirLivro(isbn);

        request.setAttribute("livros", livroDAO.listarLivros());

        RequestDispatcher dispatcher = request.getRequestDispatcher("pages/editarLivros.jsp");
        dispatcher.forward(request, response);
    }
}
