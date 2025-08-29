package com.biblioteca.dao;

import com.biblioteca.model.Livro;

import java.util.ArrayList;
import java.util.List;

public class LivroDAO {
    private static List<Livro> livros = new ArrayList<>();

    public void cadastrarLivro(Livro livro) {
        livros.add(livro);
    }

    public List<Livro> listarLivros() {
        return livros;
    }

    public void excluirLivro(String isbn) {
        livros.removeIf(livro -> livro.getIsbn().equals(isbn));
    }

    public Livro buscarLivroPorIsbn(String isbn) {
        for (Livro livro : livros) {
            if (livro.getIsbn().equals(isbn)) {
                return livro;
            }
        }
        return null;
    }

    public void atualizarLivro(Livro livroAtualizado) {
        for (int i = 0; i < livros.size(); i++) {
            if (livros.get(i).getIsbn().equals(livroAtualizado.getIsbn())) {
                livros.set(i, livroAtualizado);
                break;
            }
        }
    }
}
