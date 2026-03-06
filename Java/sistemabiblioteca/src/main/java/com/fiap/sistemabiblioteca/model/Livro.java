package com.fiap.sistemabiblioteca.model;

import jakarta.persistence.*;
import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "tb_livros")
public class Livro {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 200)
    private String titulo;
    private String autor;

    @Column(name = "ano_publicacao")
    private Integer anoPublicacao;

    @Column(unique = true, length = 20)
    private String isbn;

    @Column(nullable = false)
    private Boolean disponivel = true;
}
