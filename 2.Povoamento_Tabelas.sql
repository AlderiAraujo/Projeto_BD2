INSERT INTO `projeto1_bd2`.`usuario` (`CPF`, `Nome`, `Telefone`, `E-mail`, `Data_Nascimento`) 
VALUES 
	('00163103280', 'Lewis Simpson', '11589662132', 'morbi.vehicula@aol.net', '1997-12-25'),
	('04741556726', 'Alexander Sims', '71688236827', 'feugiat.lorem@icloud.net', '1978-02-02'),
	('08104676386', 'Nita Duncan', '62959640532', 'convallis.convallis@outlook.ca', '1972-03-11'),
	('08787625871', 'Colin Holt', '21663547750', 'diam@yahoo.couk', '1999-02-18'), 
	('13484973871', 'Angela Lucas', '62414167022', 'dui.cum.sociis@hotmail.edu', '1978-08-07'),
	('15569390575', 'Elijah Bennett', '41783972291', 'curae.phasellus@yahoo.com', '1974-05-16'), 
	('35309116772', 'Nolan Banks', '85775141256', 'facilisis.magna.tellus@outlook.org', '1993-03-27'), 
	('40130914378', 'Gavin Holland', '71021217787', 'phasellus.elit@outlook.edu', '1990-02-01'),
	('46383161476', 'Patrick Middleton', '21335646314', 'nec@google.com', '2003-06-28'), 
	('61518611469', 'Yvonne Bauer', '98618487749', 'quisque.varius.nam@outlook.edu', '1977-04-19'), 
	('61853174515', 'Madeline Cardenas', '85449851313', 'mauris@protonmail.ca', '1984-01-08'), 
	('75328586914', 'Vernon Daugherty', '31061781823', 'aliquam.gravida.mauris@icloud.couk', '1973-05-07'), 
	('83644347352', 'Uriah Mcguire', '11071702169', 'id.nunc@google.net', '2005-04-07'), 
	('87976676584', 'Declan Mcdonald', '85763753035', 'aliquam.fringilla@aol.net', '2004-06-07'), 
	('88917753137', 'Nell Suarez', '31414347654', 'arcu.vel@icloud.org', '1997-12-25');
    
INSERT INTO `projeto1_bd2`.`endereco` (`CPF_Usuario`,`Cidade`,`CEP`,`UF`,`Pais`)
VALUES
  ('00163103280',"Osasco","55361715","SP","Brazil"),
  ('04741556726',"Itabuna","78792300","BA","Brazil"),
  ('08104676386',"Rio Verde","19564376","GO","Brazil"),
  ('08787625871',"Rio de Janeiro","84671577","RJ","Brazil"),
  ('13484973871',"Anápolis","69314591","GO","Brazil"),
  ('15569390575',"Curitiba","02877977","PR","Brazil"),
  ('35309116772',"Maranguape","14201489","CE","Brazil"),
  ('40130914378',"Ilhéus","42502863","BA","Brazil"),
  ('46383161476',"São Gonçalo","62266773","RJ","Brazil"),
  ('61518611469',"Timon","16660424","MA","Brazil"),
  ('61853174515',"Crato","89732971","CE","Brazil"),
  ('75328586914',"Divinópolis","11733767","MG","Brazil"),
  ('83644347352',"Mogi das Cruzes","60536033","SP","Brazil"),
  ('87976676584',"Fortaleza","82678560","CE","Brazil"),
  ('88917753137',"Sete Lagoas","06122204","MG","Brazil");
  
INSERT INTO `projeto1_bd2`.`planos` (`Nome_Plano`, `Preco`, `Quant_Perfil`, `Download`) 
VALUES
	('Básico', '18.90', '2', '0'),
    ('Padrão', '25.90', '2', '1'),
    ('Premium', '39.90', '3', '1'),
    ('Supremo', '55.90', '5', '1');
    
INSERT INTO `projeto1_bd2`.`assinatura` (`Id_Usuario`, `Senha`, `CPF_Usuario`, `Tipo_Plano`, `Data_Assinatura`, `Tipo_Pagamento`) 
VALUES
	("Lewis_Simpson","PXQ04STV5X",'00163103280',"Premium","2018-06-19","Débito"),
	("Alexander_Sims","SAX24XTS3F",'04741556726',"Supremo","2013-12-04","Crédito"),
	("Nita_Duncan","EMN57YTN2J",'08104676386',"Premium","2010-11-23","Crédito"),
	("Colin_Holt","NWF54GZS2B",'08787625871',"Premium","2019-09-03","Débito"),
	("Angela_Lucas","XBG21CZLNH",'13484973871',"Supremo","2015-10-15","Débito"),
	("Elijah_Bennett","MKI43DL8OK",'15569390575',"Padrão","2011-02-21","Crédito"),
	("Nolan_Banks","WQF23HQ7LO",'35309116772',"Padrão","2022-08-04","Débito"),
	("Gavin_Holland","CHC6JEQ9MQ",'40130914378',"Padrão","2020-04-16","Crédito"),
	("Patrick_Middleton","AS27MBJ4MX",'46383161476',"Premium","2020-03-09","Crédito"),
	("Yvonne_Bauer","LRS8ZHS2BY",'61518611469',"Supremo","2014-09-10","Crédito"),
    ("Madeline_Cardenas","JO24QXJ7GS",'61853174515',"Premium","2011-04-02","Débito"),
	("Vernon_Daugherty","ZR05SYV3VZ",'75328586914',"Básico","2021-05-30","Crédito"),
	("Uriah_Mcguire","XSG3BDC8TP",'83644347352',"Básico","2018-01-14","Débito"),
	("Declan_Mcdonald","JN26ZYU8LW",'87976676584',"Básico","2020-09-13","Crédito"),
	("Nell_Suarez","GVG91TW2LG",'88917753137',"Supremo","2016-09-11","Débito");
    
INSERT INTO `projeto1_bd2`.`perfil`(`Nome`, `Usuario`, `Controle_Parental`)
VALUES
	('Alex01', 'Alexander_Sims', 1),
	('Alex02', 'Alexander_Sims', 0),
	('Alex03', 'Alexander_Sims', 0),
	('Alex04', 'Alexander_Sims', 0),
	('Alex05', 'Alexander_Sims', 0),
	('Angela01', 'Angela_Lucas', 1),
	('Angela02', 'Angela_Lucas', 0),
	('Angela03', 'Angela_Lucas', 0),
	('Angela04', 'Angela_Lucas', 0),
	('Angela05', 'Angela_Lucas', 0),
	('Colin01', 'Colin_Holt', 1),
	('Colin02', 'Colin_Holt', 0),
	('Colin03', 'Colin_Holt', 0),
	('Declan01', 'Declan_Mcdonald', 1),
	('Declan02', 'Declan_Mcdonald', 0),
	('Elijah01', 'Elijah_Bennett', 1),
	('Elijah02', 'Elijah_Bennett', 0),
	('Gavin01', 'Gavin_Holland', 1),
	('Gavin02', 'Gavin_Holland', 0),
	('Lewis01', 'Lewis_Simpson', 1),
	('Lewis02', 'Lewis_Simpson', 0),
	('Lewis03', 'Lewis_Simpson', 0),
	('Madeline01', 'Madeline_Cardenas', 1),
	('Madeline02', 'Madeline_Cardenas', 0),
	('Madeline03', 'Madeline_Cardenas', 0),
	('Nell01', 'Nell_Suarez', 1),
	('Nell02', 'Nell_Suarez', 0),
	('Nell03', 'Nell_Suarez', 0),
	('Nell04', 'Nell_Suarez', 0),
	('Nell05', 'Nell_Suarez', 0),
	('Nita01', 'Nita_Duncan', 1),
	('Nita02', 'Nita_Duncan', 0),
	('Nita03', 'Nita_Duncan', 0),
	('Nolan01', 'Nolan_Banks', 1),
	('Nolan02', 'Nolan_Banks', 0),
	('Patrick01', 'Patrick_Middleton', 1),
	('Patrick02', 'Patrick_Middleton', 0),
	('Patrick03', 'Patrick_Middleton', 0),
	('Uriah01', 'Uriah_Mcguire', 1),
	('Uriah02', 'Uriah_Mcguire', 0),
	('Vernon01', 'Vernon_Daugherty', 1),
	('Vernon02', 'Vernon_Daugherty', 0),
	('Yvonne01', 'Yvonne_Bauer', 1),
	('Yvonne02', 'Yvonne_Bauer', 0),
	('Yvonne03', 'Yvonne_Bauer', 0),
	('Yvonne04', 'Yvonne_Bauer', 0),
	('Yvonne05', 'Yvonne_Bauer', 0);