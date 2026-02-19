package com.fiap.minha_primeira_api.controller;

import com.fiap.minha_primeira_api.model.Usuario;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

@RestController // Indica que esta classe é uma controladora REST
@RequestMapping("/api/usuarios") // Define a URL base para todas as endpoints desta classe

/*
 * Controller é responsável por gerenciar requisições do usuário
 */

public class UsuarioController {
    // "Banco de dados" em memória para exemplo da aplicação
    private final List<Usuario> usuarios = new ArrayList<>();
    private final AtomicLong contador = new AtomicLong(1); // Gerador de IDs
}
