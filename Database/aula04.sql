-- Aula 04 - 03/03/26

set serveroutput on

set verify off

-- Estrutura de Decisão
declare
    v_n number(2) := &number;
begin
    if mod(v_n,2) = 0 then
        dbms_output.put_line('O número ' || v_n || ' é PAR');
    else
        dbms_output.put_line('O número ' || v_n || ' é ÍMPAR');
    end if;
end;

/*
EXERCICIO 01 – Criar um bloco PL/SQL para analisar a entrada de dados do
sexo de um cliente, o bloco deverá receber o dado sobre o
sexo: para masculino - M ou m, para feminino - F ou f,
qualquer dado fora desta configuração deverá ser exibido
'Outros', para M ou m 'Masculino', para F ou f 'Feminino'.
*/
declare
    v_sex char(1) := upper('&sex');
begin
    if v_sex = 'M' then
        dbms_output.put_line('Masculino');
    elsif v_sex = 'F' then
        dbms_output.put_line('Feminino');
    else
        dbms_output.put_line('Outros');
    end if;
end;

/*
EXERCÍCIO 02 – Criar um bloco PL-SQL para calcular o valor de cada parcela de uma compra de um carro, nas seguintes condições:
- Parcelas para aquisição em 6 pagamentos.
- Parcelas para aquisição em 12 pagamentos.
- Parcelas para aquisição em 18 pagamentos.
OBSERVAÇÃO:
1 – Deverá ser dada uma entrada de 20% do valor da compra.
2 – Deverá ser aplicada uma taxa juros, no saldo restante, nas seguintes condições:
3 – No final informar o valor das parcelas para as 3 formas de pagamento, com o Valor de aquisição de 10.000 e o
mesmo com entrada de dados via teclado (em tempo de execução).
A – Pagamento em 6 parcelas: 10%.
B – Pagamento em 12 parcelas: 15%.
C – Pagamento em 18 parcelas: 20%.
*/
declare
    v_total number(10,2) := 10000;
    v_financiado v_total%type := v_total * 0.8;
    v_parcela v_total%type;
    choice number(2) := &choice;
begin
    if choice = 6 then
        v_parcela := (v_financiado * 1.1) / 6;
        dbms_output.put_line('Valor da parcela em 6x - R$' || v_parcela);
    elsif choice = 12 then
        v_parcela := (v_financiado * 1.15) / 12;
        dbms_output.put_line('Valor da parcela em 12x - R$' || v_parcela);
    elsif choice = 18 then
        v_parcela := (v_financiado * 1.2) / 18;
        dbms_output.put_line('Valor da parcela em 18x - R$' || v_parcela);
    else
        dbms_output.put_line('Valor da parcela inválida (6, 12 ou 18)');
    end if;
end;

/*
Crie um bloco anônimo PL/SQL que verifique se um número fornecido é positivo, 
negativo ou zero. Exiba uma mensagem apropriada usando a estrutura IF.
Exemplo de Saída:
"Número positivo"
"Número negativo"
"Número é zero"
*/
declare
    v_num number(10) := &num;
begin
    if v_num > 0 then
        dbms_output.put_line('Número positivo');
    elsif v_num < 0 then
        dbms_output.put_line('Número negativo');
    else
        dbms_output.put_line('Numero é 0');
    end if;
end;

/*
Crie um bloco PL/SQL que avalie a idade de uma pessoa e determine se ela é criança,
adolescente, adulto ou idoso. Considere as faixas etárias:
-Criança: 0 a 12 anos
-Adolescente: 13 a 17 anos
-Adulto: 18 a 64 anos
-Idoso: 65 anos ou mais
*/
declare
    v_age number(10) := &age;
begin
    if v_age >= 0 and v_age <= 12 then
        dbms_output.put_line('Criança');
    elsif v_age >= 13 and v_age <= 17 then
        dbms_output.put_line('Adolescente');
    elsif v_age >= 18 and v_age <= 64 then
        dbms_output.put_line('Adulto');
    else
        dbms_output.put_line('Idoso');
    end if;
end;

/*
Crie um bloco PL/SQL que verifique se um ano informado é bissexto. 
Um ano é bissexto se for divisível por 4, mas não divisível por 100, 
a menos que também seja divisível por 400.
*/
declare
    v_year number(4) := &year;
begin
    if mod(v_year,4) = 0 then
        dbms_output.put_line('É bissexto');
    else
        dbms_output.put_line('Não é bissexto');
    end if;
end;

/*
Crie um bloco PL/SQL que receba dois números e compare:
Se o primeiro número for maior que o segundo, exiba "Maior".
Se o primeiro número for menor que o segundo, exiba "Menor".
Se forem iguais, exiba "Igual".
*/
declare
    v_num1 number(10) := &num1;
    v_num2 number(10) := &num2;
begin
    if v_num1 > v_num2 then
        dbms_output.put_line('Maior');
    elsif v_num1 < v_num2 then
        dbms_output.put_line('Menor');
    else
        dbms_output.put_line('Igual');
    end if;
end;

/*
Crie um bloco PL/SQL que simule uma calculadora básica, realizando a operação indicada pelo usuário:
Se o operador for  +, realize uma soma.
Se o operador for  -, realize uma subtração.
Se o operador for  *, realize uma multiplicação.
Se o operador for  ", realize uma divisão.
*/
declare
    v_num1 number(10) := &num1;
    v_num2 number(10) := &num2;
    operation varchar2(1) := '&opr';
begin
    if operation = '+' then
        dbms_output.put_line(v_num1 + v_num2);
    elsif operation = '-' then
        dbms_output.put_line(v_num1 - v_num2);
    elsif operation = '*' then
        dbms_output.put_line(v_num1 * v_num2);
    elsif operation = '"' then
        dbms_output.put_line(v_num1 / v_num2);
    else
        dbms_output.put_line('Operação inválida');
    end if;
end;

/*
Entrada: valor do saldo da conta corrente
Entrada: tipo de conta: 1 - básica, 2 - especial
Entrada: 1 - saque, 2 - depósito
Entrada: valor do saque ou depósito
Processamento para depósito: somar valor de saldo com depósito
Processamento para saque: Conta normal: verificar se possui saldo,
			  saldo ok, realize o saque e atualize o saldo,
                          saldo insuficiente não realiza saque e informe o cliente.
Processamento para saque: Conta especial: verificar se possui saldo,
			  saldo ok, realize o saque e atualize o saldo,
                          saldo insuficiente e dentro do limite que é 15% do saldo,
			  realize o saque e atualize o saldo,			  
			  saldo acima do limite de 15 do saldo não realize saque e informe o cliente.
Saída de dados, sempre informar o que está acontecendo:
			  - Entrada tipo de conta
			  - Entrada movimentação
			  - Valor do saque ou depósito
			  - Resultado da movimentação
			  - Atualização do saldo
*/
declare
    saldo number(10,2) := &saldo;
    conta number(1) := &conta; -- 1 = básica | 2 = especial
    movimento number(1) := &movimento; -- 1 = saque | 2 = depósito
    valor number(10,2) := &valor;
    limite number(10,2);
begin
    if movimento = 1 then
        if conta = 1 then
            -- Conta básica
            if saldo >= valor then
                saldo := saldo - valor;
                dbms_output.put_line('Saque realizado com sucesso.');
                dbms_output.put_line('Saldo atualizado: R$ ' || saldo);
            else
                dbms_output.put_line('Saldo insuficiente. Saque não realizado.');
                dbms_output.put_line('Saldo permanece: R$ ' || saldo);
            end if;

        elsif conta = 2 then
            -- Conta especial
            limite := saldo * 0.15;

            if saldo >= valor then
                saldo := saldo - valor;
                dbms_output.put_line('Saque realizado com sucesso.');
                dbms_output.put_line('Saldo atualizado: R$ ' || saldo);

            elsif valor <= saldo + limite then
                saldo := saldo - valor;
                dbms_output.put_line('Saque realizado utilizando limite especial (15%).');
                dbms_output.put_line('Saldo atualizado: R$ ' || saldo);

            else
                dbms_output.put_line('Valor excede o limite permitido. Saque não realizado.');
                dbms_output.put_line('Saldo permanece: R$ ' || saldo);
            end if;

        else
            dbms_output.put_line('Tipo de conta inválido.');
        end if;
    elsif movimento = 2 then
        dbms_output.put_line('Conta: ' || conta || ' Movimentação: ' || movimento || ' - Saldo: R$' || saldo || ' Depositando: R$' || valor || ' Saldo atualizado: R$' || (saldo + valor));
    else
        dbms_output.put_line('Tipo de movimentação inválido.');
    end if;
end;