package Fiap;

public class Colaborador {
    private Long id;
    private String nome;
    private float salario;

    public Colaborador(Long id, String nome, float salario) {
        super();
        this.id = id;
        this.nome = nome;
        this.salario = salario;
    }

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

    public float getSalario() {
        return salario;
    }
    public void setSalario(float salario) {
        this.salario = salario;
    }
}
