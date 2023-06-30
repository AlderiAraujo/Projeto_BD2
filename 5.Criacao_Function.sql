DELIMITER $
DROP FUNCTION IF EXISTS verificar_usuario; 
CREATE FUNCTION verificar_usuario(cpf varchar(11)) 
RETURNS BOOLEAN 
DETERMINISTIC
BEGIN
	DECLARE is_user BOOLEAN;
		SELECT EXISTS (
		SELECT 1
		FROM usuario
		WHERE CPF = usuario.`CPF` )
        INTO is_user;
     RETURN is_user;
END $

DROP FUNCTION IF EXISTS contar_assinatura;
CREATE FUNCTION contar_assinatura(plano varchar(10)) 
RETURNS INT 
DETERMINISTIC
BEGIN
    DECLARE quant INT;
		SELECT `Quant_Assinatura` 
        FROM `Quant_Assinatura` 
        WHERE `Tipo_Plano` = plano 
        INTO quant;
    RETURN quant;
END $
DELIMITER ;