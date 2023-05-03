--
-- Seção 8 - Utilizando comandos SQL no PL/SQL
--
-- Aula 4 - Utilizando o comando UPDATE no PL/SQL
--

-- Utilizando o comando UPDATE no PL/SQL

SET SERVEROUTPUT ON
DECLARE
   vContato_id    PR_CONTATO.CONT_ID%type := 150;
   vPercentual     NUMBER(3) := 10;
BEGIN
   UPDATE PR_CONTATO 
   SET    salary = salary * (1 + vPercentual / 100)
   WHERE  CONT_ID =  vEmployee_id;
   COMMIT;  
END;

