SELECT * FROM curso;

SELECT * FROM curso WHERE categoria_id IN (1,2);

-- Subquery --
SELECT * FROM curso WHERE categoria_id IN (
    SELECT id FROM categoria WHERE nome LIKE ('% de %')
);


SELECT * FROM curso WHERE categoria_id IN (
    SELECT id FROM categoria WHERE nome LIKE ('% de %')
);



SELECT categoria.nome AS categoria,
        COUNT(curso.id) as numero_cursos
    FROM categoria
    JOIN curso ON curso.categoria_id = categoria.id
GROUP BY categoria;



SELECT categoria,
       numero_cursos
    FROM algum_lugar
  WHERE numero_cursos > 3;
  
  
  
SELECT categoria,
       numero_cursos
    FROM (
            SELECT categoria.nome AS categoria,
                COUNT(curso.id) as numero_cursos
            FROM categoria
            JOIN curso ON curso.categoria_id = categoria.id
        GROUP BY categoria;
    ) AS categoria_cursos
  WHERE numero_cursos > 3;
  
  
  
 SELECT categoria.nome AS categoria,
        COUNT(curso.id) as numero_cursos
    FROM categoria
    JOIN curso ON curso.categoria_id = categoria.id
GROUP BY categoria;
    HAVING numero_cursos > 3; 