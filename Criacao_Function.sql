DELIMITER $$
CREATE FUNCTION Alterar_Plano( Pessoa VARCHAR(20), Plano VARCHAR(10) )
RETURNS VARCHAR(10)
BEGIN
DECLARE Tipo_Plano VARCHAR(10);
IF Plano != Tipo_Plano THEN
    select count(Usuario) as Num_Perfil from Perfil where Perfil.Usuario = Pessoa;
    if Num_Perfil < Quant_Perfil then
	insert into Perfil(`Nome`, `Usuario`, `Controle_Pais`) values;
    elseif Num_Perfil > Quant_Perfil then
    delete Usuario from Perfil where Perfil.Usuario = Pessoa;
    end if;
END IF;
RETURN (Quant_Perfil);
END$$

CREATE FUNCTION quant_assinaturas (Plano VARCHAR(10))
RETURNS INT
BEGIN
DECLARE quant_assinatura int;
IF Plano = 'Básico' THEN
set (select * from `Quant_Assinatura` where `Tipo_Plano` = 'Básico');
ELSEIF Plano = 'Padrão' THEN
set (select * from `Quant_Assinatura` where `Tipo_Plano` = 'Padrão');
ELSEIF Plano = 'Premium' THEN
set (select * from `Quant_Assinatura` where `Tipo_Plano` = 'Premium');
ELSEIF Plano = 'Supremo' THEN
set (select * from `Quant_Assinatura` where `Tipo_Plano` = 'Supremo');
END IF;
RETURN (quant_assinaturas);
END$$
DELIMITER ;
