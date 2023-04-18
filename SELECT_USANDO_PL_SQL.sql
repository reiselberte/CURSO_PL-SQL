--Utilizando comando SELECT no PL/SQL.
SET SERVEROUTPUT ON
DECLARE 
    nome  pr_contato.cont_nome%TYPE;
    nomeFantasia pr_contato.cont_nomefantasia%TYPE;
    cnpj pr_contato.cont_cnpj%TYPE:= '00254866000129';
BEGIN
    SELECT cont_nome, cont_nomefantasia
    INTO   Nome, NomeFantasia
    FROM   PR_CONTATO
    WHERE  cont_cnpj=cnpj;
DBMS_OUTPUT.PUT_LINE('NOME: ' || nome);
DBMS_OUTPUT.PUT_LINE('NOME FANTASIA: ' || nomefantasia);
DBMS_OUTPUT.PUT_LINE('CNPJ: ' || cnpj);
END;

