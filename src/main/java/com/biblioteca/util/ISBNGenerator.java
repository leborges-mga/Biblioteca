package com.biblioteca.util;

import java.util.Random;

public class ISBNGenerator {
    public static String gerarISBN() {
        Random random = new Random();
        StringBuilder isbn = new StringBuilder();
        for (int i = 0; i < 13; i++) {
            isbn.append(random.nextInt(10));
        }
        return isbn.toString();
    }
}
