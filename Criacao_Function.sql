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
DELIMITER ;