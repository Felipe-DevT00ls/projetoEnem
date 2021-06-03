-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29-Out-2019 às 22:02
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enem2007`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `area_conhecimento`
--

CREATE TABLE `area_conhecimento` (
  `cod_conhecimento` int(11) NOT NULL,
  `descricao_area_conhecimento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `area_conhecimento`
--

INSERT INTO `area_conhecimento` (`cod_conhecimento`, `descricao_area_conhecimento`) VALUES
(1, 'Ciências da Natureza'),
(2, 'Ciências Humanas'),
(3, 'Linguagens'),
(4, 'Redação');

-- --------------------------------------------------------

--
-- Estrutura da tabela `assunto`
--

CREATE TABLE `assunto` (
  `COD_ASSUNTO` int(11) NOT NULL,
  `DESCRICAO_ASSUNTO` varchar(1000) NOT NULL,
  `COD_DISCIPLINA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `assunto`
--

INSERT INTO `assunto` (`COD_ASSUNTO`, `DESCRICAO_ASSUNTO`, `COD_DISCIPLINA`) VALUES
(1, 'Patrimônio cultural', 11),
(2, 'Obras de Anita Malfat criticadas por Monteiro Lobato', 11),
(3, 'Interpretação do trecho Vidas Secas', 9),
(4, 'Variação linguística', 8),
(5, 'Objetos tridimensionais', 11),
(6, 'Comércio ilícito da fauna silvestre', 1),
(7, 'Análise de gráfico de espécies ameaçadas de extinção em 2011', 14),
(8, 'Número de espécies de mamíferos', 14),
(9, 'Interpretação de texto', 8),
(10, 'Interpretação de texto', 8),
(11, 'Regra de três', 14),
(12, 'Probabilidade', 14),
(13, 'Substância no organismo', 2),
(14, 'Figuras de linguagem', 8),
(15, 'Fotossíntese', 1),
(16, 'Interpretação de texto', 8),
(17, 'História do Brasil', 4),
(18, 'Abolição da escravatura', 4),
(19, 'Imigração européia para o Brasil', 4),
(20, 'Interpretação de texto', 8),
(21, 'Revolução Francesa', 4),
(22, 'Interpretação de texto', 8),
(23, 'Pesquisa sobre o mosquito da dengue', 1),
(24, 'Percentual', 14),
(25, 'Porcentagem', 14),
(26, 'vocabulário', 8),
(27, 'Interpretação de texto', 8),
(28, 'Variação Linguística', 8),
(29, 'Interpretação de texto', 5),
(30, 'Percentual', 14),
(31, 'Cartografia', 5),
(32, 'Cartografia', 5),
(33, 'semelhança genética', 1),
(34, 'Agricultura', 5),
(35, 'Interpretação de Gráficos', 5),
(36, 'Interpretação de Imagens', 14),
(37, 'Interpretação de texto', 5),
(38, 'Análise de texto', 5),
(39, 'Interpretação de descrição', 5),
(40, 'Interpretação de Gráficos', 14),
(41, ' Sistema de aquecimento', 5),
(42, 'Interpretação de Texto', 1),
(43, 'Interpretação de Texto', 8),
(44, 'Interpretação de Texto', 8),
(45, 'Produção de lixo', 1),
(46, 'Problemas Ambientais', 1),
(47, 'Processos de Formação Socioeconômica', 5),
(48, 'Dados dos Gráficos', 5),
(49, 'Estudo demográfico', 5),
(50, 'Pré-História', 4),
(51, 'Interpretação de Imagem', 11),
(52, 'Fenômenos biológicos ', 1),
(53, 'Processo evolutivo', 1),
(54, 'Reprodução ', 1),
(55, 'Energia ', 3),
(56, 'O uso da cana-de-açúcar', 5),
(57, 'Interpretação de Texto', 5),
(58, 'Fontes de produção de energia', 3),
(59, 'Consumo de energia', 3),
(60, 'Legislação da água', 5),
(61, 'Recursos hídricos', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas`
--

CREATE TABLE `aulas` (
  `id` int(11) NOT NULL,
  `link` varchar(225) NOT NULL,
  `materia` varchar(225) NOT NULL,
  `cod_materia` int(11) NOT NULL,
  `nome_aula` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aulas`
--

INSERT INTO `aulas` (`id`, `link`, `materia`, `cod_materia`, `nome_aula`) VALUES
(1, 'https://cursoenemgratuito.com.br/pre-historia/', 'Historia', 8, 'Pré-história – A ascensão do ser humano sobre à natureza'),
(2, 'https://cursoenemgratuito.com.br/grecia-antiga-legado-cultural-grego-e-romano-historia-enem/', 'Historia', 8, 'Grécia Antiga e Roma: legado cultural grego e romano'),
(3, 'https://cursoenemgratuito.com.br/imperio-romano/', 'Historia', 8, 'Ascensão e queda do Império Romano'),
(9, 'https://cursoenemgratuito.com.br/egito-antigo/', 'Historia', 8, 'Egito Antigo - uma dádiva do Nilo em meio à vastidão do Saara'),
(11, 'https://cursoenemgratuito.com.br/mesopotamia/', 'Historia', 8, 'Mesopotâmia - um dos berços da civilização\r\n'),
(12, 'https://cursoenemgratuito.com.br/hebreus/', 'Historia', 8, 'Hebreus, diásporas e o pioneirismo monoteísta'),
(13, 'https://cursoenemgratuito.com.br/fenicios/', 'Historia', 8, 'Fenícios'),
(15, 'https://cursoenemgratuito.com.br/persas/', 'Historia', 8, 'Os persas – Conflitos culturais de uma região turbulenta'),
(16, 'https://cursoenemgratuito.com.br/organizacao-social-da-antiguidade/', 'Historia', 8, 'Organização social da Antiguidade Clássica'),
(17, 'https://cursoenemgratuito.com.br/civilizacoes-pre-colombianas-historia-enem/', 'Historia', 8, 'Civilizações pré-colombianas: maias, astecas e incas'),
(18, 'https://cursoenemgratuito.com.br/incas-astecas-e-maias/', 'Historia', 8, 'Incas, Astecas e Maias'),
(19, 'https://cursoenemgratuito.com.br/povos-barbaros/', 'Historia', 8, 'Povos bárbaros – os outros além das fronteiras'),
(20, 'https://cursoenemgratuito.com.br/idade-media-reinos-romano-germanicos/', 'Historia', 8, 'Idade Média: Feudalismo e os reinos romano-germânicos'),
(21, 'https://cursoenemgratuito.com.br/imperio-bizantino/', 'Historia', 8, 'Império Bizantino – Arte e expansão em Bizâncio'),
(22, 'https://cursoenemgratuito.com.br/imperio-arabe/', 'Historia', 8, 'Mundo árabe'),
(23, 'https://cursoenemgratuito.com.br/monarquias-nacionais/', 'Historia', 8, '\r\nFormação das Monarquias Nacionais - Raízes do Absolutismo '),
(24, 'https://cursoenemgratuito.com.br/absolutismo-historia-enem/', 'Historia', 8, 'O sistema político do Absolutismo'),
(25, 'https://cursoenemgratuito.com.br/colonizacao-mercantilista-historia-enem/', 'Historia', 8, 'Colonização mercantilista'),
(26, 'https://cursoenemgratuito.com.br/renascimento/', 'Historia', 8, 'Renascimento – Valores antigos em uma nova história'),
(27, 'https://cursoenemgratuito.com.br/brasil-colonia-historia-enem/', 'Historia', 8, 'Brasil Colônia - O ciclo da cana-de-açúcar e do ouro'),
(28, 'https://cursoenemgratuito.com.br/economia-acucareira/', 'Historia', 8, 'Economia açucareira'),
(29, 'https://cursoenemgratuito.com.br/a-conquista-da-america/', 'Historia', 8, 'A conquista da América: conflitos e etnocídio'),
(30, 'https://cursoenemgratuito.com.br/colonizacao-espanhola/', 'Historia', 8, 'Administração colonial Parte 1 – A exploração espanhola na América'),
(31, 'https://cursoenemgratuito.com.br/administracao-colonial-parte-2-portugueses-ingleses-e-franceses/', 'Historia', 8, 'Administração colonial Parte 2 - Portugueses, ingleses e franceses'),
(32, 'https://cursoenemgratuito.com.br/reformas-religiosas/', 'Historia', 8, 'Reformas Religiosas – A fragmentação do cristianismo no ocidente'),
(33, 'https://cursoenemgratuito.com.br/iluminismo-o-seculo-das-luzes-na-europa/', 'Historia', 8, 'Iluminismo – O Século das Luzes na Europa'),
(34, 'https://cursoenemgratuito.com.br/revolucao-francesa-historia-enem/', 'Historia', 8, 'O que foi a Revolução Francesa e suas características'),
(35, 'https://cursoenemgratuito.com.br/revoltas-coloniais-historia-enem/', 'Historia', 8, 'Revoltas Coloniais no Brasil'),
(36, 'https://cursoenemgratuito.com.br/independencia-brasil-enem/', 'Historia', 8, 'A Independência do Brasil'),
(37, 'https://cursoenemgratuito.com.br/povos-indigenas/', 'Historia', 8, 'Povos indígenas'),
(38, 'https://cursoenemgratuito.com.br/historia-dos-negros-no-brasil/', 'Historia', 8, 'História dos negros no Brasil'),
(39, 'https://cursoenemgratuito.com.br/formas-de-resistencia-dos-escravos/', 'Historia', 8, 'Formas de resistência dos escravos indígenas e africanos na América'),
(40, 'https://cursoenemgratuito.com.br/independencia-dos-estados-unidos/', 'Historia', 8, 'Independência dos Estados Unidos – A primeira emancipação colonial das Américas'),
(41, 'https://cursoenemgratuito.com.br/guerra-da-secessao/', 'Historia', 8, 'Guerra da Secessão – Um conflito para além da escravidão'),
(42, 'https://cursoenemgratuito.com.br/independencia-da-america-latina/', 'Historia', 8, 'Independência da América Latina – Conhecendo os “libertadores da América”'),
(43, 'https://cursoenemgratuito.com.br/primeiro-reinado/', 'Historia', 8, 'Primeiro Reinado – O governo de D. Pedro I'),
(44, 'https://cursoenemgratuito.com.br/periodo-regencial/', 'Historia', 8, 'Período Regencial (1831-1840)'),
(45, 'https://cursoenemgratuito.com.br/revoltas-regenciais/', 'Historia', 8, 'Revoltas regenciais – Dos escravizados às elites: o Brasil em ebulição'),
(46, 'https://cursoenemgratuito.com.br/segundo-reinado-parte-1/', 'Historia', 8, 'Segundo Reinado: o retorno da figura do Imperador'),
(47, 'https://cursoenemgratuito.com.br/fim-do-segundo-reinado/', 'Historia', 8, 'Fim do Segundo Reinado: a crise da Monarquia'),
(48, 'https://cursoenemgratuito.com.br/ciclo-do-cafe/', 'Historia', 8, 'O ciclo do café'),
(49, 'https://cursoenemgratuito.com.br/imigracao-para-o-brasil/', 'Historia', 8, 'Imigração para o Brasil nos séculos XIX e XX'),
(50, 'https://cursoenemgratuito.com.br/imperio-napoleonico/', 'Historia', 8, 'Império Napoleônico - Uma nova era na França'),
(51, 'https://cursoenemgratuito.com.br/comuna-de-paris/', 'Historia', 8, 'Comuna de Paris – Trabalhadoras e trabalhadores unidos'),
(52, 'https://cursoenemgratuito.com.br/primeira-revolucao-industrial-o-inicio-do-mundo-industrializado/', 'Historia', 8, 'Primeira Revolução Industrial - O início do mundo industrializado'),
(53, 'https://cursoenemgratuito.com.br/movimentos-operarios/', 'Historia', 8, 'Movimentos operários - Lutas sociais na Revolução Industrial'),
(54, 'https://cursoenemgratuito.com.br/modos-de-producao-historia-enem/', 'Historia', 8, 'Modos de produção e suas relações de trabalho '),
(55, 'https://cursoenemgratuito.com.br/karl-marx/', 'Historia', 8, 'Karl Marx – Ideias que reverberaram para além de sua época'),
(56, 'https://cursoenemgratuito.com.br/revolucoes-na-europa-do-seculo-xix/', 'Historia', 8, 'Revoluções na Europa do Século XIX '),
(57, 'https://cursoenemgratuito.com.br/unificacao-italiana-e-alema/', 'Historia', 8, 'Unificação italiana e alemã – Os jovens países europeus do século XIX'),
(58, 'https://cursoenemgratuito.com.br/segunda-revolucao-industrial/', 'Historia', 8, 'Segunda Revolução Industrial – Entre impérios e lutas'),
(59, 'https://cursoenemgratuito.com.br/imperialismo-europeu/', 'Historia', 8, 'Imperialismo europeu – Exploração e dominação na África e na Ásia'),
(60, 'https://cursoenemgratuito.com.br/proclamacao-da-republica/', 'Historia', 8, 'Proclamação da República'),
(61, 'https://cursoenemgratuito.com.br/republica-oligarquica-historia-enem/', 'Historia', 8, '\r\nRepública Oligárquica: veja as características da Política do Café com Leite '),
(62, 'https://cursoenemgratuito.com.br/ciclo-da-borracha/', 'Historia', 8, 'Ciclo da borracha na Amazônia'),
(63, 'https://cursoenemgratuito.com.br/primeira-guerra-mundial/', 'Historia', 8, 'A Primeira Guerra Mundial – O primeiro grande conflito que englobou o mundo'),
(64, 'https://cursoenemgratuito.com.br/estados-unidos-no-seculo-xix/', 'Historia', 8, 'Estados Unidos no século XIX – do Destino Manifesto ao Big Stick'),
(65, 'https://cursoenemgratuito.com.br/o-movimento-sufragista/', 'Historia', 8, 'O movimento sufragista do início do século XX – Voto, cidadania e sociedade'),
(66, 'https://cursoenemgratuito.com.br/crise-de-1929/', 'Historia', 8, 'Crise de 1929 e ascensão do nazifascismo na Europa – Da crise econômica ao totalitarismo'),
(67, 'https://cursoenemgratuito.com.br/totalitarismo-europeu-historia/', 'Historia', 8, 'Totalitarismo europeu: nazismo e fascismo'),
(68, 'https://cursoenemgratuito.com.br/segunda-guerra-mundial/', 'Historia', 8, 'A Segunda Guerra Mundial: o maior conflito da história:'),
(70, 'https://cursoenemgratuito.com.br/era-vargas-historia-enem/', 'Historia', 8, 'A Era Vargas na Presidência da República'),
(71, 'https://cursoenemgratuito.com.br/estado-novo/', 'Historia', 8, 'Estado Novo: a ditadura de Vargas'),
(72, 'https://cursoenemgratuito.com.br/periodo-democratico/', 'Historia', 8, 'Período democrático brasileiro: 1945 a 1964'),
(73, 'https://cursoenemgratuito.com.br/a-questao-de-israel/', 'Historia', 8, 'Estado de Israel, nação e as tragédias da Segunda Guerra Mundial'),
(74, 'https://cursoenemgratuito.com.br/guerra-fria-historia-enem/', 'Historia', 8, 'A Guerra Fria - ou quando a humanidade viveu sob tensão'),
(75, 'https://cursoenemgratuito.com.br/primavera-de-praga/', 'Historia', 8, 'A Primavera de Praga – Conflitos em meio a um mundo polarizado'),
(76, 'https://cursoenemgratuito.com.br/guerra-do-vietna/', 'Historia', 8, 'A ofensiva de Tet – O momento que mudou os rumos da Guerra do Vietnã'),
(77, 'https://cursoenemgratuito.com.br/movimentos-sociais-historia-enem/', 'Historia', 8, 'Movimentos sociais do século XX'),
(78, 'https://cursoenemgratuito.com.br/movimentos-de-1968/', 'Historia', 8, ' Os movimentos de 1968 – A luta contra o conservadorismo no ano que não terminou '),
(80, 'https://cursoenemgratuito.com.br/movimento-negro/', 'Historia', 8, ' A disputa por direitos civis nos Estados Unidos – O movimento negro e o fim do Apartheid social '),
(81, 'https://cursoenemgratuito.com.br/ditadura-militar-historia-enem/', 'Historia', 8, ' A Ditadura Militar no Brasil '),
(82, 'https://cursoenemgratuito.com.br/atos-institucionais-ditadura/', 'Historia', 8, 'A Ditadura Militar no Brasil: veja os Atos Institucionais'),
(83, 'https://cursoenemgratuito.com.br/constituicao-de-1988/', 'Historia', 8, 'A Constituição de 1988'),
(85, 'https://cursoenemgratuito.com.br/nova-republica/', 'Historia', 8, 'Nova República – Da reabertura democrática brasileira à virada do milênio'),
(86, 'https://cursoenemgratuito.com.br/historia-cultural-no-territorio-africano-a-heterogeneidade-de-um-continente/', 'Historia', 8, 'História cultural no território africano'),
(87, 'https://cursoenemgratuito.com.br/inscricoes-rupestres-artes-enem/', 'Artes', 1, 'Inscrições rupestres'),
(88, 'https://cursoenemgratuito.com.br/realismo-arte-enem/', 'Artes', 1, 'Realismo'),
(89, 'https://cursoenemgratuito.com.br/impressionismo-artes-enem/', 'Artes', 1, 'O surgimento do impressionismo'),
(90, 'https://cursoenemgratuito.com.br/primitivismo-artes-enem/', 'Artes', 1, 'Primitivismo'),
(91, 'https://cursoenemgratuito.com.br/expressionismo-artes-enem/', 'Artes', 1, 'Expressionismo'),
(92, 'https://cursoenemgratuito.com.br/cubismo-artes-enem/', 'Artes', 1, 'Cubismo'),
(93, 'https://cursoenemgratuito.com.br/surrealismo-artes-enem/', 'Artes', 1, 'Surrealismo'),
(94, 'https://cursoenemgratuito.com.br/dadaismo-artes-enem/', 'Artes', 1, 'Dadaísmo'),
(95, 'https://cursoenemgratuito.com.br/pop-art-artes-enem/', 'Artes', 1, 'Pop art: saiba tudo sobre o movimento artístico'),
(96, 'https://cursoenemgratuito.com.br/futurismo-artes-enem/', 'Artes', 1, 'Futurismo: saiba tudo sobre este movimento artístico'),
(97, 'https://cursoenemgratuito.com.br/minimalismo/', 'Artes', 1, 'Minimalismo'),
(98, 'https://cursoenemgratuito.com.br/modernismo-artes-enem/', 'Artes', 1, 'Modernismo e a Semana de Arte Moderna'),
(99, 'https://cursoenemgratuito.com.br/street-art/', 'Artes', 1, 'Street art'),
(100, 'https://cursoenemgratuito.com.br/land-art/', 'Artes', 1, 'Land Art'),
(101, 'https://cursoenemgratuito.com.br/arte-egipcia/', 'Artes', 1, 'Arte Egípcia'),
(102, 'https://cursoenemgratuito.com.br/arte-romana/', 'Artes', 1, 'Arte Romana'),
(103, 'https://cursoenemgratuito.com.br/arte-no-neolitico/', 'Artes', 1, 'Arte no Neolítico'),
(104, 'https://cursoenemgratuito.com.br/trabalho-domestico-atualidades-enem/', 'Atualidades', 2, 'Divisão do trabalho doméstico: a responsabilidade é de quem?'),
(105, 'https://cursoenemgratuito.com.br/igualdade-de-genero-atualidades-enem/', 'Atualidades', 2, 'Igualdade de gênero e as lutas feministas'),
(106, 'https://cursoenemgratuito.com.br/corrupcao-atualidades-enem/', 'Atualidades', 2, 'Redação Enem: Poder e corrupção no Brasil - Será que o país tem jeito?\r\n'),
(107, 'https://cursoenemgratuito.com.br/vacinas-e-o-movimento-anti-vacinacao-atualidades-enem/', 'Atualidades', 2, 'A crise do Sarampo e o movimento anti-vacinação no Brasil\r\n'),
(108, 'https://cursoenemgratuito.com.br/aeducacao-no-brasil-atualidades-enem/', 'Atualidades', 2, 'A educação no Brasil hoje: retrocessos e problemas que perduram\r\n'),
(109, 'https://cursoenemgratuito.com.br/cotas-raciais-e-sociais/', 'Atualidades', 2, 'O acesso à universidade pública e as cotas raciais e sociais\r\n'),
(110, 'https://cursoenemgratuito.com.br/padroes-de-beleza-atualidades-enem/', 'Atualidades', 2, 'Padrões de beleza\r\n'),
(111, 'https://cursoenemgratuito.com.br/direitos-lgbt-atualidades-enem/', 'Atualidades', 2, 'Direitos LGBT: as lutas de uma comunidade plural\r\n'),
(112, 'https://cursoenemgratuito.com.br/hiv-em-jovens-atualidades/', 'Atualidades', 2, 'O aumento de casos de HIV-AIDS entre jovens brasileiros\r\n'),
(113, 'https://cursoenemgratuito.com.br/substantivos-contaveis-e-incontaveis-ingles-enem/', 'Ingles', 9, 'Substantivos contáveis e incontáveis na língua inglesa'),
(114, 'https://cursoenemgratuito.com.br/falsos-cognatos-ingles-enem/', 'Ingles', 9, 'Substantivos contáveis e incontáveis na língua inglesa\r\nFalsos cognatos e grupos nominais'),
(115, 'https://cursoenemgratuito.com.br/present-perfect-ingles-enem/', 'Ingles', 9, 'Present perfect'),
(116, 'https://cursoenemgratuito.com.br/leitura-eficaz-vestibular-ingles/', 'Ingles', 9, 'Estratégias para uma leitura eficaz no Enem\r\n'),
(117, 'https://cursoenemgratuito.com.br/interpretacao-textos-em-ingles/', 'Ingles', 9, 'Interpretação de textos em inglês: músicas, poesias e charges\r\n'),
(118, 'Pronomes possessivos em inglês\r\n', 'Ingles', 9, 'https://cursoenemgratuito.com.br/pronomes-possessivos-ingles/'),
(119, 'https://cursoenemgratuito.com.br/interpretacao-ingles-enem/', 'Ingles', 9, 'Interpretação textual de diversos gêneros\r\n'),
(120, 'https://cursoenemgratuito.com.br/if-clauses-ingles-enem/', 'Ingles', 9, 'If clauses\r\n'),
(121, 'https://cursoenemgratuito.com.br/pronomes-pessoais-ingles-enem/', 'Ingles', 9, 'Pronomes pessoais, relativos e indeterminados\r\n'),
(122, 'https://cursoenemgratuito.com.br/reported-speech-ingles-enem/', 'Ingles', 9, 'Reported speech\r\n'),
(123, 'https://cursoenemgratuito.com.br/voz-passiva-ingles-enem/', 'Ingles', 9, 'Voz passiva\r\n'),
(124, 'https://cursoenemgratuito.com.br/simple-present-ingles-enem/', 'Ingles', 9, 'Simple Present, Simple Past e Used to\r\n'),
(125, 'https://cursoenemgratuito.com.br/preposicoes-de-tempo-e-lugar/', 'Ingles', 9, 'Preposições de tempo e lugar\r\n'),
(126, 'https://cursoenemgratuito.com.br/present-perfect-x-simple-past/', 'Ingles', 9, 'Simple Past\r\n'),
(127, 'https://cursoenemgratuito.com.br/modal-verbs/', 'Ingles', 9, 'Modal verbs\r\n'),
(128, 'https://cursoenemgratuito.com.br/present-continuous-ingles-enem/', 'Ingles', 9, 'Present Continuous x Past Continuous x Present Perfect Continuous\r\n'),
(129, 'https://cursoenemgratuito.com.br/be-going-to-x-will-ingles/', 'Ingles', 9, '\"Be going to\" ou \"Will\" – Como expressar ações no futuro em Inglês\r\n'),
(130, 'https://cursoenemgratuito.com.br/classes-de-palavras/', 'Ingles', 9, 'As classes de palavras em inglês e sua importância na interpretação\r\n'),
(131, 'https://cursoenemgratuito.com.br/verbo-to-be/', 'Ingles', 9, 'Verbo To Be\r\n'),
(132, 'https://cursoenemgratuito.com.br/pronomes-relativos-ingles/', 'Ingles', 9, 'Pronomes Relativos do Inglês\r\n'),
(133, 'https://cursoenemgratuito.com.br/imperative/', 'Ingles', 9, 'Imperative – Learn this here!\r\n'),
(142, 'https://cursoenemgratuito.com.br/como-escrever-um-otimo-texto-dissertativo-argumentativo/', 'Redação', 14, 'A estrutura da redação do Enem: como fazer o texto dissertativo-argumentativo'),
(143, 'https://cursoenemgratuito.com.br/como-delimitar-proposta-redacao-enem/', 'Redação', 14, 'Como evitar a fuga do tema da redação do Enem: aprenda a delimitar o assunto, o tema e a proposta\r\n'),
(144, 'https://cursoenemgratuito.com.br/introducao-redacao/', 'Redação', 14, 'Como fazer a introdução da Redação do Enem\r\n'),
(145, 'https://cursoenemgratuito.com.br/desenvolvimento-redacao-enem/', 'Redação', 14, 'Aprenda a escrever os parágrafos de desenvolvimento da redação do Enem\r\n'),
(146, 'https://cursoenemgratuito.com.br/tecnicas-de-argumentacao-e-construcao-redacao-enem/', 'Redação', 14, 'Três técnicas de argumentação para a redação\r\n'),
(147, 'https://cursoenemgratuito.com.br/relacao-de-causa-e-consequencia-redacao-enem/', 'Redação', 14, 'O uso de relações de causa e consequência na redação\r\n'),
(148, 'https://cursoenemgratuito.com.br/conclusao-e-medida-de-intervencao-redacao-enem/', 'Redação', 14, 'Como fazer a proposta de intervenção na conclusão da redação do Enem\r\n'),
(149, 'https://cursoenemgratuito.com.br/leitura-da-coletanea-e-elaboracao-titulo-redacao-enem/', 'Redação', 14, 'Leitura da coletânea e elaboração do título da redação do Enem\r\n'),
(150, 'https://cursoenemgratuito.com.br/coesao-e-coerencia-redacao-enem/', 'Redação', 14, 'Coesão e coerência – Redação Enem\r\n'),
(151, 'https://cursoenemgratuito.com.br/coesao-coerencia-exemplos/', 'Redação', 14, 'Coesão e Coerência na Redação Enem: evite Redundâncias e Repetições\r\n'),
(152, 'https://cursoenemgratuito.com.br/politica-e-cidadania-redacao-enem/', 'Redação', 14, 'Como abordar temas de política e cidadania na redação do Enem\r\n'),
(154, 'https://cursoenemgratuito.com.br/meio-ambiente-na-redacao-enem/', 'Redação', 14, 'Temas de Redação Enem: Meio Ambiente e Impacto Ambiental\r\n'),
(155, 'https://cursoenemgratuito.com.br/10-modelos-de-redacao-enem-nota-1000-aprovados-pelo-mec/', 'Redação', 14, 'Redação Enem Nota 1000: Veja 10 modelos aprovados pelo MEC\r\n'),
(156, 'https://cursoenemgratuito.com.br/temas-de-redacao-enem/', 'Redação', 14, 'Temas de Redação Enem - Veja a lista sugerida\r\n'),
(157, 'https://cursoenemgratuito.com.br/questionamento-redacao-enem/', 'Redação', 14, 'Questionamento: uma boa estratégia argumentativa na Redação Enem\r\n'),
(158, 'https://cursoenemgratuito.com.br/bilateralidade-redacao-enem/', 'Redação', 14, 'Técnica de bilateralidade: uma ótima estratégia argumentativa\r\n'),
(159, 'https://cursoenemgratuito.com.br/tese-por-enumeracao-redacao/', 'Redação', 14, 'Tese por enumeração: técnica argumentativa para facilitar a produção\r\n'),
(160, 'https://cursoenemgratuito.com.br/tese-da-redacao/', 'Redação', 14, 'Tese da redação por ressalva: estratégia para construir um bom texto\r\n'),
(161, 'https://cursoenemgratuito.com.br/analogia-na-redacao/', 'Redação', 14, 'Analogia na redação: uma ótima técnica para estruturar seu texto\r\n'),
(162, 'https://cursoenemgratuito.com.br/tecnica-para-redacao/', 'Redação', 14, 'Técnica para a Redação: Como fazer a Tese e a Introdução por Cronologia\r\n'),
(163, 'https://cursoenemgratuito.com.br/redacao-do-enem-maus-tratos/', 'Redação', 14, 'Tema de Redação do Enem: Maus-tratos contra os animais\r\n'),
(164, 'https://cursoenemgratuito.com.br/dissertacao-e-argumentacao/', 'Redação', 14, 'Dissertação e argumentação: definição e funcionalidade\r\n'),
(165, 'https://cursoenemgratuito.com.br/tese-argumento-e-opiniao/', 'Redação', 14, 'Tese, argumento e opinião\r\n'),
(167, 'https://cursoenemgratuito.com.br/proposta-de-redacao-agricultura-familiar/', 'Redação', 14, 'Proposta de redação para o Enem: a agricultura familiar no Brasil\r\n'),
(169, 'https://cursoenemgratuito.com.br/rascunho-na-redacao-do-enem/', 'Redação', 14, 'Rascunho na redação do Enem: fazer ou não fazer?\r\n'),
(170, 'https://cursoenemgratuito.com.br/impessoalidade-na-redacao/', 'Redação', 14, 'Rascunho na redação do Enem: fazer ou não fazer?\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `COD_DISCIPLINA` int(11) NOT NULL,
  `DESCRICAO_DISCIPLINA` varchar(100) NOT NULL,
  `cod_conhecimento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`COD_DISCIPLINA`, `DESCRICAO_DISCIPLINA`, `cod_conhecimento`) VALUES
(1, 'Biologia', 1),
(2, 'Química', 1),
(3, 'Física', 1),
(4, 'História', 2),
(5, 'Geografia', 2),
(6, 'Filosofia', 2),
(7, 'Sociologia', 2),
(8, 'Português', 3),
(9, 'Literatura', 3),
(10, 'Língua Estrangeira', 3),
(11, 'Artes', 3),
(12, 'Educação Física', 3),
(13, 'Tecnologias da Informação e Comunicação', 3),
(14, 'Matemática', 3),
(15, 'Redação', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `prova`
--

CREATE TABLE `prova` (
  `COD_PROVA` int(11) NOT NULL,
  `ANO_PROVA` int(11) NOT NULL,
  `COR` varchar(20) NOT NULL,
  `QUANTIDADE_QUESTOES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `prova`
--

INSERT INTO `prova` (`COD_PROVA`, `ANO_PROVA`, `COR`, `QUANTIDADE_QUESTOES`) VALUES
(10, 2007, 'AMARELA', 63);

-- --------------------------------------------------------

--
-- Estrutura da tabela `questoes`
--

CREATE TABLE `questoes` (
  `COD_QUESTAO` int(11) NOT NULL,
  `NUM_QUESTAO` int(11) NOT NULL,
  `QUESTAO_DESCRICAO` longtext NOT NULL,
  `IMAGEM` blob,
  `RESPOSTAS` longtext NOT NULL,
  `RESPOSTA_CORRETA` char(1) NOT NULL,
  `RESPOSTA_CORRETA_DESCRICAO` longtext NOT NULL,
  `COD_PROVA` int(11) NOT NULL,
  `COD_ASSUNTO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `questoes`
--

INSERT INTO `questoes` (`COD_QUESTAO`, `NUM_QUESTAO`, `QUESTAO_DESCRICAO`, `IMAGEM`, `RESPOSTAS`, `RESPOSTA_CORRETA`, `RESPOSTA_CORRETA_DESCRICAO`, `COD_PROVA`, `COD_ASSUNTO`) VALUES
(883, 1, 'Ninguém = Ninguém\r\nEngenheiros do Hawai\r\nHá tantos quadros na parede\r\nhá tantas formas de se ver o mesmo quadro\r\nhá tanta gente pelas ruas\r\nhá tantas ruas e nenhuma é igual a outra\r\n(ninguém = ninguém)\r\nme espanta que tanta gente sinta\r\n(se é que sente) a mesma indiferença\r\nhá tantos quadros na parede\r\nhá tantas formas de se ver o mesmo quadro\r\nhá palavras que nunca são ditas\r\nhá muitas vozes repetindo a mesma frase\r\n(ninguém = ninguém)\r\nme espanta que tanta gente minta\r\n(descaradamente) a mesma mentira\r\ntodos iguais, todos iguais\r\nmas uns mais iguais que os outros\r\nUns Iguais Aos Outros\r\nTitãs\r\nOs homens são todos iguais\r\n(...)\r\nBrancos, pretos e orientais\r\nTodos são filhos de Deus\r\n(...)\r\nKaiowas contra xavantes\r\nÁrabes, turcos e iraquianos\r\nSão iguais os seres humanos\r\nSão uns iguais aos outros, são uns iguais aos outros\r\nAmericanos contra latinos\r\nJá nascem mortos os nordestinos\r\nOs retirantes e os jagunços\r\nO sertão é do tamanho do mundo\r\nDessa vida nada se leva\r\nNesse mundo se ajoelha e se reza\r\nNão importa que língua se fala\r\nAquilo que une é o que separa\r\nNão julgue pra não ser julgado\r\n(...)\r\nTanto faz a cor que se herda\r\n(...)\r\nTodos os homens são iguais\r\nSão uns iguais aos outros, são uns iguais aos outros\r\n\r\nA cultura adquire formas diversas através do tempo e do espaço. Essa diversidade se manifesta na originalidade e\r\nna pluralidade de identidades que caracterizam os grupos e as sociedades que compõem a humanidade. Fonte de\r\nintercâmbios, de inovação e de criatividade, a diversidade cultural é, para o gênero humano, tão necessária como a\r\ndiversidade biológica para a natureza. Nesse sentido, constitui o patrimônio comum da humanidade e deve ser reconhecida e\r\nconsolidada em benefício das gerações presentes e futuras.\r\nUNESCO. Declaração Universal sobre a Diversidade Cultural.\r\nTodos reconhecem a riqueza da diversidade no planeta. Mil aromas, cores, sabores, texturas, sons encantam as\r\npessoas\r\nno mundo todo; nem todas, entretanto, conseguem conviver com as diferenças individuais e culturais. Nesse sentido, ser\r\ndiferente já não parece tão encantador. Considerando a figura e os textos acima como motivadores, redija um texto\r\ndissertativo-argumentativo a respeito do seguinte tema.\r\nO desafio de se conviver com a diferença\r\nAo desenvolver o tema proposto, procure utilizar os conhecimentos adquiridos e as reflexões feitas ao longo de sua formação.\r\nSelecione, organize e relacione argumentos, fatos e opiniões para defender seu ponto de vista e suas propostas, sem ferir os\r\ndireitos humanos. Observações: 3⁄4 Seu texto deve ser escrito na modalidade padrão da língua portuguesa. 3⁄4 O texto não deve\r\nser escrito em forma de poema (versos) ou narração. 3⁄4 O texto com até 7 (sete) linhas escritas será considerado texto em\r\nbranco. 3⁄4 O rascunho pode ser feito na última página deste Caderno. 3⁄4 A redação deve ser passada a limpo na folha própria\r\ne escrita a tinta.', NULL, '', '', '', 10, 15),
(884, 2, 'Não só de aspectos físicos se constitui a cultura\r\nde um povo. Há muito mais, contido nas tradições, no\r\nfolclore, nos saberes, nas línguas, nas festas e em\r\ndiversos outros aspectos e manifestações transmitidos oral\r\nou gestualmente, recriados coletivamente e modificados ao\r\nlongo do tempo. A essa porção intangível da herança\r\ncultural dos povos dá-se o nome de patrimônio cultural\r\nimaterial.\r\nInternet: <www.unesco.org.br>.\r\nQual das figuras abaixo retrata patrimônio imaterial da\r\ncultura de um povo', NULL, '(A)Cristo Redentor (B)Pelourinho (C)Bumba-meu-boi (D)Cataratas do Iguaçu (E)Esfinge de Gizé', 'C', '', 10, 11),
(885, 3, 'Sobre a exposição de Anita Malfatti, em 1917, que muito\r\ninfluenciaria a Semana de Arte Moderna, Monteiro Lobato\r\nescreveu, em artigo intitulado Paranóia ou Mistificação:\r\nHá duas espécies de artistas. Uma\r\ncomposta dos que vêem as coisas e em\r\nconseqüência fazem arte pura, guardados os\r\neternos ritmos da vida, e adotados, para a\r\nconcretização das emoções estéticas, os\r\nprocessos clássicos dos grandes mestres. (...) A\r\noutra espécie é formada dos que vêem\r\nanormalmente a natureza e a interpretam à luz das\r\nteorias efêmeras, sob a sugestão estrábica das\r\nescolas rebeldes, surgidas cá e lá como furúnculos\r\n\r\nda cultura excessiva. (...). Estas considerações são\r\nprovocadas pela exposição da sra. Malfatti, onde\r\nse notam acentuadíssimas tendências para uma\r\natitude estética forçada no sentido das\r\nextravagâncias de Picasso & cia.\r\nO Diário de São Paulo, dez./1917.\r\nEm qual das obras abaixo identifica-se o estilo de Anita\r\nMalfatti criticado por Monteiro Lobato no artigo', NULL, '(A) Acesso a Monte Serrat – Santos\r\n(B) Vaso de Flores\r\n(C) A Santa Ceia\r\n(D) Nossa Senhora Auxiliadora e\r\nDom Bosco\r\n(E) A Boba', 'E', '', 10, 11),
(886, 4, 'Texto I\r\nAgora Fabiano conseguia arranjar as idéias. O que\r\no segurava era a família. Vivia preso como um novilho\r\namarrado ao mourão, suportando ferro quente. Se não\r\nfosse isso, um soldado amarelo não lhe pisava o pé não.\r\n(...) Tinha aqueles cambões pendurados ao pescoço.\r\nDeveria continuar a arrastá-los? Sinha Vitória dormia mal\r\nna cama de varas. Os meninos eram uns brutos, como o\r\npai. Quando crescessem, guardariam as reses de um\r\npatrão invisível, seriam pisados, maltratados, machucados\r\npor um soldado amarelo.\r\nGraciliano Ramos. Vidas Secas. São Paulo: Martins, 23.a ed., 1969, p. 75.\r\nTexto II\r\nPara Graciliano, o roceiro pobre é um outro,\r\nenigmático, impermeável. Não há solução fácil para uma\r\ntentativa de incorporação dessa figura no campo da ficção.\r\nÉ lidando com o impasse, ao invés de fáceis soluções, que\r\nGraciliano vai criar Vidas Secas, elaborando uma\r\nlinguagem, uma estrutura romanesca, uma constituição de\r\nnarrador em que narrador e criaturas se tocam, mas não\r\nse identificam. Em grande medida, o debate acontece\r\nporque, para a intelectualidade brasileira naquele\r\nmomento, o pobre, a despeito de aparecer idealizado em\r\ncertos aspectos, ainda é visto como um ser humano de\r\nsegunda categoria, simples demais, incapaz de ter\r\npensamentos demasiadamente complexos. O que Vidas\r\nSecas faz é, com pretenso não envolvimento da voz que\r\ncontrola a narrativa, dar conta de uma riqueza humana de\r\nque essas pessoas seriam plenamente capazes.\r\nLuís Bueno. Guimarães, Clarice e antes. In:\r\nTeresa. São Paulo: USP, n.° 2, 2001, p. 254.\r\nA partir do trecho de Vidas Secas (texto I) e das\r\ninformações do texto II, relativas às concepções artísticas\r\ndo romance social de 1930, avalie as seguintes\r\nafirmativas.\r\nI O pobre, antes tratado de forma exótica e folclórica pelo\r\nregionalismo pitoresco, transforma-se em protagonista\r\n\r\nprivilegiado do romance social de 30.\r\nII A incorporação do pobre e de outros marginalizados\r\nindica a tendência da ficção brasileira da década de 30\r\nde tentar superar a grande distância entre o intelectual e\r\nas camadas populares.\r\nIII Graciliano Ramos e os demais autores da década de 30\r\nconseguiram, com suas obras, modificar a posição\r\nsocial do sertanejo na realidade nacional.\r\nÉ correto apenas o que se afirma em', NULL, '(A)I (B)II (C)III (D)I e II (E)II e III', 'D', '', 10, 9),
(887, 5, 'Texto I\r\nAgora Fabiano conseguia arranjar as idéias. O que\r\no segurava era a família. Vivia preso como um novilho\r\namarrado ao mourão, suportando ferro quente. Se não\r\nfosse isso, um soldado amarelo não lhe pisava o pé não.\r\n(...) Tinha aqueles cambões pendurados ao pescoço.\r\nDeveria continuar a arrastá-los? Sinha Vitória dormia mal\r\nna cama de varas. Os meninos eram uns brutos, como o\r\npai. Quando crescessem, guardariam as reses de um\r\npatrão invisível, seriam pisados, maltratados, machucados\r\npor um soldado amarelo.\r\nGraciliano Ramos. Vidas Secas. São Paulo: Martins, 23.a ed., 1969, p. 75.\r\nTexto II\r\nPara Graciliano, o roceiro pobre é um outro,\r\nenigmático, impermeável. Não há solução fácil para uma\r\ntentativa de incorporação dessa figura no campo da ficção.\r\nÉ lidando com o impasse, ao invés de fáceis soluções, que\r\nGraciliano vai criar Vidas Secas, elaborando uma\r\nlinguagem, uma estrutura romanesca, uma constituição de\r\nnarrador em que narrador e criaturas se tocam, mas não\r\nse identificam. Em grande medida, o debate acontece\r\nporque, para a intelectualidade brasileira naquele\r\nmomento, o pobre, a despeito de aparecer idealizado em\r\ncertos aspectos, ainda é visto como um ser humano de\r\nsegunda categoria, simples demais, incapaz de ter\r\npensamentos demasiadamente complexos. O que Vidas\r\nSecas faz é, com pretenso não envolvimento da voz que\r\ncontrola a narrativa, dar conta de uma riqueza humana de\r\nque essas pessoas seriam plenamente capazes.\r\nNo texto II, verifica-se que o autor utiliza', NULL, '(A) linguagem predominantemente formal, para\r\nproblematizar, na composição de Vidas Secas, a\r\nrelação entre o escritor e o personagem popular.\r\n(B) linguagem inovadora, visto que, sem abandonar a\r\nlinguagem formal, dirige-se diretamente ao leitor.\r\n(C) linguagem coloquial, para narrar coerentemente uma\r\nhistória que apresenta o roceiro pobre de forma\r\npitoresca.\r\n(D) linguagem formal com recursos retóricos próprios do\r\ntexto literário em prosa, para analisar determinado\r\nmomento da literatura brasileira.\r\n(E) linguagem regionalista, para transmitir informações\r\nsobre literatura, valendo-se de coloquialismo, para\r\n\r\nfacilitar o entendimento do texto.', 'A', '', 10, 8),
(888, 6, 'Representar objetos\r\ntridimensionais em uma folha\r\nde papel nem sempre é tarefa\r\nfácil. O artista holandês\r\nEscher (1898-1972) explorou\r\nessa dificuldade criando várias\r\nfiguras planas impossíveis de\r\nserem construídas como\r\nobjetos tridimensionais, a\r\nexemplo da litografia\r\nBelvedere, reproduzida ao\r\nlado.\r\nConsidere que um marceneiro tenha encontrado algumas\r\nfiguras supostamente desenhadas por Escher e deseje\r\nconstruir uma delas com ripas rígidas de madeira que\r\ntenham o mesmo tamanho. Qual dos desenhos a seguir\r\nele poderia reproduzir em um modelo tridimensional real?', NULL, '(A) (B) (C) (D) (E)', 'E', '', 10, 11),
(889, 7, 'A figura abaixo é parte de uma campanha publicitária.\r\nEssa campanha publicitária relaciona-se diretamente com a seguinte afirmativa:', NULL, '(A)O comércio ilícito da fauna silvestre, atividade de grande impacto, é uma ameaça para a biodiversidade nacional.\r\n(B)A manutenção do mico-leão-dourado em jaula é a medida que garante a preservação dessa espécie animal.\r\n(C)A manutenção do mico-leão-dourado em jaula é a medida que garante a preservação dessa espécie animal.\r\n(D)O aumento da biodiversidade em outros países depende do comércio ilegal da fauna silvestre brasileira.\r\n(E)O tráfico de animais silvestres é benéfico para a preservação das espécies, pois garante-lhes a sobrevivência. ', 'A', '', 10, 1),
(890, 8, 'O gráfico abaixo, obtido a partir de dados do Ministério do\r\nMeio Ambiente, mostra o crescimento do número de\r\nespécies da fauna brasileira ameaçadas de extinção.', NULL, '(A) 465\r\n(B) 493\r\n(C) 498\r\n(D) 538\r\n(E) 699', 'C', '', 10, 14),
(891, 9, 'Estima-se que haja, no Acre, 209 espécies de mamíferos, distribuídas conforme a tabela abaixo.\r\nDeseja-se realizar um estudo comparativo entre três dessas espécies de mamíferos — uma do grupo Cetáceos, outra do\r\ngrupo Primatas e a terceira do grupo Roedores. O número de conjuntos distintos que podem ser formados com essas espécies\r\npara esse estudo é igual a:', NULL, '(A)1.320.\r\n(B)2.090.\r\n(C)5.845.\r\n(D)6.600.\r\n(E)7.245.', 'A', '', 10, 14),
(892, 10, 'Se a exploração descontrolada e predatória\r\nverificada atualmente continuar por mais alguns anos,\r\npode-se antecipar a extinção do mogno. Essa madeira já\r\ndesapareceu de extensas áreas do Pará, de Mato Grosso,\r\nde Rondônia, e há indícios de que a diversidade e o\r\nnúmero de indivíduos existentes podem não ser suficientes\r\npara garantir a sobrevivência da espécie a longo prazo.\r\nA diversidade é um elemento fundamental na\r\nsobrevivência de qualquer ser vivo. Sem ela, perde-se a\r\ncapacidade de adaptação ao ambiente, que muda tanto\r\npor interferência humana como por causas naturais.\r\nCom relação ao problema descrito no texto, é correto\r\nafirmar que', NULL, '(A) a baixa adaptação do mogno ao ambiente amazônico\r\né causa da extinção dessa madeira\r\n(B) a extração predatória do mogno pode reduzir o\r\nnúmero de indivíduos dessa espécie e prejudicar sua\r\ndiversidade genética\r\n(C) as causas naturais decorrentes das mudanças\r\nclimáticas globais contribuem mais para a extinção do\r\nmogno que a interferência humana.\r\n(D) a redução do número de árvores de mogno ocorre na\r\nmesma medida em que aumenta a diversidade\r\nbiológica dessa madeira na região amazônica.\r\n(E) o desinteresse do mercado madeireiro internacional\r\npelo mogno contribuiu para a redução da exploração\r\npredatória dessa espécie.', 'B', '', 10, 8),
(893, 11, 'Álcool, crescimento e pobreza O lavrador de Ribeirão Preto recebe em média R$ 2,50 por tonelada de cana cortada. Nos\r\nanos 80, esse trabalhador cortava cinco toneladas de cana por dia. A mecanização da colheita o obrigou a ser mais produtivo.\r\nO corta-cana derruba agora oito toneladas por dia. O trabalhador deve cortar a cana rente ao chão, encurvado. Usa roupas\r\nmal-ajambradas, quentes, que lhe cobrem o corpo, para que não seja lanhado pelas folhas da planta. O excesso de trabalho\r\ncausa a birola: tontura, desmaio, cãibra, convulsão. A fim de agüentar dores e cansaço, esse trabalhador toma drogas e\r\nsoluções de glicose, quando não farinha mesmo. Tem aumentado o número de mortes por exaustão nos canaviais. O setor da\r\ncana produz hoje uns 3,5% do PIB. Exporta US$ 8 bilhões. Gera toda a energia elétrica que consome e ainda vende\r\nexcedentes. A indústria de São Paulo contrata cientistas e engenheiros para desenvolver máquinas e equipamentos mais\r\neficientes para as usinas de álcool. As pesquisas, privada e pública, na área agrícola (cana, laranja, eucalipto etc.)\r\ndesenvolvem a bioquímica e a genética no país.\r\nConfrontando-se as informações do texto com as da charge acima, conclui-se que: Folha de S. Paulo, 11/3/2007 (com\r\nadaptações).', NULL, '(A) A charge contradiz o texto ao mostrar que o Brasil possui tecnologia avançada no setor agrícola.\r\n(B) A charge e o texto abordam, a respeito da cana-deaçúcar brasileira, duas realidades distintas e sem relação entre si.\r\n(C) O texto e a charge consideram a agricultura brasileira avançada, do ponto de vista tecnológico.\r\n(D) A charge mostra o cotidiano do trabalhador, e o texto defende o fim da mecanização da produção da cana de-açúcar no\r\nsetor sucroalcooleiro.\r\n(E) O texto mostra disparidades na agricultura brasileira, na qual convivem alta tecnologia e condições precárias de trabalho,\r\nque a charge ironiza.', 'E', '', 10, 8),
(894, 12, 'O lavrador de Ribeirão Preto recebe em média\r\nR$ 2,50 por tonelada de cana cortada. Nos anos 80, esse\r\ntrabalhador cortava cinco toneladas de cana por dia.\r\nA mecanização da colheita o obrigou a ser mais produtivo.\r\nO corta-cana derruba agora oito toneladas por dia.\r\nO trabalhador deve cortar a cana rente ao chão,\r\nencurvado. Usa roupas mal-ajambradas, quentes, que lhe\r\ncobrem o corpo, para que não seja lanhado pelas folhas da\r\nplanta. O excesso de trabalho causa a\r\nbirola : tontura, desmaio, cãibra, convulsão. A fim de agüentar dores e\r\ncansaço, esse trabalhador toma drogas e soluções de\r\nglicose, quando não farinha mesmo. Tem aumentado o\r\nnúmero de mortes por exaustão nos canaviais.\r\nO setor da cana produz hoje uns 3,5% do PIB.\r\nExporta US$ 8 bilhões. Gera toda a energia elétrica que\r\nconsome e ainda vende excedentes. A indústria de São\r\nPaulo contrata cientistas e engenheiros para desenvolver\r\nmáquinas e equipamentos mais eficientes para as usinas\r\nde álcool. As pesquisas, privada e pública, na área agrícola\r\n(cana, laranja, eucalipto etc.) desenvolvem a bioquímica e\r\na genética no país.\r\nConsidere-se que cada tonelada de cana-de-açúcar\r\npermita a produção de 100 litros de álcool combustível,\r\nvendido nos postos de abastecimento a R$ 1,20 o litro.\r\nPara que um corta-cana pudesse, com o que ganha nessa\r\natividade, comprar o álcool produzido a partir das oito\r\ntoneladas de cana resultantes de um dia de trabalho, ele\r\nteria de trabalhar durante', NULL, '(A)\r\n3 dias\r\n(B)\r\n18 dias.\r\n\r\n(C)\r\n30 dias.\r\n(D)\r\n48 dias.\r\n(E)\r\n60 dias.', 'D', '', 10, 14),
(895, 13, 'A queima de cana aumenta a concentração de dióxido de carbono e de material particulado na atmosfera, causa alteração do\r\nclima e contribui para o aumento de doenças respiratórias. A tabela abaixo apresenta números relativos a pacientes internados\r\nem um hospital no período da queima da cana.\r\nEscolhendo-se aleatoriamente um paciente internado nesse hospital por problemas respiratórios causados pelas queimadas, a\r\nprobabilidade de que ele seja uma criança é igual a ', NULL, '(A) 0,26, o que sugere a necessidade de implementação de medidas que reforcem a atenção ao idoso internado com\r\nproblemas respiratórios.\r\n(B) 0,50, o que comprova ser de grau médio a gravidade dos problemas respiratórios que atingem a população nas regiões\r\ndas queimadas.\r\n(C) C 0,63, o que mostra que nenhum aspecto relativo à saúde infantil pode ser negligenciado.\r\n(D) 0,67, o que indica a necessidade de campanhas de conscientização que objetivem a eliminação das queimadas.\r\n(E) 0,75, o que sugere a necessidade de que, em áreas atingidas pelos efeitos das queimadas, o atendimento hospitalar no\r\nsetor de pediatria seja reforçado.', 'E', '', 10, 14),
(896, 14, ' Ao beber uma solução de glicose (C\r\n6\r\nH\r\n12\r\nO\r\n6\r\n), um corta-cana\r\ningere uma substância', NULL, '(A) que, ao ser degradada pelo organismo, produz energia\r\nque pode ser usada para movimentar o corpo\r\n(B) inflamável que, queimada pelo organismo, produz\r\nágua para manter a hidratação das células\r\n(C) que eleva a taxa de açúcar no sangue e é armazenada\r\nna célula, o que restabelece o teor de oxigênio no\r\norganismo\r\n(D) insolúvel em água, o que aumenta a retenção de\r\nlíquidos pelo organismo\r\n(E) de sabor adocicado que, utilizada na respiração\r\ncelular, fornece CO2\r\npara manter estável a taxa de\r\ncarbono na atmosfera', 'A', '', 10, 2),
(897, 15, 'O açúcar\r\nO branco açúcar que adoçará meu café nesta manhã de Ipanema não foi produzido por mim nem surgiu dentro do açucareiro\r\npor milagre. Vejo-o puro e afável ao paladar como beijo de moça, água na pele, flor que se dissolve na boca. Mas este açúcar\r\nnão foi feito por mim. Este açúcar veio da mercearia da esquina e tampouco o fez o Oliveira, [dono da mercearia. Este açúcar\r\nveio de uma usina de açúcar em Pernambuco ou no Estado do Rio e tampouco o fez o dono da usina. Este açúcar era cana e\r\nveio dos canaviais extensos que não nascem por acaso no regaço do vale. (...) Em usinas escuras, homens de vida amarga e\r\ndura produziram este açúcar branco e puro com que adoço meu café esta manhã em Ipanema. Ferreira Gullar. Toda Poesia.\r\nRio de Janeiro: Civilização Brasileira, 1980, p. 227-8.', NULL, '(A) 0,26, o que sugere a necessidade de implementação de medidas que reforcem a atenção ao idoso internado com\r\nproblemas respiratórios.\r\n(B) 0,50, o que comprova ser de grau médio a gravidade dos problemas respiratórios que atingem a população nas regiões\r\ndas queimadas.\r\n(C) C 0,63, o que mostra que nenhum aspecto relativo à saúde infantil pode ser negligenciado.\r\n(D) 0,67, o que indica a necessidade de campanhas de conscientização que objetivem a eliminação das queimadas.\r\n(E) 0,75, o que sugere a necessidade de que, em áreas atingidas pelos efeitos das queimadas, o atendimento hospitalar no\r\nsetor de pediatria seja reforçado.', 'E', '', 10, 8),
(898, 16, 'Há diversas maneiras de o ser humano obter energia para\r\nseu próprio metabolismo utilizando energia armazenada na\r\ncana-de-açúcar. O esquema abaixo apresenta quatro\r\nalternativas dessa utilização.\r\n1\r\n2\r\n3\r\n4\r\n4\r\n4\r\nrapadura\r\ncaldo-de-cana\r\nA partir dessas informações, conclui-se que', NULL, '(A) a alternativa 1 é a que envolve maior diversidade de\r\natividades econômicas\r\n(B) a alternativa 2 é a que provoca maior emissão de gás\r\ncarbônico para a atmosfera\r\n(C) as alternativas 3 e 4 são as que requerem menor\r\nconhecimento tecnológico\r\n(D) todas as alternativas requerem trabalho humano para\r\na obtenção de energia\r\n(E) todas as alternativas ilustram o consumo direto, pelo\r\nser humano, da energia armazenada na cana', 'D', '', 10, 1),
(899, 17, 'A identidade negra não surge da tomada de consciência de uma diferença de pigmentação ou de uma diferença biológica\r\nentre populações negras e brancas e(ou) negras e amarelas. Ela resulta de um longo processo histórico que começa com o\r\ndescobrimento, no século XV, do continente africano e de seus habitantes pelos navegadores portugueses, descobrimento\r\nesse que abriu o caminho às relações mercantilistas com a África, ao tráfico negreiro, à escravidão e, enfim, à colonização do\r\ncontinente africano e de seus povos. K. Munanga. Algumas considerações sobre a diversidade e a identidade negra no Brasil.\r\nIn: Diversidade na educação: reflexões e experiências. Brasília: SEMTEC/MEC, 2003, p. 37.\r\nCom relação ao assunto tratado no texto acima, é correto afirmar que', NULL, '(A) a colonização da África pelos europeus foi simultânea ao descobrimento desse continente.\r\n(B) a existência de lucrativo comércio na África levou os portugueses a desenvolverem esse continente.\r\n(C) o surgimento do tráfico negreiro foi posterior ao início da escravidão no Brasil.\r\n(D) a exploração da África decorreu do movimento de expansão européia do início da Idade Moderna.\r\n(E) a colonização da África antecedeu as relações comerciais entre esse continente e a Europa.', 'D', '', 10, 8),
(900, 18, 'Após a Independência, integramo-nos como\r\nexportadores de produtos primários à divisão internacional do\r\ntrabalho, estruturada ao redor da Grã-Bretanha. O Brasil\r\nespecializou-se na produção, com braço escravo importado da\r\nÁfrica, de plantas tropicais para a Europa e a América do Norte.\r\nIsso atrasou o desenvolvimento de nossa economia por pelo\r\nmenos uns oitenta anos. Éramos um país essencialmente\r\nagrícola e tecnicamente atrasado por depender de produtores\r\ncativos. Não se poderia confiar a trabalhadores forçados outros\r\ninstrumentos de produção que os mais toscos e baratos.\r\nO atraso econômico forçou o Brasil a se voltar para\r\nfora. Era do exterior que vinham os bens de consumo que\r\nfundamentavam um padrão de vida “civilizado”, marca que\r\ndistinguia as classes cultas e “naturalmente” dominantes do\r\npovaréu primitivo e miserável. (...) E de fora vinham\r\ntambém os\r\n\r\ncapitais que permitiam iniciar a construção de uma infra-\r\nestrutura de serviços urbanos, de energia, transportes e\r\n\r\ncomunicações.\r\nLevando-se em consideração as afirmações acima, relativas à\r\nestrutura econômica do Brasil por ocasião da independência\r\npolítica (1822), é correto afirmar que o país', NULL, '(A) se industrializou rapidamente devido ao desenvolvimento\r\nalcançado no período colonial\r\n(B) extinguiu a produção colonial baseada na escravidão e\r\nfundamentou a produção no trabalho livre\r\n(C) se tornou dependente da economia européia por realizar\r\ntardiamente sua industrialização em relação a outros\r\npaíses\r\n(D) se tornou dependente do capital estrangeiro, que foi\r\n\r\nintroduzido no país sem trazer ganhos para a infra-\r\nestrutura de serviços urbanos\r\n\r\n(E) teve sua industrialização estimulada pela Grã-Bretanha,\r\nque investiu capitais em vários setores produtivos', 'C', '', 10, 4),
(901, 19, 'Considerando a linha do tempo acima e o processo de abolição da escravatura no Brasil, assinale a opção correta.', NULL, '(A) O processo abolicionista foi rápido porque recebeu a adesão de todas as correntes políticas do país.\r\n(B) O primeiro passo para a abolição da escravatura foi a proibição do uso dos serviços das crianças nascidas em cativeiro.\r\n(C) Antes que a compra de escravos no exterior fosse proibida, decidiu-se pela libertação dos cativos mais velhos.\r\n(D) Assinada pela princesa Isabel, a Lei Áurea concluiu o processo abolicionista, tornando ilegal a escravidão no Brasil.\r\n(E) Ao abolir o tráfico negreiro, a Lei Eusébio de Queirós bloqueou a formulação de novas leis antiescravidão no Brasil.', 'D', '', 10, 4),
(902, 20, 'Um dia, os imigrantes aglomerados na amurada da proa chegavam à fedentina quente de um porto, num silêncio de mato e\r\nde febre amarela. Santos. — É aqui! Buenos Aires é aqui! — Tinham trocado o rótulo das bagagens, desciam em fila. Faziam\r\nsuas necessidades nos trens dos animais onde iam. Jogavam-nos num pavilhão comum em São Paulo. — Buenos Aires é\r\naqui! — Amontoados com trouxas, sanfonas e baús, num carro de bois, que pretos guiavam através do mato por estradas\r\nesburacadas, chegavam uma tarde nas senzalas donde acabava de sair o braço escravo. Formavam militarmente nas\r\nmadrugadas do terreiro homens e mulheres, ante feitores de espingarda ao ombro. Oswald de Andrade. Marco Zero II – Chão.\r\nRio de Janeiro: Globo, 1991. Levando-se em consideração o texto de Oswald de Andrade e a pintura de Antonio Rocco\r\nreproduzida acima, relativos à imigração européia para o Brasil, é correto afirmar que', NULL, '(A) a visão da imigração presente na pintura é trágica e, no texto, otimista.\r\n(B) a pintura confirma a visão do texto quanto à imigração de argentinos para o Brasil.\r\n(C) os dois autores retratam dificuldades dos imigrantes na chegada ao Brasil.\r\n(D) Antonio Rocco retrata de forma otimista a imigração, destacando o pioneirismo do imigrante.\r\n(E) Oswald de Andrade mostra que a condição de vida do imigrante era melhor que a dos ex escravos.', 'C', '', 10, 4),
(903, 21, 'São Paulo, 18 de agosto de 1929.\r\nCarlos [Drummond de Andrade],\r\nAchei graça e gozei com o seu entusiasmo pela candidatura Getúlio Vargas – João Pessoa. É. Mas veja como estamos...\r\ntrocados. Esse entusiasmo devia ser meu e sou eu que conservo o ceticismo que deveria ser de você. (...). Eu... eu contemplo\r\nnuma torcida apenas simpática a candidatura Getúlio Vargas, que antes desejara tanto. Mas pra mim, presentemente, essa\r\ncandidatura (única aceitável, está claro) fica manchada por essas pazes fragílimas de governistas mineiros, gaúchos,\r\nparaibanos (...), com democráticos paulistas (que pararam de atacar o Bernardes) e oposicionistas cariocas e gaúchos. Tudo\r\nisso não me entristece. Continuo reconhecendo a existência de males necessários, porém me afasta do meu país e da\r\ncandidatura Getúlio Vargas. Repito: única aceitável. Mário [de Andrade] Renato Lemos. Bem traçadas linhas: a história do\r\nBrasil em cartas pessoais.\r\nRio de Janeiro: Bom Texto, 2004, p. 305. Acerca da crise política ocorrida em fins da Primeira República, a carta do paulista\r\nMário de Andrade ao mineiro Carlos Drummond de Andrade revela', NULL, '(A) a simpatia de Drummond pela candidatura Vargas e o desencanto de Mário de Andrade com as composições políticas\r\nsustentadas por Vargas.\r\n(B) a veneração de Drummond e Mário de Andrade ao gaúcho Getúlio Vargas, que se aliou à oligarquia cafeeira de São Paulo.\r\n(C) a concordância entre Mário de Andrade e Drummond quanto ao caráter inovador de Vargas, que fez uma ampla aliança\r\npara derrotar a oligarquia mineira.\r\n(D) a discordância entre Mário de Andrade e Drummond sobre a importância da aliança entre Vargas e o paulista Júlio Prestes\r\nnas eleições presidenciais.\r\n(E) o otimismo de Mário de Andrade em relação a Getúlio Vargas, que se recusara a fazer alianças políticas para vencer as\r\neleições.', 'A', '', 10, 8),
(904, 22, 'Em 4 de julho de 1776, as treze colônias que vieram inicialmente a constituir os Estados Unidos da América (EUA)\r\ndeclaravam sua independência e justificavam a ruptura do Pacto Colonial. Em palavras profundamente subversivas para a\r\népoca, afirmavam a igualdade dos homens e apregoavam como seus direitos inalienáveis: o direito à vida, à liberdade e à\r\nbusca da felicidade. Afirmavam que o poder dos governantes, aos quais cabia a defesa daqueles direitos, derivava dos\r\ngovernados. Esses conceitos revolucionários que ecoavam o Iluminismo foram retomados com maior vigor e amplitude treze\r\nanos mais tarde, em 1789, na França. Emília Viotti da Costa. Apresentação da coleção. In: Wladimir Pomar. Revolução\r\nChinesa. São Paulo: UNESP, 2003 (com adaptações). Considerando o texto acima, acerca da independência dos EUA e da\r\nRevolução Francesa, assinale a opção correta.', NULL, '(A) A independência dos EUA e a Revolução Francesa integravam o mesmo contexto histórico, mas se baseavam em\r\nprincípios e ideais opostos.\r\n( B) O processo revolucionário francês identificou-se com o movimento de independência norte-americana no apoio ao\r\nabsolutismo esclarecido.\r\n( C) Tanto nos EUA quanto na França, as teses iluministas sustentavam a luta pelo reconhecimento dos direitos considerados\r\nessenciais à dignidade humana.\r\n(D) Por ter sido pioneira, a Revolução Francesa exerceu forte influência no desencadeamento da independência\r\nnorteamericana.\r\n( E) Ao romper o Pacto Colonial, a Revolução Francesa abriu o caminho para as independências das colônias ibéricas\r\nsituadas na América.', 'C', '', 10, 4),
(905, 23, ' um plano de partilha da Palestina que previa a criação de dois Estados: um judeu e outro palestino. A recusa árabe em\r\naceitar a decisão conduziu ao primeiro conflito entre Israel e países árabes. A segunda guerra (Suez, 1956) decorreu da\r\ndecisão egípcia de nacionalizar o canal, ato que atingia interesses anglofranceses e israelenses. Vitorioso, Israel passou a\r\ncontrolar a Península do Sinai. O terceiro conflito árabe-israelense (1967) ficou conhecido como Guerra dos Seis Dias, tal a\r\nrapidez da vitória de Israel. Em 6 de outubro de 1973, quando os judeus comemoravam o Yom Kippur (Dia do Perdão), forças\r\negípcias e sírias atacaram de surpresa Israel, que revidou de forma arrasadora. A intervenção americano-soviética impôs o\r\ncessar-fogo, concluído em 22 de outubro. A partir do texto acima, assinale a opção correta.', NULL, '(A) primeira guerra árabe-israelense foi determinada pela ação bélica de tradicionais potências européias no Oriente Médio.\r\n(B) Na segunda metade dos anos 1960, quando explodiu a terceira guerra árabe-israelense, Israel obteve rápida vitória.\r\n(C) A guerra do Yom Kippur ocorreu no momento em que, a partir de decisão da ONU, foi oficialmente instalado o Estado de\r\nIsrael.\r\n(D) A ação dos governos de Washington e de Moscou foi decisiva para o cessar-fogo que pôs fim ao primeiro conflito\r\nárabeisraelense.\r\n(E) Apesar das sucessivas vitórias militares, Israel mantém suas dimensões territoriais tal como estabelecido pela resolução de\r\n1947 aprovada pela ONU.', 'B', '', 10, 8),
(906, 24, 'O Aedes aegypti é vetor transmissor da dengue. Uma pesquisa feita em São Luís – MA, de 2000 a 2002, mapeou os tipos\r\nde reservatório onde esse mosquito era encontrado. A tabela abaixo mostra parte dos dados coletados nessa pesquisa.\r\n\r\nDe acordo com essa pesquisa, o alvo inicial para a redução mais rápida dos focos do mosquito vetor da dengue nesse\r\nmunicípio deveria ser constituído por ', NULL, '(A) pneus e caixas d’água.\r\n(B) tambores, tanques e depósitos de barro.\r\n(C) vasos de plantas, poços e cisternas.\r\n(D) materiais de construção e peças de carro. E garrafas, latas e plásticos.', 'B', '', 10, 1),
(907, 25, 'O Aedes aegypti é vetor transmissor da dengue. Uma pesquisa feita em São Luís – MA, de 2000 a 2002, mapeou os tipos de\r\nreservatório onde esse mosquito era encontrado. A tabela abaixo mostra parte dos dados coletados nessa pesquisa.\r\nSe mantido o percentual de redução da população total de A. aegypti observada de 2001 para 2002, teria sido encontrado, em\r\n2003, um número total de mosquitos', NULL, '(A) menor que 5.000.\r\n(B) maior que 5.000 e menor que 10.000.\r\n(C) maior que 10.000 e menor que 15.000.\r\n(D) maior que 15.000 e menor que 20.000.\r\n(E) maior que 20.000', 'E', '', 10, 14),
(908, 26, 'A duração do efeito\r\nde alguns fármacos está\r\nrelacionada à sua meiavida, tempo necessário para\r\nque a quantidade original do\r\nfármaco no organismo se\r\nreduza à metade. A cada\r\nintervalo de tempo\r\ncorrespondente a uma meiavida, a quantidade de\r\nfármaco existente no\r\norganismo no final do\r\nintervalo é igual a 50% da\r\nquantidade no início desse\r\nintervalo.\r\nO gráfico acima representa, de forma genérica, o\r\nque acontece com a quantidade de fármaco no organismo\r\nhumano ao longo do tempo.\r\nF. D. Fuchs e Cher l. Wannma. Farmacologia Clínica.\r\nRio de Janeiro: Guanabara Koogan,1992, p. 40\r\nA meia-vida do antibiótico amoxicilina é de 1 hora. Assim, se uma dose desse antibiótico for injetada às 12 h em um paciente,\r\no percentual dessa dose que restará em seu organismo às 13 h 30 min será aproximadamente de', NULL, '(A) 10%.\r\n(B) 15%.\r\n(C) 25%.\r\n(D) 35%.\r\n(E) 50%.', 'D', '', 10, 14),
(909, 27, 'Antigamente\r\nAcontecia o indivíduo apanhar constipação; ficando perrengue, mandava o próprio chamar o doutor e, depois, ir à botica para\r\naviar a receita, de cápsulas ou pílulas fedorentas. Doença nefasta era a phtísica, feia era o gálico. Antigamente, os sobrados\r\ntinham assombrações, os meninos, lombrigas (...)\r\nCarlos Drummond de Andrade. Poesia completa e prosa. Rio de Janeiro: Companhia José Aguilar, p. 1.184.\r\nO texto acima está escrito em linguagem de uma época passada. Observe uma outra versão, em linguagem atual.\r\nAntigamente\r\nAcontecia o indivíduo apanhar um resfriado; ficando mal, mandava o próprio chamar o doutor e, depois, ir à farmácia para\r\naviar a receita, de cápsulas ou pílulas fedorentas. Doença nefasta era a tuberculose, feia era a sífilis. Antigamente, os\r\nsobrados tinham assombrações, os meninos, vermes (...)\r\nComparando-se esses dois textos, verifica-se que, na segunda versão, houve mudanças relativas a', NULL, '(A) vocabulário.\r\n(B) construções sintáticas.\r\n(C) pontuação.\r\n(D) fonética.\r\n(E) regência verbal.', 'A', '', 10, 8),
(910, 28, 'O canto do guerreiro\r\nAqui na floresta\r\nDos ventos batida,\r\nFaçanhas de bravos\r\nNão geram escravos,\r\nQue estimem a vida\r\nSem guerra e lidar.\r\n— Ouvi-me, Guerreiros,\r\n— Ouvi meu cantar.\r\nValente na guerra,\r\nQuem há, como eu sou?\r\nQuem vibra o tacape Com mais valentia?\r\nQuem golpes daria Fatais, como eu dou?\r\n— Guerreiros, ouvi-me;\r\n— Quem há, como eu sou?\r\nGonçalves Dias.\r\nMacunaíma (Epílogo)\r\nAcabou-se a história e morreu a vitória.\r\nNão havia mais ninguém lá. Dera\r\ntangolomângolo na tribo Tapanhumas e\r\nos filhos dela se acabaram de um em um.\r\nNão havia mais ninguém lá.\r\nAqueles lugares, aqueles campos,\r\nfuros puxadouros arrastadouros meios-barrancos,\r\naqueles matos misteriosos,\r\ntudo era solidão do deserto...\r\n\r\nUm silêncio imenso dormia à beira do rio Uraricoera.\r\nNenhum conhecido sobre a terra\r\nnão sabia nem falar da tribo nem contar aqueles casos tão pançudos.\r\nQuem podia saber do Herói?', NULL, '(A) ambos têm como tema a figura do indígena brasileiro apresentada de forma realista e heróica, como símbolo máximo do\r\nnacionalismo romântico.\r\n(B) a abordagem da temática adotada no texto escrito em versos é discriminatória em relação aos povos indígenas do Brasil.\r\n(C) as perguntas “— Quem há, como eu sou?” (1.o texto) e “Quem podia saber do Herói?” (2.o texto) expressam diferentes\r\nvisões da realidade indígena brasileira.\r\n(D) o texto romântico, assim como o modernista, aborda o extermínio dos povos indígenas como resultado do processo de\r\ncolonização no Brasil.\r\n(E) os versos em primeira pessoa revelam que os indígenas podiam expressar-se poeticamente, mas foram silenciados pela\r\ncolonização, como demonstra a presença do narrador, no segundo texto.', 'C', '', 10, 8),
(911, 29, 'O canto do guerreiro\r\nAqui na floresta\r\nDos ventos batida,\r\nFaçanhas de bravos\r\nNão geram escravos,\r\nQue estimem a vida\r\nSem guerra e lidar.\r\n— Ouvi-me, Guerreiros,\r\n— Ouvi meu cantar.\r\nValente na guerra,\r\nQuem há, como eu sou?\r\nQuem vibra o tacape Com mais valentia?\r\nQuem golpes daria Fatais, como eu dou?\r\n— Guerreiros, ouvi-me;\r\n— Quem há, como eu sou?\r\nGonçalves Dias.\r\nMacunaíma (Epílogo)\r\nAcabou-se a história e morreu a vitória.\r\nNão havia mais ninguém lá. Dera\r\ntangolomângolo na tribo Tapanhumas e\r\nos filhos dela se acabaram de um em um.\r\nNão havia mais ninguém lá.\r\nAqueles lugares, aqueles campos,\r\nfuros puxadouros arrastadouros meios-barrancos,\r\naqueles matos misteriosos,\r\ntudo era solidão do deserto...\r\nUm silêncio imenso dormia à beira do rio Uraricoera.\r\nNenhum conhecido sobre a terra\r\nnão sabia nem falar da tribo nem contar aqueles casos tão pançudos.\r\nQuem podia saber do Herói?\r\nConsiderando-se a linguagem desses dois textos, verifica-se que', NULL, '(A) a função da linguagem centrada no receptor está ausente tanto no primeiro quanto no segundo texto.\r\n(B) a linguagem utilizada no primeiro texto é coloquial, enquanto, no segundo, predomina a linguagem formal.\r\n(C) há, em cada um dos textos, a utilização de pelo menos uma palavra de origem indígena.\r\n(D) a função da linguagem, no primeiro texto, centra-se na forma de organização da linguagem e, no segundo, no relato de\r\ninformações reais.\r\n(E) a função da linguagem centrada na primeira pessoa, predominante no segundo texto, está ausente no primeiro.', 'C', '', 10, 8),
(912, 30, 'Há cerca de dez anos, estimava-se que 11,2% da população brasileira poderiam ser considerados dependentes de álcool.\r\nEsse índice, dividido por gênero, apontava que 17,1% da população masculina e 5,7% da população feminina eram\r\nconsumidores da bebida. Quando analisada a distribuição etária desse consumo, outro choque: a pesquisa evidenciou que\r\n41,2% de estudantes da educação básica da rede pública brasileira já haviam feito uso de álcool. Dados atuais apontam que a\r\nporcentagem de dependentes de álcool subiu para 15%. Estima-se que o país gaste 7,3% do PIB por ano para tratar de\r\nproblemas relacionados ao alcoolismo, desde o tratamento de pacientes até a perda da produtividade no trabalho. A indústria\r\ndo álcool no Brasil, que produz do açúcar ao álcool combustível, movimenta 3,5% do PIB.\r\nA partir dos dados acima, conclui-se que ', NULL, '(A) o país, para tratar pessoas com problemas provocados pelo alcoolismo, gasta o dobro do que movimenta para produzir\r\nbebida alcoólica.\r\n(B) o aumento do número de brasileiros dependentes de álcool acarreta decréscimo no percentual do PIB gasto no tratamento\r\ndessas pessoas.\r\n(C) o elevado percentual de estudantes que já consumiram bebida alcoólica é indicativo de que o consumo do álcool é\r\nproblema que deve ser enfrentado pela sociedade.\r\n(D) as mulheres representam metade da população brasileira dependente de álcool.\r\n(E) o aumento na porcentagem de brasileiros dependentes de álcool deveu-se, basicamente, ao crescimento da indústria do\r\nálcool.', 'C', '', 10, 5),
(913, 31, 'A tabela abaixo representa, nas diversas regiões do Brasil, a porcentagem de mães que, em 2005, amamentavam seus filhos\r\nnos primeiros meses de vida.\r\nAo ingerir leite materno, a criança adquire anticorpos importantes que a defendem de doenças típicas da primeira infância.\r\nNesse sentido, a tabela mostra que, em 2005, percentualmente, as crianças brasileiras que estavam mais protegidas dessas\r\ndoenças eram as da região ', NULL, '(A)Norte.\r\n(B) Nordeste.\r\n(C) Sudeste.\r\n(D) Sul.\r\n(E) Centro-Oeste.', 'A', '', 10, 14),
(914, 32, 'Os mapas abaixo apresentam informações acerca dos índices de infecção por leishmaniose tegumentar americana (LTA) em\r\n1985 e 1999.\r\nA partir da leitura dos mapas acima, conclui-se que ', NULL, '(A) o índice de infecção por LTA em Minas Gerais elevouse muito nesse período.\r\n(B) o estado de Mato Grosso apresentou diminuição do índice de infecção por LTA devido às intensas campanhas de saúde.\r\n(C) a expansão geográfica da LTA ocorreu no sentido norte-sul como resultado do processo predatório de colonização.\r\n(D) o índice de infecção por LTA no Maranhão diminuiu em virtude das fortes secas que assolaram o estado nesse período.\r\n\r\n(E) o aumento da infecção por LTA no Rio Grande do Sul resultou da proliferação do roedor que transmite essa\r\nenfermidade.', 'A', '', 10, 5),
(915, 33, 'No mapa a seguir, descreve-se a disseminação do vírus da gripe no Brasil, em 2007.\r\nNo mapa, a unidade da escala de tempo que descreve o movimento do vírus da gripe da região Norte para a região Sul do\r\nBrasil é', NULL, '(A) ano.\r\n(B) mês.\r\n(C) hora.\r\n(D) minuto.\r\n(E) segundo.', 'B', '', 10, 5),
(916, 34, 'Uma das principais causas da degradação de peixes frescos é a contaminação por bactérias. O gráfico apresenta resultados\r\nde um estudo acerca da temperatura de peixes frescos vendidos em cinco peixarias. O ideal é que esses peixes sejam\r\nvendidos com temperaturas entre 2 oC e 4 oC. Selecionando-se aleatoriamente uma das cinco peixarias pesquisadas, a\r\nprobabilidade de ela vender peixes frescos na condição ideal é igual a', NULL, '(A) 1⁄2 . (B) 1⁄3 . (C) 1⁄4 . (D) 1⁄5 . (E) 1⁄6.', 'D', '', 10, 14),
(917, 35, 'Aumento de produtividade Nos últimos 60 anos, verificou-se grande aumento da produtividade agrícola nos Estados Unidos\r\nda América (EUA). Isso se deveu a diversos fatores, tais como expansão do uso de fertilizantes e pesticidas, biotecnologia e\r\nmaquinário especializado. O gráfico abaixo apresenta dados referentes à agricultura desse país, no período compreendido\r\nentre 1948 e 2004.\r\nCom base nas informações acima, pode-se considerar fator relevante para o aumento da produtividade na agricultura\r\nestadunidense, no período de 1948 a 2004', NULL, '(A) o aumento do uso da terra.\r\n(B) a redução dos custos de material.\r\n(C) a redução do uso de agrotóxicos.\r\n(D) o aumento da oferta de empregos. E o aumento do uso de tecnologias.', 'E', '', 10, 5),
(918, 36, 'Aumento de produtividade Nos últimos 60 anos, verificou-se grande aumento da produtividade agrícola nos Estados Unidos\r\nda América (EUA). Isso se deveu a diversos fatores, tais como expansão do uso de fertilizantes e pesticidas, biotecnologia e\r\nmaquinário especializado. O gráfico abaixo apresenta dados referentes à agricultura desse país, no período compreendido\r\nentre 1948 e 2004.\r\nA respeito da agricultura estadunidense no período de 1948 a 2004, observa-se que', NULL, '(A) o aumento da produtividade foi acompanhado da redução de mais de 70% dos custos de mão-de-obra.\r\n(B) o valor mínimo dos custos de material ocorreu entre as décadas de 70 e 80.\r\n(C) a produtividade total da agricultura dos EUA apresentou crescimento superior a 200%.\r\n(D) a taxa de crescimento das despesas de capital manteve-se constante entre as décadas de 70 e 90.\r\n(E) o aumento da produtividade foi diretamente proporcional à redução das despesas de capital.', 'A', '', 10, 5),
(919, 38, 'É título adequado para a matéria jornalística em que o gráfico acima seja apresentado:', NULL, '(A) Apicultura: Brasil ocupa a 33.a posição no ranking mundial de produção de mel — as abelhas estão desaparecendo no\r\npaís\r\n(B) O milagre do mel: a apicultura se expande e coloca o país entre os seis primeiros no ranking mundial de produção\r\n(C) Pescadores do mel: Brasil explora regiões de mangue para produção do mel e ultrapassa a Argentina no ranking mundial\r\n(D) Sabor bem brasileiro: Brasil inunda o mercado mundial com a produção de 15 mil toneladas de mel em 2005\r\n(E) Sabor de mel: China é o gigante na produção de mel no mundo e o Brasil está em 15.o lugar no ranking', 'E', '', 10, 14),
(920, 39, 'Os fazendeiros da região sudoeste de Bangladesh, um dos países mais pobres da Ásia, estão tentando adaptar-se às\r\nmudanças acarretadas pelo aquecimento global. Antes acostumados a produzir arroz e vegetais, responsáveis por boa parte\r\nda produção nacional, eles estão migrando para o cultivo do camarão. Com a subida do nível do mar, a água salgada penetrou\r\nnos rios e mangues da região, o que inviabilizou a agricultura, mas, de outro lado, possibilitou a criação de crustáceos, uma\r\natividade até mais lucrativa. O lado positivo da situação termina por aí. A maior parte da população local foi prejudicada, já que\r\nos fazendeiros não precisam contratar mais mão-de-obra, o que aumentou o desemprego. A flora e a fauna do mangue vêm\r\nsendo afetadas pela nova composição da água. Os lençóis freáticos da região foram atingidos pela água salgada.', NULL, '(A) o fortalecimento de atividades produtivas tradicionais em Bangladesh em decorrência dos efeitos do aquecimento global.\r\n(B) a introdução de uma nova atividade produtiva que amplia a oferta de emprego.\r\n(C) a reestruturação de atividades produtivas como forma de enfrentar mudanças nas condições ambientais da região.\r\n(D) o dano ambiental provocado pela exploração mais intensa dos recursos naturais da região a partir do cultivo do camarão.\r\n(E) a busca de investimentos mais rentáveis para Bangladesh crescer economicamente e competir no mercado internacional\r\nde grãos.', 'C', '', 10, 5),
(921, 40, 'Nos últimos 50 anos, as temperaturas de inverno na península antártica subiram quase 6 o C. Ao contrário do esperado, o\r\naquecimento tem aumentado a precipitação de neve. Isso ocorre porque o gelo marinho, que forma um manto impermeável\r\nsobre o oceano, está derretendo devido à elevação de temperatura, o que permite que mais umidade escape para a\r\natmosfera. Essa umidade cai na forma de neve.\r\nLogo depois de chegar a essa região, certa espécie de pingüins precisa de solos nus para construir seus ninhos de\r\npedregulhos. Se a neve não derrete a tempo, eles põem seus ovos sobre ela. Quando a neve finalmente derrete, os ovos se\r\nencharcam de água e goram. Scientific American Brasil, ano 2, n.o 21, 2004, p.80 (com adaptações).\r\nA partir do texto acima, analise as seguintes afirmativas.0\r\nI O aumento da temperatura global interfere no ciclo da água na península antártica.\r\nII O aquecimento global pode interferir no ciclo de vida de espécies típicas de região de clima polar.\r\nIII A existência de água em estado sólido constitui fator crucial para a manutenção da vida em alguns biomas.\r\nÉ correto o que se afirma', NULL, '(A) apenas em I.\r\n(B) apenas em II.\r\n(C) apenas em I e II.\r\n(D) apenas em II e III.\r\n(E) em I, II e III. ', 'E', '', 10, 5),
(922, 41, 'Devido ao aquecimento global e à conseqüente diminuição da cobertura de gelo no Ártico, aumenta a distância que os ursos\r\npolares precisam nadar para encontrar alimentos. Apesar de exímios nadadores, eles acabam morrendo afogados devido ao\r\ncansaço. A situação descrita acima ', NULL, '(A) enfoca o problema da interrupção da cadeia alimentar, o qual decorre das variações climáticas.\r\n(B) alerta para prejuízos que o aquecimento global pode acarretar à biodiversidade no Ártico.\r\n(C) ressalta que o aumento da temperatura decorrente de mudanças climáticas permite o surgimento de novas espécies.\r\n(D) mostra a importância das características das zonas frias para a manutenção de outros biomas na Terra.\r\n(E) evidencia a autonomia dos seres vivos em relação ao habitat, visto que eles se adaptam rapidamente às mudanças nas\r\ncondições climáticas.', 'B', '', 10, 5),
(923, 42, 'O gráfico abaixo ilustra o resultado de um estudo sobre o aquecimento global. A curva mais escura e contínua representa o\r\nresultado de um cálculo em que se considerou a soma de cinco fatores que influenciaram a temperatura média global de 1900\r\na 1990, conforme mostrado na legenda do gráfico. A contribuição efetiva de cada um desses cinco fatores isoladamente é\r\nmostrada na parte inferior do gráfico.\r\nOs dados apresentados revelam que, de 1960 a 1990, contribuíram de forma efetiva e positiva para aumentar a temperatura\r\natmosférica:', NULL, '(A) aerossóis, atividade solar e atividade vulcânica.\r\n(B) atividade vulcânica, ozônio e gases estufa.\r\n(C) aerossóis, atividade solar e gases estufa.\r\n(D) atividade solar, gases estufa e ozônio.', 'E', '', 10, 14),
(924, 43, 'O uso mais popular de energia solar está associado ao fornecimento de água quente para fins domésticos. Na figura ao lado,\r\né ilustrado um aquecedor de água constituído de dois tanques pretos dentro de uma caixa termicamente isolada e com\r\ncobertura de vidro, os quais absorvem energia solar.', NULL, '(A) os tanques, por serem de cor preta, são maus absorvedores de calor e reduzem as perdas de energia.\r\n(B) a cobertura de vidro deixa passar a energia luminosa e reduz a perda de energia térmica utilizada para o aquecimento.\r\n(C) a água circula devido à variação de energia luminosa existente entre os pontos X e Y. D a camada refletiva tem como\r\nfunção armazenar energia luminosa.\r\n(E) o vidro, por ser bom condutor de calor, permite que se mantenha constante a temperatura no interior da caixa.', 'B', '', 10, 5);
INSERT INTO `questoes` (`COD_QUESTAO`, `NUM_QUESTAO`, `QUESTAO_DESCRICAO`, `IMAGEM`, `RESPOSTAS`, `RESPOSTA_CORRETA`, `RESPOSTA_CORRETA_DESCRICAO`, `COD_PROVA`, `COD_ASSUNTO`) VALUES
(925, 44, 'Explosões solares emitem radiações eletromagnéticas muito intensas e ejetam, para o espaço, partículas carregadas de alta\r\nenergia, o que provoca efeitos danosos na Terra. O gráfico abaixo mostra o tempo transcorrido desde a primeira detecção de\r\numa explosão solar até a chegada dos diferentes tipos de perturbação e seus respectivos efeitos na Terra.\r\nConsiderando-se o gráfico, é correto afirmar que a perturbação por ondas de rádio geradas em uma explosão solar', NULL, '(A) dura mais que uma tempestade magnética.\r\n(B) chega à Terra dez dias antes do plasma solar.\r\n(C) chega à Terra depois da perturbação por raios X.\r\n(D) tem duração maior que a da perturbação por raios X.\r\n(E) tem duração semelhante à da chegada à Terra de partículas de alta energia.', 'D', '', 10, 1),
(926, 45, 'A pele humana é sensível à radiação solar, e essa sensibilidade depende das características da pele. Os filtros solares são\r\nprodutos que podem ser aplicados sobre a pele para protegê-la da radiação solar. A eficácia dos filtros solares é definida pelo\r\nfator de proteção solar (FPS), que indica quantas vezes o tempo de exposição ao sol, sem o risco de vermelhidão, pode ser\r\naumentado com o uso do protetor solar. A tabela seguinte reúne informações encontradas em rótulos de filtros solares.', NULL, '(A) as pessoas de pele muito sensível, ao usarem filtro solar, estarão isentas do risco de queimaduras.\r\n(B) o uso de filtro solar é recomendado para todos os tipos de pele exposta à radiação solar. (C) as pessoas de pele sensível\r\ndevem expor-se 6 minutos ao sol antes de aplicarem o filtro solar.\r\n(D) pessoas de pele amarela, usando ou não filtro solar, devem expor-se ao sol por menos tempo que pessoas de pele\r\nmorena.\r\n(E) o período recomendado para que pessoas de pele negra se exponham ao sol é de 2 a 6 horas diárias.', 'B', '', 10, 8),
(927, 46, 'A pele humana é sensível à radiação solar, e essa sensibilidade depende das características da pele. Os filtros solares são\r\nprodutos que podem ser aplicados sobre a pele para protegê-la da radiação solar. A eficácia dos filtros solares é definida pelo\r\n\r\nfator de proteção solar (FPS), que indica quantas vezes o tempo de exposição ao sol, sem o risco de vermelhidão, pode ser\r\naumentado com o uso do protetor solar. A tabela seguinte reúne informações encontradas em rótulos de filtros solares.\r\nUma família de europeus escolheu as praias do Nordeste para uma temporada de férias. Fazem parte da família um garoto de\r\n4 anos de idade, que se recupera de icterícia, e um bebê de 1 ano de idade, ambos loiros de olhos azuis. Os pais concordam\r\nque os meninos devem usar chapéu durante os passeios na praia. Entretanto, divergem quanto ao uso do filtro solar. Na\r\nopinião do pai, o bebê deve usar filtro solar com FPS ≥ 20 e o seu irmão não deve usar filtro algum porque precisa tomar sol\r\npara se fortalecer. A mãe opina que os dois meninos devem usar filtro solar com FPS ≥ 20. Na situação apresentada,\r\ncomparada à opinião da mãe, a opinião do pai é', NULL, '(A) correta, porque ele sugere que a família use chapéu durante todo o passeio na praia.\r\n(B) correta, porque o bebê loiro de olhos azuis tem a pele mais sensível que a de seu irmão. (C) correta, porque o filtro solar\r\ncom FPS ≥ 20 bloqueia o efeito benéfico do sol na recuperação da icterícia.\r\n(D) incorreta, porque o uso do filtro solar com FPS ≥ 20, com eficiência moderada, evita queimaduras na pele.\r\n(E) incorreta, porque é recomendado que pessoas com olhos e cabelos claros usem filtro solar com FPS ≥ 20.', 'E', '', 10, 8),
(928, 47, 'Quanto mais desenvolvida é uma nação, mais lixo cada um de seus habitantes produz. Além de o progresso elevar o volume\r\nde lixo, ele também modifica a qualidade do material despejado. Quando a sociedade progride, ela troca a televisão, o\r\ncomputador, compra mais brinquedos e aparelhos eletrônicos. Calcula-se que 700 milhões de aparelhos celulares já foram\r\njogados fora em todo o mundo. O novo lixo contém mais mercúrio, chumbo, alumínio e bário. Abandonado nos lixões, esse\r\nmaterial se deteriora e vaza. As substâncias liberadas infiltram-se no solo e podem chegar aos lençóis freáticos ou a rios\r\npróximos, espalhando-se pela água.\r\nA respeito da produção de lixo e de sua relação com o ambiente, é correto afirmar que ', NULL, '(A) as substâncias químicas encontradas no lixo levam, freqüentemente, ao aumento da diversidade de espécies e, portanto,\r\nao aumento da produtividade agrícola do solo.\r\n(B) o tipo e a quantidade de lixo produzido pela sociedade independem de políticas de educação que proponham mudanças no\r\npadrão de consumo.\r\n(C) a produção de lixo é inversamente proporcional ao nível de desenvolvimento econômico das sociedades.\r\n(D) o desenvolvimento sustentável requer controle e monitoramento dos efeitos do lixo sobre espécies existentes em cursos\r\nd’água, solo e vegetação.\r\n(E) o desenvolvimento tecnológico tem elevado a criação de produtos descartáveis, o que evita a geração de lixo e resíduos\r\nquímicos.', 'D', '', 10, 1),
(929, 48, ' Um poeta habitante da cidade de Poços de Caldas– MG assim externou o que estava acontecendo em sua cidade:\r\nHoje, o planalto de Poços de Caldas não serve mais. Minério acabou. Só mancha, “nunclemais”. Mas estão “tapando os\r\nburacos”, trazendo para cá “Torta II”1 , aquele lixo do vizinho que você não gostaria de ver jogado no quintal da sua casa.\r\nSentimentos mil: do povo, do poeta e do Brasil.\r\nHugo Pontes. In: M.E.M. Helene. A radioatividade e o lixo nuclear. São Paulo: Scipione, 2002, p. 4. 1 Torta II – lixo radioativo\r\nde aspecto pastoso.\r\nA indignação que o poeta expressa no verso “Sentimentos mil: do povo, do poeta e do Brasil” está relacionada com', NULL, '(A) a extinção do minério decorrente das medidas adotadas pela metrópole portuguesa para explorar as riquezas minerais,\r\nespecialmente em Minas Gerais.\r\n(B) a decisão tomada pelo governo brasileiro de receber o lixo tóxico oriundo de países do Cone Sul, o que caracteriza o\r\nchamado comércio internacional do lixo.\r\n(C) a atitude de moradores que residem em casas próximas umas das outras, quando um deles joga lixo no quintal do vizinho.\r\n(D) as chamadas operações tapa-buracos, desencadeadas com o objetivo de resolver problemas de manutenção das estradas\r\nque ligam as cidades mineiras.\r\n\r\n(E) os problemas ambientais que podem ser causados quando se escolhe um local para enterrar ou depositar lixo tóxico.', 'E', '', 10, 1),
(930, 49, 'A partir da comparação da pirâmide etária relativa a 1990 com as projeções para 2030 e considerando-se os processos de\r\nformação socioeconômica da população brasileira, é correto afirmar que ', NULL, '(A) a expectativa de vida do brasileiro tende a aumentar na medida em que melhoram as condições de vida da população.\r\n(B) a população do país tende a diminuir na medida em que a taxa de mortalidade diminui. (C) a taxa de mortalidade\r\ninfantil tende a aumentar na medida em que aumenta o índice de desenvolvimento humano.\r\n(D) a necessidade de investimentos no setor de saúde tende a diminuir na medida em que aumenta a população idosa.\r\n(E) o nível de instrução da população tende a diminuir na medida em que diminui a população. ', 'A', '', 10, 5),
(931, 50, 'Se for confirmada a tendência apresentada nos gráficos relativos à pirâmide etária, em 2050', NULL, '(A) a população brasileira com 80 anos de idade será composta por mais homens que mulheres.\r\n(B) a maioria da população brasileira terá menos de 25 anos de idade.\r\n(C) a população brasileira do sexo feminino será inferior a 2 milhões.\r\n(D) a população brasileira com mais de 40 anos de idade será maior que em 2030.\r\n(E) a população brasileira será inferior à população de 2010.', 'D', '', 10, 5),
(932, 51, 'Se forem confirmadas as projeções apresentadas, a população brasileira com até 80 anos de idade será, em 2030, ', NULL, '(A) menor que 170 milhões de habitantes.\r\n(B) maior que 170 milhões e menor que 210 milhões de habitantes.\r\n(C) maior que 210 milhões e menor que 290 milhões de habitantes.\r\n(D) maior que 290 milhões e menor que 370 milhões de habitantes.\r\n(E) maior que 370 milhões de habitantes.', 'C', '', 10, 5),
(933, 52, 'Uma equipe de paleontólogos descobriu um rastro de dinossauro carnívoro e nadador, no norte da Espanha. O rastro\r\ncompleto tem comprimento igual a 15 metros e consiste de vários pares simétricos de duas marcas de três arranhões cada\r\numa, conservadas em arenito. O espaço entre duas marcas consecutivas mostra uma pernada de 2,5 metros. O rastro difere\r\ndo de um dinossauro não-nadador: “são as unhas que penetram no barro — e não a pisada —, o que demonstra que o animal\r\nestava nadando sobre a água: só tocava o solo com as unhas, não pisava”, afirmam os paleontólogos. Internet: (com\r\n\r\nadaptações). Qual dos seguintes fragmentos do texto, considerado isoladamente, é variável relevante para se estimar o\r\ntamanho do dinossauro nadador mencionado? ', NULL, '(A) “O rastro completo tem 15 metros de comprimento”\r\n(B) “O espaço entre duas marcas consecutivas mostra uma pernada de 2,5 metros”\r\n(C) “O rastro difere do de um dinossauro não-nadador”\r\n(D) “são as unhas que penetram no barro — e não a pisada”\r\n(E) “o animal estava nadando sobre a água: só tocava o solo com as unhas”', 'B', '', 10, 4),
(934, 53, 'A pintura rupestre acima, que é um patrimônio cultural brasileiro, expressa', NULL, '(A) o conflito entre os povos indígenas e os europeus durante o processo de colonização do Brasil.\r\n(B) a organização social e política de um povo indígena e a hierarquia entre seus membros. (C) aspectos da vida cotidiana de\r\ngrupos que viveram durante a chamada pré-história do Brasil.\r\n(D) os rituais que envolvem sacrifícios de grandes dinossauros atualmente extintos.\r\n(E) a constante guerra entre diferentes grupos paleoíndios da América durante o período colonial. ', 'C', '', 10, 11),
(935, 54, 'Fenômenos biológicos podem ocorrer em diferentes escalas de tempo. Assinale a opção que ordena exemplos de fenômenos\r\nbiológicos, do mais lento para o mais rápido.', NULL, '(A) germinação de uma semente, crescimento de uma árvore, fossilização de uma samambaia\r\n(B) fossilização de uma samambaia, crescimento de uma árvore, germinação de uma semente\r\n(C) crescimento de uma árvore, germinação de uma semente, fossilização de uma samambaia\r\n(D) fossilização de uma samambaia, germinação de uma semente, crescimento de uma árvore\r\n(E) germinação de uma semente, fossilização de uma samambaia, crescimento de uma árvore', 'B', '', 10, 1),
(936, 55, 'As mudanças evolutivas dos organismos resultam de alguns processos comuns à maioria dos seres vivos. É um processo\r\nevolutivo comum a plantas e animais vertebrados: ', NULL, '(A) movimento de indivíduos ou de material genético entre populações, o que reduz a diversidade de genes e cromossomos.\r\n(B) sobrevivência de indivíduos portadores de determinadas características genéticas em ambientes específicos.\r\n(C) aparecimento, por geração espontânea, de novos indivíduos adaptados ao ambiente.\r\n(D) aquisição de características genéticas transmitidas aos descendentes em resposta a mudanças ambientais.\r\n(E) recombinação de genes presentes em cromossomos do mesmo tipo durante a fase da esporulação. ', 'B', '', 10, 1),
(937, 56, 'Todas as reações químicas de um ser vivo seguem um programa operado por uma central de informações. A meta desse\r\nprograma é a auto-replicação de todos os componentes do sistema, incluindo-se a duplicação do próprio programa ou mais\r\nprecisamente do material no qual o programa está inscrito. Cada reprodução pode estar associada a pequenas modificações\r\ndo programa.\r\nM. O. Murphy e l. O’neill (Orgs.). O que é vida? 50 anos depois — especulações sobre o futuro da biologia. São Paulo:\r\nUNESP. 1997 (com adaptações).\r\nSão indispensáveis à execução do “programa” mencionado acima processos relacionados a metabolismo, autoreplicação e\r\nmutação, que podem ser exemplificados, respectivamente, por:', NULL, '(A) fotossíntese, respiração e alterações na seqüência de bases nitrogenadas do código genético.\r\n(B) duplicação do RNA, pareamento de bases nitrogenadas e digestão de constituintes dos alimentos.\r\n(C) excreção de compostos nitrogenados, respiração celular e digestão de constituintes dos alimentos.\r\n(D) respiração celular, duplicação do DNA e alterações na seqüência de bases nitrogenadas do código genético.\r\n(E) fotossíntese, duplicação do DNA e excreção de compostos nitrogenados.', 'D', '', 10, 1),
(938, 57, 'Com o projeto de mochila ilustrado acima, pretende-se aproveitar, na geração de energia elétrica para acionar dispositivos\r\neletrônicos portáteis, parte da energia desperdiçada no ato de caminhar. As transformações de energia envolvidas na\r\nprodução de eletricidade enquanto uma pessoa caminha com essa mochila podem ser assim esquematizadas:\r\nAs energias I e II, representadas no esquema acima, podem ser identificadas, respectivamente, como ', NULL, '(A) cinética e elétrica.\r\n(B) térmica e cinética.\r\n(C) térmica e elétrica.\r\n(D) sonora e térmica.\r\n(E) radiante e elétrica. ', 'A', '', 10, 3),
(939, 58, 'As pressões ambientais pela redução na emissão de gás estufa, somadas ao anseio pela diminuição da dependência do\r\npetróleo, fizeram os olhos do mundo se voltarem para os combustíveis renováveis, principalmente para o etanol. Líderes na\r\nprodução e no consumo de etanol, Brasil e Estados Unidos da América (EUA) produziram, juntos, cerca de 35 bilhões de litros\r\ndo produto em 2006. Os EUA utilizam o milho como matéria-prima para a produção desse álcool, ao passo que o Brasil utiliza\r\na cana-de-açúcar. O quadro abaixo apresenta alguns índices relativos ao processo de obtenção de álcool nesses dois países.\r\nSe comparado com o uso do milho como matéria-prima na obtenção do etanol, o uso da cana-de-açúcar é', NULL, '(A) mais eficiente, pois a produtividade do canavial é maior que a do milharal, superando-a em mais do dobro de litros de\r\nálcool produzido por hectare.\r\n(B) mais eficiente, pois gasta-se menos energia fóssil para se produzir 1 litro de álcool a partir do milho do que para produzi-lo\r\na partir da cana.\r\n(C) igualmente eficiente, pois, nas duas situações, as diferenças entre o preço de venda do litro do álcool e o custo de sua\r\nprodução se equiparam.\r\n(D) menos eficiente, pois o balanço energético para se produzir o etanol a partir da cana é menor que o balanço energético\r\npara produzi-lo a partir do milho.\r\n\r\n(E) menos eficiente, pois o custo de produção do litro de álcool a partir da cana é menor que o custo de produção a partir do\r\nmilho.', 'A', '', 10, 5),
(940, 59, 'Considerando-se as informações do texto, é correto afirmar que', NULL, '(A) o cultivo de milho ou de cana-de-açúcar favorece o aumento da biodiversidade.\r\n(B) o impacto ambiental da produção estadunidense de etanol é o mesmo da produção brasileira.\r\n(C) a substituição da gasolina pelo etanol em veículos automotores pode atenuar a tendência atual de aumento do efeito\r\nestufa.\r\n(D) a economia obtida com o uso de etanol como combustível, especialmente nos EUA, vem sendo utilizada para a\r\nconservação do meio ambiente.\r\n(E) a utilização de milho e de cana-de-açúcar para a produção de combustíveis renováveis favorece a preservação das\r\ncaracterísticas originais do solo. ', 'C', '', 10, 5),
(941, 60, 'Qual das seguintes fontes de produção de energia é a mais recomendável para a diminuição dos gases causadores do\r\naquecimento global?', NULL, '(A) Óleo diesel. (B) Gasolina. (C) Carvão mineral. (D) Gás natural. (E) Vento.', 'E', '', 10, 3),
(942, 61, 'As figuras acima apresentam dados referentes aos consumos de energia elétrica e de água relativos a cinco máquinas\r\nindustriais de lavar roupa comercializadas no Brasil. A máquina ideal, quanto a rendimento econômico e ambiental, é aquela\r\nque gasta, simultaneamente, menos energia e água. Com base nessas informações, conclui-se que, no conjunto pesquisado,\r\n', NULL, 'A quanto mais uma máquina de lavar roupa economiza água, mais ela consome energia elétrica. B a quantidade de energia\r\nelétrica consumida por uma máquina de lavar roupa é inversamente proporcional à quantidade de água consumida por ela. C a\r\nmáquina I é ideal, de acordo com a definição apresentada. D a máquina que menos consome energia elétrica não é a que\r\nconsome menos água. E a máquina que mais consome energia elétrica não é a que consome mais água. ', 'D', '', 10, 3),
(943, 62, 'De acordo com a legislação brasileira, são tipos de água engarrafada que podem ser vendidos no comércio para o consumo\r\nhumano:\r\n• água mineral: água que, proveniente de fontes naturais ou captada artificialmente, possui composição química ou\r\npropriedades físicas ou físico-químicas específicas, com características que lhe conferem ação medicamentosa;\r\n• água potável de mesa: água que, proveniente de fontes naturais ou captada artificialmente, possui características que a\r\ntornam adequada ao consumo humano;\r\n• água purificada adicionada de sais: água produzida artificialmente por meio da adição à água potável de sais de uso\r\npermitido, podendo ser gaseificada.\r\nCom base nessas informações, conclui-se que', NULL, '(A) os três tipos de água descritos na legislação são potáveis.\r\n(B) toda água engarrafada vendida no comércio é água mineral.\r\n(C) água purificada adicionada de sais é um produto natural encontrado em algumas fontes específicas.\r\n(D) a água potável de mesa é adequada para o consumo humano porque apresenta extensa flora bacteriana.\r\n(E) a legislação brasileira reconhece que todos os tipos de água têm ação medicamentosa.', 'A', '', 10, 5),
(944, 63, 'O artigo 1.o da Lei Federal n.o 9.433/1997 (Lei das Águas) estabelece, entre outros, os seguintes fundamentos:\r\nI a água é um bem de domínio público;\r\nII a água é um recurso natural limitado, dotado de valor econômico;\r\nIII em situações de escassez, os usos prioritários dos recursos hídricos são o consumo humano e a dessedentação de\r\nanimais;\r\nIV a gestão dos recursos hídricos deve sempre proporcionar o uso múltiplo das águas. Considere que um rio nasça em uma\r\nfazenda cuja única atividade produtiva seja a lavoura irrigada de milho e que a companhia de águas do município em que se\r\nencontra a fazenda colete água desse rio para abastecer a cidade.\r\nConsidere, ainda, que, durante uma estiagem, o volume de água do rio tenha chegado ao nível crítico, tornando-se insuficiente\r\npara garantir o consumo humano e a atividade agrícola mencionada. Nessa situação, qual das medidas abaixo estaria de\r\nacordo com o artigo 1.o da Lei das Águas?', NULL, '(A) Manter a irrigação da lavoura, pois a água do rio pertence ao dono da fazenda.\r\n(B) Interromper a irrigação da lavoura, para se garantir o abastecimento de água para consumo humano.\r\n(C) Manter o fornecimento de água apenas para aqueles que pagam mais, já que a água é bem dotado de valor econômico.\r\n(D) Manter o fornecimento de água tanto para a lavoura quanto para o consumo humano, até o esgotamento do rio.\r\n(E) Interromper o fornecimento de água para a lavoura e para o consumo humano, a fim de que a água seja transferida para\r\noutros rios.', 'B', '', 10, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'Hermano777', 'wagnersouza.rj@hotmail.com', '123456'),
(2, 'Hermano777', 'gabriel@email.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area_conhecimento`
--
ALTER TABLE `area_conhecimento`
  ADD PRIMARY KEY (`cod_conhecimento`);

--
-- Indexes for table `assunto`
--
ALTER TABLE `assunto`
  ADD PRIMARY KEY (`COD_ASSUNTO`),
  ADD KEY `COD_DISCIPLINA` (`COD_DISCIPLINA`);

--
-- Indexes for table `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`COD_DISCIPLINA`),
  ADD KEY `cod_conhecimento` (`cod_conhecimento`);

--
-- Indexes for table `prova`
--
ALTER TABLE `prova`
  ADD PRIMARY KEY (`COD_PROVA`);

--
-- Indexes for table `questoes`
--
ALTER TABLE `questoes`
  ADD PRIMARY KEY (`COD_QUESTAO`),
  ADD KEY `COD_PROVA` (`COD_PROVA`),
  ADD KEY `COD_ASSUNTO` (`COD_ASSUNTO`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area_conhecimento`
--
ALTER TABLE `area_conhecimento`
  MODIFY `cod_conhecimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `COD_DISCIPLINA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `assunto`
--
ALTER TABLE `assunto`
  ADD CONSTRAINT `assunto_ibfk_1` FOREIGN KEY (`COD_DISCIPLINA`) REFERENCES `disciplina` (`COD_DISCIPLINA`);

--
-- Limitadores para a tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`cod_conhecimento`) REFERENCES `area_conhecimento` (`cod_conhecimento`);

--
-- Limitadores para a tabela `questoes`
--
ALTER TABLE `questoes`
  ADD CONSTRAINT `questoes_ibfk_1` FOREIGN KEY (`COD_PROVA`) REFERENCES `prova` (`COD_PROVA`),
  ADD CONSTRAINT `questoes_ibfk_2` FOREIGN KEY (`COD_ASSUNTO`) REFERENCES `assunto` (`COD_ASSUNTO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
