package Fiap;

import java.util.Optional;

public class ExemploOptional {
    public static void main(String[] args) {
        Colaborador c1 = new Colaborador(1L, "James Bond", 1000);
        Optional<Colaborador> colaboradorOptional = Optional.of(c1);

        colaboradorOptional.map(resposta -> resposta.getNome())
                .filter(colaboradorNome -> colaboradorNome.startsWith("J"))
                .orElseThrow(() -> new RuntimeException("Colaborador não encontrado"));

        System.out.println("\nNome do colaborador: " + colaboradorOptional.get().getNome());

        String[] frases = new String[5];

        frases[2] = "Fiap";

        Optional<String> optionalVazio = Optional.empty();
        System.out.println("\nExibir Optional vazio: " + optionalVazio);
        System.out.println("\nOptional está vazio? " + optionalVazio.isEmpty());

        Optional<String> indice_02 = Optional.of(frases[2]);
        System.out.println("\nExibir indice_02: " + indice_02);
        System.out.println("\nObeter conteúdo do indice_02: " + indice_02.get());
        System.out.println("\nValor de indice_02 está presente? " + indice_02.isPresent());
    }
}
