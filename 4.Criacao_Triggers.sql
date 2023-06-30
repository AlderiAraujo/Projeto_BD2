DELIMITER $
DROP TRIGGER IF EXISTS Cancelar_Assinatura;
CREATE TRIGGER Cancelar_Assinatura AFTER DELETE
	ON assinatura
	FOR EACH ROW
	BEGIN
		SET foreign_key_checks = 0;
        DELETE FROM perfil WHERE OLD.`Id_Usuario` = perfil.`Usuario`;
        SET foreign_key_checks = 1;
END$

DROP TRIGGER IF EXISTS Del_Usuario;
CREATE TRIGGER Del_Usuario AFTER DELETE
	ON usuario
	FOR EACH ROW
	BEGIN
		SET foreign_key_checks = 0;
		DELETE FROM assinatura WHERE OLD.`CPF` = assinatura.`CPF_Usuario`;
        DELETE FROM endereco WHERE OLD.`CPF` = endereco.`CPF_Usuario`;
		SET foreign_key_checks = 1;
END$
DELIMITER ;