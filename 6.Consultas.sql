-- Consultas VIEWS
-- View Cliente
SELECT * FROM `Cliente` WHERE `Tipo_Plano` = 'Básico';
SELECT * FROM `Cliente` WHERE `Tipo_Plano` = 'Premium';
-- View Quant_Assinatura
SELECT * FROM `Quant_Assinatura` WHERE `Tipo_Plano` = 'Supremo';
SELECT * FROM `Quant_Assinatura` WHERE `Tipo_Plano` = 'Padrão';
SELECT * FROM `Quant_Assinatura` WHERE `Quant_Assinatura` > 3;

-- Consultas TRIGGERS
-- Trigger Cancelar_Assinatura da tabela Assinatura
SELECT * FROM usuario u 
	INNER JOIN endereco e ON u.`CPF` = e.`CPF_Usuario`
	WHERE u.`CPF` = '00163103280';
SELECT * FROM assinatura a 
	INNER JOIN perfil p ON a.`Id_Usuario` = p.`Usuario`
    WHERE a.`CPF_Usuario` = '00163103280';
SET foreign_key_checks = 0;
DELETE FROM assinatura WHERE assinatura.CPF_Usuario = '00163103280';
SET foreign_key_checks = 1;
SELECT * FROM usuario u 
	INNER JOIN endereco e ON u.`CPF` = e.`CPF_Usuario`
	WHERE u.`CPF` = '00163103280';
SELECT * FROM assinatura a 
	INNER JOIN perfil p ON a.`Id_Usuario` = p.`Usuario`
    WHERE a.`CPF_Usuario` = '00163103280';
-- Trigger Del_Usuario da tabela Usuario
SELECT * FROM usuario u 
	INNER JOIN endereco e ON u.`CPF` = e.`CPF_Usuario`
	INNER JOIN assinatura a ON u.`CPF` = a.`CPF_Usuario`
    INNER JOIN perfil p ON a.`Id_Usuario` = p.`Usuario`
    WHERE u.`CPF` = '04741556726';
SET foreign_key_checks = 0;
DELETE FROM assinatura WHERE assinatura.CPF_Usuario = '04741556726';
SET foreign_key_checks = 1;
SELECT * FROM usuario u 
	INNER JOIN endereco e ON u.`CPF` = e.`CPF_Usuario`
	INNER JOIN assinatura a ON u.`CPF` = a.`CPF_Usuario`
    INNER JOIN perfil p ON a.`Id_Usuario` = p.`Usuario`
    WHERE u.`CPF` = '04741556726';
    
-- Consultas FUNCTIONS
-- Function contar_assinatura (passar o NOME DO PLANO a ser contado)
SELECT projeto1_bd2.contar_assinatura('Premium');
SELECT projeto1_bd2.contar_assinatura('Supremo');
SELECT projeto1_bd2.contar_assinatura('Padrão');
-- Function verificar_usuario (passar o CPF a ser procurado no banco de dados)
SELECT projeto1_bd2.verificar_usuario('12387471619'); -- exemplo falho (usuário não existe na base de dados)
SELECT projeto1_bd2.verificar_usuario('46383161476'); -- exemplo certo (usuário registrado na base de dados)