-- Aula 03 - 24/02/26

set serveroutput on

set verify off
 
-- Exercícios de PLSQL – Prof. Ms Marcel

-- EXERCICIO 01 – Criar um bloco PL-SQL para calcular o valor do novo salário mínimo que deverá ser de 25% em cima do atual, que é de R$ ???.
declare
    v_sal number(10,2) := &salario;
    v_sal_final number(10,2) := v_sal*1.25;
begin
    dbms_output.put_line('Salário Mínimo R$ ' || v_sal);
    dbms_output.put_line('Salário Mínimo com +25% R$  ' || v_sal_final);
end;

-- EXERCÍCIO 02 – Criar um bloco PL-SQL para calcular o valor em REAIS de 45 dólares, sendo que o valor do câmbio a ser considerado é de R$ ??? no qual estes valores deverão ser constantes dentro do bloco.
declare
    dolares number(10,2) := 45;
    valor_cambio number(10,2) := &cambio;
    reais number(10,2) := dolares * valor_cambio;
begin
    dbms_output.put_line('Valor em reais ' || reais);
end;

-- EXERCÍCIO 03 – Criar um bloco PL-SQL para converter em REAIS os dólares informados, sendo que o valor do Câmbio a ser considerado é de ???.
declare
    dolares number(10,2) := &dolares;
    valor_cambio number(10,2) := &cambio;
    reais number(10,2) := dolares * valor_cambio;
begin
    dbms_output.put_line('Valor em reais ' || reais);
end;

/*
EXERCÍCIO 04 – Criar um bloco PL-SQL para calcular o valor das parcelas de uma compra de um carro, nas seguintes condições:
OBSERVAÇÃO:
1 - Parcelas para aquisição em 10 pagamentos.
2 - O valor total dos juros é de 3% e deverá ser aplicado sobre o montante financiado.
3 – No final informar o valor de cada parcela.
*/
declare
    valor_carro number(10,2) := &carro;
    juros number(10,2) := valor_carro*0.03;
    parcelas number(10,2) := (valor_carro+juros)/10;
begin
    dbms_output.put_line('Valor do carro R$' || valor_carro || ' - Juros R$' || juros || ' - 10x Parcelas de R$' || parcelas);
end;

/*
EXERCÍCIO 05 – Criar um bloco PL-SQL para calcular o valor de cada parcela de uma compra de um carro, nas seguintes condições:
- Parcelas para aquisição em 6 pagamentos.
- Parcelas para aquisição em 12 pagamentos.
- Parcelas para aquisição em 18 pagamentos.
OBSERVAÇÃO:
1 – Deverá ser dada uma entrada de 20% do valor da compra.
2 – Deverá ser aplicada uma taxa juros, no saldo restante, nas seguintes condições:
3 – No final informar o valor das parcelas para as 3 formas de pagamento, com o Valor de aquisição de 10.000.
A – Pagamento em 6 parcelas: 10%.
B – Pagamento em 12 parcelas: 15%.
C – Pagamento em 18 parcelas: 20%.
*/
declare
    v_total number(10,2) := 10000;
    v_financiado v_total%type := v_total * 0.8;
    v_parcela v_total%type;
begin
    v_parcela := (v_financiado * 1.1) / 6;
    dbms_output.put_line('Valor da parcela em 6x - R$'||v_parcela);
    v_parcela := (v_financiado * 1.15) / 12;
    dbms_output.put_line('Valor da parcela em 12x - R$'||v_parcela);
    v_parcela := (v_financiado * 1.2) / 18;
    dbms_output.put_line('Valor da parcela em 18x - R$'||v_parcela);
end;