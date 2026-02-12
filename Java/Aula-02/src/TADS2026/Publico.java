package TADS2026;

public class Publico extends Telefone {
    public Publico() {
        super(TipoTelefone.PUBLICO);
    }

    @Override
    public void toca(int numToques) {
        for (int i = 0; i < numToques; i++) {
            System.out.println("\nRing ring ring");
        }
    }

    @Override
    public void disca(String numero) {
        if (numero.charAt(0) == 9 || numero.charAt(0) == 8) {
            System.out.println("\nEste telefone não liga para celular...");
        } else {
            registrarChamado(numero);
            System.out.println("\nDiscando: " + numero);
        }
    }
}
