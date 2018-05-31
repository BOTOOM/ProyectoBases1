/*TIPO LUGAR*/

INSERT INTO TIPOLUGAR VALUES ('1', 'pais');
INSERT INTO TIPOLUGAR VALUES ('2', 'ciudad');
INSERT INTO TIPOLUGAR VALUES ('3', 'estadio');
INSERT INTO TIPOLUGAR VALUES ('4', 'sede');
INSERT INTO TIPOLUGAR VALUES ('5', 'contiente');

/*-------------------------------------------------------------
----TIPO OBSERVACION ------- PARA LUGAR*/

INSERT INTO TIPOOBSERVACION VALUES ('1', 'nombre');
INSERT INTO TIPOOBSERVACION VALUES ('2', 'poblacion');
INSERT INTO TIPOOBSERVACION VALUES ('3', 'idioma oficial');
INSERT INTO TIPOOBSERVACION VALUES ('4', 'area');
INSERT INTO TIPOOBSERVACION VALUES ('5', 'fecha de construccion');
INSERT INTO TIPOOBSERVACION VALUES ('6', 'capacidad');
INSERT INTO TIPOOBSERVACION VALUES ('7', 'imagenes');
INSERT INTO TIPOOBSERVACION VALUES ('8', 'descripcion');
INSERT INTO TIPOOBSERVACION VALUES ('9', 'historia');
INSERT INTO TIPOOBSERVACION VALUES ('10', 'datos curiosos');
/*----------------------------------------------
--- LUGAR --------------------------------------*/

/*CONTINENTE*/

INSERT INTO LUGAR VALUES ('1', '5', null);
INSERT INTO LUGAR VALUES ('2', '5', null);
INSERT INTO LUGAR VALUES ('3', '5', null);
INSERT INTO LUGAR VALUES ('4', '5', null);
INSERT INTO LUGAR VALUES ('5', '5', null);


INSERT INTO OBSERVACIONLUGAR VALUES ('1', '1', 'america');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '2', 'europa');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '3', 'asia');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '4', 'africa');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '5', 'oceania');

/*PAIS-----------------------------------------------------------*/

INSERT INTO LUGAR VALUES ('6', '1', '3');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '6', 'Rusia');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '6', '146804372');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '6', 'Ruso');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '6', '17098242');

INSERT INTO LUGAR VALUES ('7', '1', '3');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '7', 'Arabia Saudita');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '7', '32275687');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '7', 'Arabe');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '7', '2149690');

INSERT INTO LUGAR VALUES ('8', '1', '4');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '8', 'Egipto');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '8', '93497130');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '8', 'Arabe Egipcio');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '8', '1001450');

INSERT INTO LUGAR VALUES ('9', '1', '1');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '9', 'Uruguay');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '9', '3460181');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '9', 'Español');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '9', '176215');

INSERT INTO LUGAR VALUES ('10', '1', '2');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '10', 'Portugal');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '10', '10562178');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '10', 'Portugués');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '10', '92090');

INSERT INTO LUGAR VALUES ('11', '1', '2');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '11', 'España');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '11', '46579045');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '11', 'Castellano');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '11', '505370');

INSERT INTO LUGAR VALUES ('12', '1', '4');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '12', 'Marruecos');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '12', '35330305');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '12', 'Arabe');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '12', '446550');

INSERT INTO LUGAR VALUES ('13', '1', '3');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '13', 'Irán');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '13', '82801633');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '13', 'Persa');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '13', '1648195');

INSERT INTO LUGAR VALUES ('14', '1', '2');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '14', 'Francia');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '14', '67158000');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '14', 'Francés');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '14', '643801');

INSERT INTO LUGAR VALUES ('15', '1', '5');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '15', 'Australia');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '15', '25043027');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '15', 'Inglés');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '15', '7741220');

INSERT INTO LUGAR VALUES ('16', '1', '1');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '16', 'Perú');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '16', '32510600');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '16', 'Español');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '16', '1285216');

INSERT INTO LUGAR VALUES ('17', '1', '2');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '17', 'Dinamarca');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '17', '5627235');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '17', 'Danés');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '17', '43094');

INSERT INTO LUGAR VALUES ('18', '1', '1');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '18', 'Argentina');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '18', '44044811');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '18', 'Español');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '18', '2780400');

INSERT INTO LUGAR VALUES ('19', '1', '2');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '19', 'Islandia');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '19', '338349');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '19', 'Islandés');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '19', '103000');

INSERT INTO LUGAR VALUES ('20', '1', '2');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '20', 'Croacia');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '20', '4290612');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '20', 'Croata');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '20', '56594');

INSERT INTO LUGAR VALUES ('21', '1', '4');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '21', 'Nigeria');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '21', '188462640');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '21', 'Inglés');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '21', '923768');

INSERT INTO LUGAR VALUES ('22', '1', '1');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '22', 'Brasil');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '22', '208385000');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '22', 'Portugués');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '22', '8515770');

INSERT INTO LUGAR VALUES ('23', '1', '2');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '23', 'Suiza');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '23', '8500000');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '23', 'Alemán');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '23', '41277');

INSERT INTO LUGAR VALUES ('24', '1', '1');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '24', 'Costa Rica');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '24', '4890379');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '24', 'Español');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '24', '51100');

INSERT INTO LUGAR VALUES ('25', '1', '2');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '25', 'Serbia');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '25', '7176794');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '25', 'Serbio');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '25', '88361');

INSERT INTO LUGAR VALUES ('26', '1', '2');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '26', 'Alemania');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '26', '82667685');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '26', 'Alemán');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '26', '357376');

INSERT INTO LUGAR VALUES ('27', '1', '1');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '27', 'Mexico');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '27', '123982528');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '27', 'Español');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '27', '1964375');

INSERT INTO LUGAR VALUES ('28', '1', '2');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '28', 'Suecia');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '28', '10000000');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '28', 'Sueco');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '28', '450295');

INSERT INTO LUGAR VALUES ('29', '1', '3');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '29', 'Corea del Sur');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '29', '49540000');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '29', 'Coreano');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '29', '99720');

INSERT INTO LUGAR VALUES ('30', '1', '2');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '30', 'Bélgica');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '30', '11409077');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '30', 'Neerlandés');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '30', '30528');

INSERT INTO LUGAR VALUES ('31', '1', '1');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '31', 'Panamá');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '31', '4115897');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '31', 'Español');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '31', '75420');

INSERT INTO LUGAR VALUES ('32', '1', '4');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '32', 'Túnez');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '32', '11154370');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '32', 'Arabe');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '32', '163610');

INSERT INTO LUGAR VALUES ('33', '1', '2');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '33', 'Inglaterra');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '33', '53012456');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '33', 'Inglés');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '33', '130395');

INSERT INTO LUGAR VALUES ('34', '1', '2');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '34', 'Polonia');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '34', '38483957');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '34', 'Polaco');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '34', '312685');

INSERT INTO LUGAR VALUES ('35', '1', '3');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '35', 'Japón');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '35', '126926000');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '35', 'Japonés');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '35', '377915');

INSERT INTO LUGAR VALUES ('36', '1', '1');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '36', 'Colombia');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '36', '49583637');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '36', 'Español');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '36', '1141748');

INSERT INTO LUGAR VALUES ('37', '1', '4');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '37', 'Senegal');
INSERT INTO OBSERVACIONLUGAR VALUES ('2', '37', '15589485');
INSERT INTO OBSERVACIONLUGAR VALUES ('3', '37', 'Francés');
INSERT INTO OBSERVACIONLUGAR VALUES ('4', '37', '196722');


/*CIUDAD --------------------------*/

INSERT INTO LUGAR VALUES ('38', '2', '6');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '38', 'Moscu');

INSERT INTO LUGAR VALUES ('39', '2', '9');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '39', 'Montevideo');

INSERT INTO LUGAR VALUES ('40', '2', '10');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '40', 'Lisboa');

INSERT INTO LUGAR VALUES ('41', '2', '13');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '41', 'Teherán');

INSERT INTO LUGAR VALUES ('42', '2', '14');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '42', 'Saint-Denis');

INSERT INTO LUGAR VALUES ('43', '2', '15');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '43', 'Melbourne');

INSERT INTO LUGAR VALUES ('44', '2', '16');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '44', 'Lima');

INSERT INTO LUGAR VALUES ('45', '2', '18');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '45', 'Buenos Aires');

INSERT INTO LUGAR VALUES ('46', '2', '19');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '46', 'Reykjavík');

INSERT INTO LUGAR VALUES ('47', '2', '20');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '47', 'Zagreb');

INSERT INTO LUGAR VALUES ('48', '2', '21');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '48', 'Abuya');

INSERT INTO LUGAR VALUES ('49', '2', '22');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '49', 'Río de Janeiro');

INSERT INTO LUGAR VALUES ('50', '2', '23');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '50', 'Berna');

INSERT INTO LUGAR VALUES ('51', '2', '24');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '51', 'San José');

INSERT INTO LUGAR VALUES ('52', '2', '26');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '52', 'Berlin');

INSERT INTO LUGAR VALUES ('53', '2', '27');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '53', 'Coyoacán');

INSERT INTO LUGAR VALUES ('54', '2', '28');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '54', 'Solna');

INSERT INTO LUGAR VALUES ('55', '2', '29');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '55', 'Seoul');

INSERT INTO LUGAR VALUES ('56', '2', '30');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '56', 'Bruxelles');

INSERT INTO LUGAR VALUES ('57', '2', '31');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '57', 'ciudad de Panamá');

INSERT INTO LUGAR VALUES ('58', '2', '33');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '58', 'Londres');

INSERT INTO LUGAR VALUES ('59', '2', '34');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '59', 'Varsovia');

INSERT INTO LUGAR VALUES ('60', '2', '36');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '60', 'Barranquilla');

INSERT INTO LUGAR VALUES ('61', '2', '17');
INSERT INTO OBSERVACIONLUGAR VALUES ('1', '61', 'København');
