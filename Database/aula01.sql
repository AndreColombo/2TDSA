-- Aula 01 - 10/02/26

-- Ativar a saída de dados
SET SERVEROUTPUT ON

-- Desabilitar saída de variáveis
SET VERIFY OFF

-- Imprimindo dados em tela
begin
    -- Saída de dados
    dbms_output.put_line('André');
end;

begin
    -- Saída de dados
    dbms_output.put_line(563112);
end;

begin
    -- Saída de dados
    dbms_output.put_line('André - ' || 'FIAP');
end;

begin
    -- Saída de dados
    dbms_output.put_line(365);
end;

begin
    -- Saída de dados
    dbms_output.put_line(365 + 365);
end;

-- Crie um programa que concatene uma string com o resultado de um processamento matemático qualquer...
declare
    v_cod number(2) := 10;
    v_nome varchar(10) := 'FIAP';
begin
    -- Saída de dados
    dbms_output.put_line(v_cod || ' - ' || v_nome);
end;