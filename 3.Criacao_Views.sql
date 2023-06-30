CREATE VIEW `Cliente` AS
	SELECT
		`Nome` AS `Cliente`,
        `Tipo_plano` AS `Tipo_Plano`
	FROM
		usuario u
	INNER JOIN
		assinatura a
	ON u.CPF = a.CPF_Usuario
	ORDER BY a.Tipo_Plano;
    
CREATE VIEW `Quant_Assinatura` AS
	SELECT
		`Tipo_plano` AS `Tipo_Plano`,
		count(`Id_Usuario`) AS `Quant_Assinatura`
	FROM
		assinatura a
	INNER JOIN
		planos p
	ON a.Tipo_Plano = p.Nome_Plano
	GROUP BY p.Nome_Plano;