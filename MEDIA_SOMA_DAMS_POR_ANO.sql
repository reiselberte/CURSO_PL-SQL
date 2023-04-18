--Média e soma de valores reproduzido em ambiente de Produção PL/SQL

SET SERVEROUTPUT ON
DECLARE
    damSum      DA_DAM.DAM_VALOR_TOTAL_SERVICO%TYPE; 
    damAvg      DA_DAM.DAM_VALOR_TOTAL_SERVICO%TYPE;
    damAno      DA_DAM.DAM_ANO_EXERCICIO%TYPE:=2020;
    dam_Serv_Id DA_DAM.DAM_SERV_ID%TYPE:=1330;
BEGIN
    SELECT ROUND(SUM (DAM_VALOR_TOTAL_SERVICO),2), ROUND(AVG(DAM_VALOR_TOTAL_SERVICO),2)
INTO                            damSum,damAvg
    FROM  DA_DAM
    WHERE DAM_ANO_EXERCICIO = damAno 
    AND   DA_DAM.DAM_SERV_ID = dam_Serv_Id;
    DBMS_OUTPUT.PUT_LINE('Segue soma dos dams do ano de '|| damAno ||' , '|| damSum ||','|| ' A media dos dams desse ano é de ' || damAvg);
END;
