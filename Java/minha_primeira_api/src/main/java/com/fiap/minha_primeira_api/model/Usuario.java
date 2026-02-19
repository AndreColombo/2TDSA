package com.fiap.minha_primeira_api.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data // Cria @getters @setters @ToString @EqualsAndHashCode
@NoArgsConstructor // Cria um construtor sem argumentos
@AllArgsConstructor // Cria um construtor com todos os argumentos

/*
 * Classe que representa um Usuário no nosso sistema
 * Usamos o Lombok para reduzir código repetitivo
 */

public class Usuario {
    // Atributos do usuário
    private Long id;
    private String nome;
    private String email;
    private int idade;

    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public int getIdade() {
        return idade;
    }
    public void setIdade(int idade) {
        this.idade = idade;
    }
}
