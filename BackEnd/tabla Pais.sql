use DW_UMG
go

if exists(select 1 from sysobjects where name = 'Pais')
Begin
	Drop table Pais
ENd
go
CREATE TABLE Pais (
Id int identity primary key,
Iso varchar(2),
Nombre varchar(80) 
) 
go

SET IDENTITY_INSERT [dbo].[Pais] ON 

INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(1, 'AF', 'Afganistán');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(2, 'AX', 'Islas Gland');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(3, 'AL', 'Albania');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(4, 'DE', 'Alemania');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(5, 'AD', 'Andorra');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(6, 'AO', 'Angola');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(7, 'AI', 'Anguilla');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(8, 'AQ', 'Antártida');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(9, 'AG', 'Antigua y Barbuda');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(10, 'AN', 'Antillas Holandesas');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(11, 'SA', 'Arabia Saudí');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(12, 'DZ', 'Argelia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(13, 'AR', 'Argentina');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(14, 'AM', 'Armenia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(15, 'AW', 'Aruba');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(16, 'AU', 'Australia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(17, 'AT', 'Austria');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(18, 'AZ', 'Azerbaiyán');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(19, 'BS', 'Bahamas');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(20, 'BH', 'Bahréin');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(21, 'BD', 'Bangladesh');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(22, 'BB', 'Barbados');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(23, 'BY', 'Bielorrusia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(24, 'BE', 'Bélgica');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(25, 'BZ', 'Belice');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(26, 'BJ', 'Benin');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(27, 'BM', 'Bermudas');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(28, 'BT', 'Bhután');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(29, 'BO', 'Bolivia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(30, 'BA', 'Bosnia y Herzegovina');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(31, 'BW', 'Botsuana');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(32, 'BV', 'Isla Bouvet');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(33, 'BR', 'Brasil');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(34, 'BN', 'Brunéi');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(35, 'BG', 'Bulgaria');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(36, 'BF', 'Burkina Faso');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(37, 'BI', 'Burundi');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(38, 'CV', 'Cabo Verde');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(39, 'KY', 'Islas Caimán');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(40, 'KH', 'Camboya');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(41, 'CM', 'Camerún');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(42, 'CA', 'Canadá');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(43, 'CF', 'República Centroafricana');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(44, 'TD', 'Chad');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(45, 'CZ', 'República Checa');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(46, 'CL', 'Chile');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(47, 'CN', 'China');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(48, 'CY', 'Chipre');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(49, 'CX', 'Isla de Navidad');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(50, 'VA', 'Ciudad del Vaticano');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(51, 'CC', 'Islas Cocos');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(52, 'CO', 'Colombia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(53, 'KM', 'Comoras');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(54, 'CD', 'República Democrática del Congo');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(55, 'CG', 'Congo');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(56, 'CK', 'Islas Cook');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(57, 'KP', 'Corea del Norte');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(58, 'KR', 'Corea del Sur');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(59, 'CI', 'Costa de Marfil');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(60, 'CR', 'Costa Rica');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(61, 'HR', 'Croacia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(62, 'CU', 'Cuba');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(63, 'DK', 'Dinamarca');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(64, 'DM', 'Dominica');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(65, 'DO', 'República Dominicana');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(66, 'EC', 'Ecuador');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(67, 'EG', 'Egipto');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(68, 'SV', 'El Salvador');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(69, 'AE', 'Emiratos Árabes Unidos');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(70, 'ER', 'Eritrea');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(71, 'SK', 'Eslovaquia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(72, 'SI', 'Eslovenia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(73, 'ES', 'España');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(74, 'UM', 'Islas ultramarinas de Estados Unidos');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(75, 'US', 'Estados Unidos');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(76, 'EE', 'Estonia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(77, 'ET', 'Etiopía');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(78, 'FO', 'Islas Feroe');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(79, 'PH', 'Filipinas');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(80, 'FI', 'Finlandia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(81, 'FJ', 'Fiyi');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(82, 'FR', 'Francia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(83, 'GA', 'Gabón');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(84, 'GM', 'Gambia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(85, 'GE', 'Georgia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(86, 'GS', 'Islas Georgias del Sur y Sandwich del Sur');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(87, 'GH', 'Ghana');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(88, 'GI', 'Gibraltar');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(89, 'GD', 'Granada');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(90, 'GR', 'Grecia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(91, 'GL', 'Groenlandia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(92, 'GP', 'Guadalupe');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(93, 'GU', 'Guam');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(94, 'GT', 'Guatemala');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(95, 'GF', 'Guayana Francesa');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(96, 'GN', 'Guinea');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(97, 'GQ', 'Guinea Ecuatorial');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(98, 'GW', 'Guinea-Bissau');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(99, 'GY', 'Guyana');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(100, 'HT', 'Haití');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(101, 'HM', 'Islas Heard y McDonald');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(102, 'HN', 'Honduras');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(103, 'HK', 'Hong Kong');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(104, 'HU', 'Hungría');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(105, 'IN', 'India');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(106, 'ID', 'Indonesia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(107, 'IR', 'Irán');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(108, 'IQ', 'Iraq');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(109, 'IE', 'Irlanda');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(110, 'IS', 'Islandia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(111, 'IL', 'Israel');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(112, 'IT', 'Italia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(113, 'JM', 'Jamaica');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(114, 'JP', 'Japón');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(115, 'JO', 'Jordania');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(116, 'KZ', 'Kazajstán');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(117, 'KE', 'Kenia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(118, 'KG', 'Kirguistán');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(119, 'KI', 'Kiribati');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(120, 'KW', 'Kuwait');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(121, 'LA', 'Laos');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(122, 'LS', 'Lesotho');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(123, 'LV', 'Letonia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(124, 'LB', 'Líbano');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(125, 'LR', 'Liberia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(126, 'LY', 'Libia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(127, 'LI', 'Liechtenstein');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(128, 'LT', 'Lituania');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(129, 'LU', 'Luxemburgo');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(130, 'MO', 'Macao');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(131, 'MK', 'ARY Macedonia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(132, 'MG', 'Madagascar');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(133, 'MY', 'Malasia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(134, 'MW', 'Malawi');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(135, 'MV', 'Maldivas');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(136, 'ML', 'Malí');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(137, 'MT', 'Malta');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(138, 'FK', 'Islas Malvinas');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(139, 'MP', 'Islas Marianas del Norte');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(140, 'MA', 'Marruecos');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(141, 'MH', 'Islas Marshall');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(142, 'MQ', 'Martinica');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(143, 'MU', 'Mauricio');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(144, 'MR', 'Mauritania');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(145, 'YT', 'Mayotte');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(146, 'MX', 'México');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(147, 'FM', 'Micronesia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(148, 'MD', 'Moldavia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(149, 'MC', 'Mónaco');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(150, 'MN', 'Mongolia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(151, 'MS', 'Montserrat');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(152, 'MZ', 'Mozambique');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(153, 'MM', 'Myanmar');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(154, 'NA', 'Namibia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(155, 'NR', 'Nauru');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(156, 'NP', 'Nepal');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(157, 'NI', 'Nicaragua');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(158, 'NE', 'Níger');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(159, 'NG', 'Nigeria');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(160, 'NU', 'Niue');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(161, 'NF', 'Isla Norfolk');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(162, 'NO', 'Noruega');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(163, 'NC', 'Nueva Caledonia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(164, 'NZ', 'Nueva Zelanda');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(165, 'OM', 'Omán');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(166, 'NL', 'Países Bajos');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(167, 'PK', 'Pakistán');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(168, 'PW', 'Palau');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(169, 'PS', 'Palestina');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(170, 'PA', 'Panamá');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(171, 'PG', 'Papúa Nueva Guinea');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(172, 'PY', 'Paraguay');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(173, 'PE', 'Perú');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(174, 'PN', 'Islas Pitcairn');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(175, 'PF', 'Polinesia Francesa');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(176, 'PL', 'Polonia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(177, 'PT', 'Portugal');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(178, 'PR', 'Puerto Rico');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(179, 'QA', 'Qatar');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(180, 'GB', 'Reino Unido');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(181, 'RE', 'Reunión');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(182, 'RW', 'Ruanda');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(183, 'RO', 'Rumania');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(184, 'RU', 'Rusia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(185, 'EH', 'Sahara Occidental');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(186, 'SB', 'Islas Salomón');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(187, 'WS', 'Samoa');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(188, 'AS', 'Samoa Americana');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(189, 'KN', 'San Cristóbal y Nevis');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(190, 'SM', 'San Marino');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(191, 'PM', 'San Pedro y Miquelón');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(192, 'VC', 'San Vicente y las Granadinas');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(193, 'SH', 'Santa Helena');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(194, 'LC', 'Santa Lucía');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(195, 'ST', 'Santo Tomé y Príncipe');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(196, 'SN', 'Senegal');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(197, 'CS', 'Serbia y Montenegro');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(198, 'SC', 'Seychelles');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(199, 'SL', 'Sierra Leona');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(200, 'SG', 'Singapur');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(201, 'SY', 'Siria');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(202, 'SO', 'Somalia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(203, 'LK', 'Sri Lanka');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(204, 'SZ', 'Suazilandia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(205, 'ZA', 'Sudáfrica');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(206, 'SD', 'Sudán');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(207, 'SE', 'Suecia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(208, 'CH', 'Suiza');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(209, 'SR', 'Surinam');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(210, 'SJ', 'Svalbard y Jan Mayen');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(211, 'TH', 'Tailandia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(212, 'TW', 'Taiwán');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(213, 'TZ', 'Tanzania');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(214, 'TJ', 'Tayikistán');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(215, 'IO', 'Territorio Británico del Océano Índico');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(216, 'TF', 'Territorios Australes Franceses');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(217, 'TL', 'Timor Oriental');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(218, 'TG', 'Togo');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(219, 'TK', 'Tokelau');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(220, 'TO', 'Tonga');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(221, 'TT', 'Trinidad y Tobago');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(222, 'TN', 'Túnez');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(223, 'TC', 'Islas Turcas y Caicos');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(224, 'TM', 'Turkmenistán');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(225, 'TR', 'Turquía');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(226, 'TV', 'Tuvalu');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(227, 'UA', 'Ucrania');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(228, 'UG', 'Uganda');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(229, 'UY', 'Uruguay');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(230, 'UZ', 'Uzbekistán');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(231, 'VU', 'Vanuatu');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(232, 'VE', 'Venezuela');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(233, 'VN', 'Vietnam');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(234, 'VG', 'Islas Vírgenes Británicas');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(235, 'VI', 'Islas Vírgenes de los Estados Unidos');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(236, 'WF', 'Wallis y Futuna');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(237, 'YE', 'Yemen');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(238, 'DJ', 'Yibuti');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(239, 'ZM', 'Zambia');
INSERT INTO [dbo].[Pais] ([Id], [Iso], [Nombre]) VALUES(240, 'ZW', 'Zimbabue');
SET IDENTITY_INSERT [dbo].[Pais] OFF
if exists(select 1 from sysobjects where name = 'Categoria')
Begin
	Drop table Categoria
ENd
go
CREATE TABLE Categoria (
CA_ID			int identity primary key,
CA_Padre		int null,
CA_Descripcion	varchar(200),
CA_Imagen		varchar(100)
)	
go

SET IDENTITY_INSERT [dbo].Categoria ON 
INSERT INTO Categoria (CA_ID, CA_Padre, CA_Descripcion,CA_Imagen) VALUES(1,null, 'Arte y antigüedades', 'C_1.jpg');
INSERT INTO Categoria (CA_ID, CA_Padre, CA_Descripcion,CA_Imagen) VALUES(2,null, 'Bebés', 'C_2.jpg');
INSERT INTO Categoria (CA_ID, CA_Padre, CA_Descripcion,CA_Imagen) VALUES(3,null, 'Belleza y salud', 'C_3.jpg');
INSERT INTO Categoria (CA_ID, CA_Padre, CA_Descripcion,CA_Imagen) VALUES(4,null, 'Casa, jardín y bricolaje', 'C_4.jpg');
SET IDENTITY_INSERT [dbo].Categoria OFF

select * from Categoria

if exists(select 1 from sysobjects where name = 'sp_catalogo')
Begin
	Drop procedure sp_catalogo
ENd
go
CREATE procedure sp_catalogo (
@i_id			int			=	null,
@i_operacion	varchar(2)	=	null,
@i_tabla		int			=	null
/*----------------------------------------------------------*/
/*Elaborado por Nelson Ricardo Rivera Rivas					*/
/*Proyecto de Diseño WEB  UMG								*/
/*----------------------------------------------------------*/
/*18/09/2017 Emision Inicial								*/
/*----------------------------------------------------------*/
) 
as
begin
if @i_operacion = 'C'
	begin	
		if @i_tabla = 1 -- Tabla Categorias
			begin
				select Ca_id as Id, Ca_descripcion  as  Descripcion from Categoria where CA_Padre is null	
			end
		if @i_tabla = 2 -- Tabla Categorias
			begin
				select Ca_id as Id, Ca_descripcion  as  Descripcion from Categoria where CA_Padre = @i_id
			end
		if @i_tabla = 3	--Tabla Paises
			begin
				select Id, Nombre, Iso from Pais 	
			end
	end 
end

go


if exists(select 1 from sysobjects where name = 'P_Imagen')
Begin
	Drop table P_Imagen
ENd
go
CREATE TABLE P_Imagen (
PI_Id				int identity primary key,
--PI_Nombre			varchar(200),
PI_Producto			int,
PI_Extension		varchar(10)
)	
go

if exists(select 1 from sysobjects where name = 'sp_imagen')
Begin
	Drop procedure sp_imagen
ENd
go
CREATE procedure sp_imagen (
@i_operacion		varchar(3)	=	null,
@i_mantenimiento	varchar(1)	=	null,
@i_producto			int			=	null,
@i_extension		varchar(15)	=	null
/*----------------------------------------------------------*/
/*Elaborado por Nelson Ricardo Rivera Rivas					*/
/*Proyecto de Diseño WEB  UMG								*/
/*----------------------------------------------------------*/
/*18/09/2017 Emision Inicial								*/
/*----------------------------------------------------------*/
) 
as
begin
declare @i_id				int			=	null;
if @i_mantenimiento = 'I'
	begin	
		if @i_operacion = 'IP' -- Imagen de Producto
			begin
			insert into P_Imagen values(@i_producto,@i_extension)
			select @i_id = @@identity
			select @i_id
			end
	end 
if @i_mantenimiento = 'C'
	begin
		if @i_operacion = 'CIP' --Consulta Iamgenes de Productos
			begin
				select 
				'Nombre'		=	convert(varchar(10),PI_Id  )+PI_Extension ,
				'Id'			=	PI_Id  ,
				'Extension'		=	PI_Extension 
				from P_imagen
				where PI_Producto = @i_producto
			end
	end
end

go



-- tabla producto y sp
if exists(select 1 from sysobjects where name = 'Producto')
Begin
	Drop table Producto
ENd
go
CREATE TABLE Producto(
	PR_ID int identity primary key,
	PR_Categoria		int,
	PR_SubCategoria		int,
	PR_Nombre			varchar(100),
	PR_Descripcion		varchar(250),
	PR_Cantidad			int,
	PR_Precio			numeric(10,2) ,
	PR_Moneda			int,
	PR_Pais				int,
	PR_Usuario			varchar(10),
	PR_Fecha_mod		datetime
)
go

if exists(select 1 from sysobjects where name = 'sp_producto')
Begin
	Drop procedure sp_producto
ENd
go
CREATE procedure sp_producto (
@i_operacion		varchar(3)		=	null,
@i_mantenimiento	varchar(1)		=	null,
@i_producto			int				=	null,
@i_extension		varchar(15)		=	null,
@i_Categoria		int				=	null,
@i_SubCategoria		int				=	null,
@i_Nombre			varchar(100)	=	null,
@i_Descripcion		varchar(250)	=	null,
@i_Cantidad			int				=	null,
@i_Precio			numeric(10,2)	=	null,
@i_Moneda			int				=	null,
@i_Pais				int				=	null,
@i_Usuario			varchar(10)		=	null,
@i_Fecha_mod		varchar(10)		=	null
/*----------------------------------------------------------*/
/*Elaborado por Nelson Ricardo Rivera Rivas					*/
/*Proyecto de Diseño WEB  UMG								*/
/*----------------------------------------------------------*/
/*18/09/2017 Emision Inicial								*/
/*----------------------------------------------------------*/
) 
as
begin
declare @i_id				int			=	null;
if @i_mantenimiento = 'I'
	begin	
		if @i_operacion = 'IP' -- Imagen de Producto
			begin
			insert into Producto 
			(
			--PR_ID ,
			PR_Categoria		,
			PR_SubCategoria		,
			PR_Nombre			,
			PR_Descripcion		,
			PR_Cantidad			,
			PR_Precio		,
			PR_Moneda			,
			PR_Pais				,
			PR_Usuario			,
			PR_Fecha_mod		
			)
			select 
			@i_Categoria ,
			@i_SubCategoria ,
			@i_Nombre ,
			@i_Descripcion,
			@i_Cantidad,
			@i_Precio,
			@i_Moneda,
			@i_Pais ,
			@i_Usuario ,
			getdate()
			
			select @i_id = @@identity
			select @i_id
			end
	end 
	if @i_mantenimiento = 'U'
	begin	
		if @i_operacion = 'UP' -- Imagen de Producto
			begin
			update Producto 
			
			set 
			PR_Categoria		=	@i_Categoria	,
			PR_SubCategoria		=	@i_SubCategoria,
			PR_Nombre			=	@i_Nombre,
			PR_Descripcion		=	@i_Descripcion,
			PR_Cantidad			=	@i_Cantidad,
			PR_Precio			=	@i_Precio,
			PR_Moneda			=	@i_Moneda,
			PR_Pais				=	@i_Pais,
			PR_Usuario			=	@i_Usuario,
			PR_Fecha_mod		=	getdate()
			where PR_ID =@i_producto 

			select @i_producto
			end
	end 
if @i_mantenimiento = 'C'
	begin
		if @i_operacion = 'CP' --Consulta Iamgenes de Productos
			begin
				select 
					PR_ID,	PR_Categoria	,PR_SubCategoria	,PR_Nombre	,PR_Descripcion	,PR_Cantidad	,PR_Precio	,PR_Moneda	,PR_Pais	,PR_Usuario,PR_Fecha_mod
				from 
					producto 
				where
					PR_ID = @i_producto 
			end	
	end
end

go
-- tabla producto y sp
if exists(select 1 from sysobjects where name = 'USUARIO')
Begin
	Drop table USUARIO
ENd
go
CREATE TABLE [dbo].USUARIO(
	[id] [int] IDENTITY(1,1) primary key,
	[usuario] [varchar](30) NULL,
	[contraseña] [varchar](30) NULL,
	[nombre] [varchar](25) NULL,
	)
go

if exists(select 1 from sysobjects where name = 'sp_login')
Begin
	Drop procedure sp_login
ENd
go
create procedure sp_login(
@i_usuario			varchar(30)			= null,
@i_contraseña		varchar(30)			= null,
@i_operacion		varchar(2)			= null
)as
begin
if @i_operacion = 'C'
	begin
	select Id ,Usuario, Contraseña , Nombre  from usuario  where usuario = @i_usuario and  contraseña = @i_contraseña  
	end
end

