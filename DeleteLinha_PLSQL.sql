---
-- Seção 8 - Utilizando comandos SQL no PL/SQL
--
-- Aula 5 - Utilizando o comando DELETE no PL/SQL
--

-- Utilizando o comando DELETE no PL/SQL

-- DELETE no PL/SQL

SET SERVEROUTPUT ON
DECLARE
   vCONT_ID  PR_CONTATO.CONT_ID%type := 207;
BEGIN
   DELETE FROM PR_CONTATO 
   WHERE  CONT_ID =  vCONT_ID;
   COMMIT;  
END;
