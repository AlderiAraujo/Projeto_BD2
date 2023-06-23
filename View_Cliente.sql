create view `Cliente` as
	select
		`Nome` as `Cliente`,
        `Tipo_plano` as `Tipo_Plano`
	from
		usuario u
	inner join
		assinatura a
	on u.CPF = a.CPF_Usuario
	order by a.Tipo_Plano;
    
select * from `Cliente` where `Tipo_Plano` = 'Básico';