package TADS2026;

public class Celular extends Telefone {
    public Celular() {
        super(TipoTelefone.CELULAR);
    }

    @Override
    public void toca(int codigoToques) {
        switch (codigoToques) {
            case 1:
                System.out.println("\nBuuuuu buuuuu");
                break;
            case 2:
                System.out.println("\nBlim blim blim");
                break;
            default:
                System.out.println("\nTrim trim trim");
        }
    }

    @Override
    public void disca(String numero) {
        registrarChamado(numero);
        System.out.println("\nO número: " + numero + "é um celular");
    }
}
