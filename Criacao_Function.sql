DELIMITER $$
CREATE FUNCTION verificar_usuario(cpf varchar(11)) 
RETURNS boolean 
deterministic
BEGIN
   DECLARE is_user BOOLEAN;
    SELECT EXISTS (
    SELECT 1
    FROM usuario
    WHERE CPF = usuario.`CPF` 
  ) INTO is_user;
     RETURN is_user;
END $$

CREATE FUNCTION contar_assinatura(plano varchar(10)) 
RETURNS int 
deterministic
BEGIN
    DECLARE quant int;
    select `Quant_Assinatura` from `Quant_Assinatura` where `Tipo_Plano` = plano into quant;
    RETURN quant;
END $$
DELIMITER ;