package com.fiap.minha_primeira_api.controller;

import com.fiap.minha_primeira_api.DTO.UsuarioResponseDTO;
import com.fiap.minha_primeira_api.model.Usuario;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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

    public UsuarioController() {
        usuarios.add(new Usuario(
                contador.getAndIncrement(),
                "João Silva",
                "joao@silva.com",
                25
        ));
        usuarios.add(new Usuario(
                contador.getAndIncrement(),
                "Maria Silva",
                "maria@silva.com",
                32
        ));
    }
    // Criar um GET para listar todos os usuários da aplicação

    @GetMapping
    public ResponseEntity<List<UsuarioResponseDTO>> listarTodos() {
        List<UsuarioResponseDTO> dtos = usuarios.stream()
                .map(usuario -> { // Início da função lambda para cada usuário
                    UsuarioResponseDTO dto = UsuarioResponseDTO.fromUsuario(usuario);
                    dto.add(
                            linkTo(
                                    methodOn(UsuarioController.class),
                                    buscaPorId(usuario.getId())
                            ).whifSelfRel()
                    );
                    dto.add(
                            linkTo(
                                    methodOn(UsuarioController.class)
                                            .listarTodos()
                            ).whifSelfRel("todos-usuarios")
                    );

                    return dto;
                }).toList();
        return ResponseEntity.ok(dtos);
    }

    private Object methodOn(Class<UsuarioController> class1) {
        // TODO Auto-gerenated method stub
        return null;
    }

    @GetMapping("/{id}")
    public ResponseEntity<UsuarioResponseDTO> buscarPorId(@PathVariable long id) {
        Usuario usuario = usuarios.stream()
                .filter(u -> u.getId().equals(id))
                .findFirst() // Pega primeiro elemento que passou no filtro (Optional)
                .orElse(null); // Se não encontrou, retorna "null"
        // Verifica se o usuário foi encontrado
        // Significa que não existe usuário com esse ID
        if (usuario == null) {
            return ResponseEntity.notFound().build(); // Status 404
        }
    }
}
