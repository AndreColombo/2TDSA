package TADS2026;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public abstract class Telefone {
    private TipoTelefone tipo;

    abstract public void disca(String numero);

    abstract public void toca(int numToques);

    public Telefone(TipoTelefone tipo) {
        super();
        this.tipo = tipo;
    }

    public TipoTelefone getTipo() {
        return tipo;
    }

    public void setTipo(TipoTelefone tipo) {
        this.tipo = tipo;
    }

    public void registrarChamado(String numero) {
        LocalDateTime agora = LocalDateTime.now();
        DateTimeFormatter formatador = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
        System.out.println("\n====Registro do Sistema====");
        System.out.println("\nTipo: " + tipo.getDescricao());
        System.out.println("\nData/Hora: " + agora.format(formatador));
        System.out.println("\nDestino: " + numero);
        System.out.println("\n--------------------------------------------");
    }
}
