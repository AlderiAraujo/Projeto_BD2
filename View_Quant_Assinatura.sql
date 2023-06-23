create view `Quant_Assinatura` as
	select
		`Tipo_plano` as `Tipo_Plano`,
		count(`Id_Usuario`) as `Quant_Assinatura`
	from
		Assinatura a
	inner join
		Planos p
	on a.Tipo_Plano = p.Nome_Plano
	group by p.Nome_Plano;

select * from `Quant_Assinatura` where `Tipo_Plano` = 'Supremo';
select * from `Quant_Assinatura` where `Tipo_Plano` = 'Padrão';
select * from `Quant_Assinatura` where `Quant_Assinatura` > 3;