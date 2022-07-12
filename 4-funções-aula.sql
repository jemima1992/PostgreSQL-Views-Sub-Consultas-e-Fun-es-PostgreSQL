/* Funções de string  
Documentação https://www.postgresql.org/docs/9.1/functions-string.html */.

SELECT (primeiro_nome || ' ' || ultimo_nome) AS nome_completo FROM aluno;

SELECT TRIM(UPPER(CONCAT('Vinicius', NULL, 'Dias') || ' '));

SELECT (primeiro_nome || ultimo_nome) AS nome_completo,
    EXTRACT(YEAR FROM AGE(data_nascimento)) AS idade
  FROM aluno;
  
  
/* Funções de Data 
Documentação https://www.postgresql.org/docs/9.1/functions-datetime.html */  
SELECT TO_CHAR(NOW(), 'DD/MM/YYYY');

SELECT TO_CHAR(NOW(), 'DD, MONTH, YYYY');

 /* Funções matematicas  
 Documentação https://www.postgresql.org/docs/9.5/functions-math.html */

SELECT TO_CHAR(128.3::REAL,'9999D99');

SELECT @ -17581452174;



/* Neste link você consegue ver todas as funções que o PostgreSQL fornece (não são poucas):

https://www.postgresql.org/docs/current/functions.html */.