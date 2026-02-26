package Fiap;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class ExemploStream {
    public static void main(String[] args) {
        // Collections numeros
        List<Integer> numeros = Arrays.asList(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
        List<Integer> numerosDesordenados = Arrays.asList(6, 7, 8, 1, 4, 5, 9, 10, 2, 3);
        List<String> estados = Arrays.asList("São Paulo", "Rio de Janeiro", "Minas Gerais", "Espirito Santo", "São Paulo", "Rio de Janeiro", "Minas Gerais", "São Paulo", "Rio de Janeiro");

        // Gerar uma Stream a partir da collection numeros
        Stream<Integer> numerosStream = numeros.stream();
        // Gerar uma Stream a partir de uma lista de números
        Stream<Integer> novoNumeroStream = Stream.of(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

        List<Integer> numerosAoCubo = numeros.stream()
                .map(x -> (int) Math.pow(x, 3))
                .collect(Collectors.toList());
        System.out.println("\nNúmeros elevados ao cubo: " + numerosAoCubo);

        System.out.println("\nExemplo - Método filter");
        List<Integer> numerosPares = numeros.stream()
                .filter(x -> x % 2 == 0)
                .collect(Collectors.toList());
        System.out.println("Números pares: " + numerosPares);

        System.out.println("\nExemplo - Método sorted");
        List<Integer> numerosOrdenadosAsc = numerosDesordenados.stream()
                .sorted()
                .collect(Collectors.toList());
        System.out.println("Números em ordem crescente: " + numerosOrdenadosAsc);
        List<Integer> numerosOrdenadosDesc = numerosDesordenados.stream()
                .sorted(Comparator.reverseOrder())
                .collect(Collectors.toList());
        System.out.println("Números em ordem decrescente: " + numerosOrdenadosDesc);

        System.out.println("\nExemplo - Método sorted");
        List<String> estadosSemRepeticao = estados.stream()
                .distinct()
                .collect(Collectors.toList());
        System.out.println("Exibir os estados sem repetição: " + estadosSemRepeticao);
    }
}
