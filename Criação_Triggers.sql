DELIMITER $

CREATE TRIGGER Cancelar_Assinatura AFTER DELETE
	ON Assinatura
	FOR EACH ROW
	BEGIN
        DELETE Id_Perfil FROM Perfil WHERE Assinatura.Id_Usuario = Perfil.Usuario;
END$

CREATE TRIGGER Del_Usuario AFTER DELETE
	ON Usuario
	FOR EACH ROW
	BEGIN
		DELETE CPF_Usuario FROM Assinatura WHERE Usuario.CPF = Assinatura.CPF_Usuario;
        DELETE CPF_Usuario FROM Endereco WHERE Usuario.CPF = Endereco.CPF_Usuario;
END$

CREATE TRIGGER Confimar_Mudanca_Endereco BEFORE UPDATE
	ON Endereco
    FOR EACH ROW
    BEGIN
	SELECT Nome, Cidade, UF FROM Endereco E JOIN Usuario U 
		WHERE U.CPF = E.CPF_Usuario;
END$

DELIMITER ;