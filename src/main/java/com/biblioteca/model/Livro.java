package com.biblioteca.model;

public class Livro {
    private String titulo;
    private String autor;
    private int ano;
    private String isbn;

    public Livro(String titulo, String autor, int ano, String isbn) {
        this.titulo = titulo;
        this.autor = autor;
        this.ano = ano;
        this.isbn = isbn;
    }

    public String getTitulo() { return titulo; }
    public String getAutor() { return autor; }
    public int getAno() { return ano; }
    public String getIsbn() { return isbn; }
}
