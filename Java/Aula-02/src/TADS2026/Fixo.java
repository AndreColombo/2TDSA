package TADS2026;

public class Fixo extends Telefone {
    public Fixo() {
        super(TipoTelefone.FIXO);
    }

    @Override
    public void toca(int numToques) {
        for (int i = 0; i < numToques; i++) {
            System.out.println("\nTrimmmmmm trimmmmmm");
        }
    }

    @Override
    public void disca(String numero) {
        registrarChamado(numero);
        System.out.println("\nDiscando: " + numero);
    }
}
