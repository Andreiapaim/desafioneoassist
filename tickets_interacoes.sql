# MySQL-Front 3.2  (Build 10.2)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;

/*!40101 SET NAMES latin1 */;
/*!40103 SET TIME_ZONE='SYSTEM' */;

# Host: myresellerwin0003.locaweb.com.br    Database: brazilcats_getupsites
# ------------------------------------------------------
# Server version 5.7.17-13-log

#
# Table structure for table tickets_interacoes
#

CREATE TABLE `tickets_interacoes` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Ticket` int(11) DEFAULT NULL,
  `Assunto` varchar(255) DEFAULT NULL,
  `Mensagem` text,
  `Data` datetime DEFAULT NULL,
  `Origem` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

#
# Dumping data for table tickets_interacoes
#

/*!40101 SET NAMES utf8 */;

INSERT INTO `tickets_interacoes` VALUES (1,28890,'Sem Assunto','Estou procurando bermuda masculina Com bolsos laterais 100 por cento poliéster.','2017-12-13 03:08:42','Customer');
INSERT INTO `tickets_interacoes` VALUES (2,28890,'RE: Sem Assunto','Olá! Tudo bem? Não temos esse modelo :/ Temos outros modelos no site, dá uma olhada.','2018-01-03 09:18:25','Expert');
INSERT INTO `tickets_interacoes` VALUES (3,28890,'RE: Sem Assunto','Obrigado. GOsto de bermuda com bolsos laterais . Quem fabricou este modelo?','2018-01-04 09:18:25','Customer');
INSERT INTO `tickets_interacoes` VALUES (4,28891,'Reclamação','Boa noite! Comprei na loja um tênis para minha filha, porém está manchando a meia. O que fazer para não estragar todas as meias???','2017-12-25 03:12:39','Customer');
INSERT INTO `tickets_interacoes` VALUES (5,28891,'RE: Reclamação','Bom dia Tudo bem? Esperamos que sim! Poxa, uma pena ter ocorrido com o tênis... Neste caso, há uma garantia diferenciada de 12 meses, e para oferecer essa garantia, a marca define que para casos de defeitos, seja feito a avaliação diretamente com eles, para avaliar o defeito e já emitir o código de autorização da troca. Assim que emitido o código, basta comparecer até a loja com o produto para trocar!','2018-02-12 05:14:11','Expert');
INSERT INTO `tickets_interacoes` VALUES (6,28892,'Tamanho diferente','Boa tarde ! Comprei um tênis tamanho 38 na loja. Entretanto, o pé direito está maior do que o pé esquerdo e só notei ao usá-lo. Essa diferença está notável externamente. Aguardo uma solução','2017-12-21 03:51:39','Customer');
INSERT INTO `tickets_interacoes` VALUES (7,28892,'RE: Tamanho diferente','Boa tarde. Tudo bem? Esperamos que sim! No caso, basta comparecer a loja onde foi efetuado a compra para verificar as possibilidades de troca/solução referente ao defeito do seu produto, com o produto e nota fiscal em mãos.','2018-01-01 06:21:59','Expert');
INSERT INTO `tickets_interacoes` VALUES (8,28893,'Sem assunto','Boa tarde ,efetuei uma compra e digitei o meu email errado e nao consigo acompanhar a entrega e a compra o que faço','2017-12-09 01:34:49','Customer');
INSERT INTO `tickets_interacoes` VALUES (9,28893,'RE: Dúvidas','Boa noite. Por favor, me informa o número do CPF cadastrado ou número do pedido?','2018-01-17 01:19:08','Expert');
INSERT INTO `tickets_interacoes` VALUES (10,28893,'RE: Dúvidas','Boa tarde segue o numero do pedido 12345','2018-01-19 01:19:08','Customer');
INSERT INTO `tickets_interacoes` VALUES (11,28894,'Reclamação','efetuei a compra de um produto e até agora nao foi entregue a mercadoria, no site de vcs nao consta o pedido como pendente, já veio debitada a compra na fatura do meu cartão, ja tentei de várias formas e não consigo soluçao, gostaria de resolver da melhor maneira possivel direto com a loja antes de tomar as providências cabíveis','2017-12-22 01:05:19','Customer');
INSERT INTO `tickets_interacoes` VALUES (12,28894,'RE: Reclamação','Bom dia. Infelizmente a entrega retornou e não conseguimos entrar em contato. Seus dados estão corretos?','2018-02-04 10:03:08','Expert');
INSERT INTO `tickets_interacoes` VALUES (13,28895,'Entrega','Bom dia, O prazo de entrega do produto foi ontem e até o momento não recebemos o pedido, confirmado o pagamento. Por gentileza, verificar o ocorrido uma vez que já trocamos o produto','2017-12-16 11:41:52','Customer');
INSERT INTO `tickets_interacoes` VALUES (14,28895,'RE: Entrega','Bom dia. Por favor, qual o número do pedido para que eu possa verificar seu andamento?','2018-01-05 11:27:25','Expert');
INSERT INTO `tickets_interacoes` VALUES (15,28896,'Elogios','Muito obrigado pela gentileza e atenção.Vocês sao simpaticos, gentis e agradaveis de se lidar e de respeito ao consumidor.Não tenho mais palavras para agradecer tamanha gentileza e simpatia.Fiquei muito satisfeito.Recomendarei a todos.','2017-12-07 02:40:42','Customer');
INSERT INTO `tickets_interacoes` VALUES (16,28896,'RE: Elogios','Que ótimo que tenha gostado. Sem palavras, receber um agradecimento por excelência é sensacional para nós.','2018-01-06 10:21:10','Expert');
INSERT INTO `tickets_interacoes` VALUES (17,28897,'Elogios e Sugestões','Ficou otimo. Sensacional, gostei.Mais uma vez, elogios para vocês. Obrigado pela atenção, boas vendas.','2017-12-12 01:24:14','Customer');
INSERT INTO `tickets_interacoes` VALUES (18,28897,'RE: Elogios e Sugestões','Muito bom saber. Nossa satisfação aumenta com clientes assim.','2018-01-09 04:34:40','Expert');
INSERT INTO `tickets_interacoes` VALUES (19,28898,'Elogios','Parabens pelo produto de voces, pelo bom atendimento e rapidez na entrega. Voces sao otimos.','2017-12-03 12:44:34','Customer');
INSERT INTO `tickets_interacoes` VALUES (20,28898,'RE: Elogios','Ficamos felizes em saber que nosso trabalho traz momentos especiais.','2018-02-11 04:22:01','Expert');
INSERT INTO `tickets_interacoes` VALUES (21,28899,'Dúvida','Olá eu queria saber se tem data pra ter ou se já está disponivel o produto ABC em alguma loja física','2017-12-18 06:24:45','Customer');
INSERT INTO `tickets_interacoes` VALUES (22,28899,'RE: Dúvida','Não há previsão de reposição desse produto, mas qual modelo está procurando?','2018-01-09 07:13:04','Expert');
INSERT INTO `tickets_interacoes` VALUES (23,288910,'Planos e Formas de Pagamento','A 1º parcela de 72,00 refere-se a 3 meses de plano, mas o que significa que a assinatura será renovada automaticamente com o valor de 29,00 ? Este procedimento é depois dos 3 meses, ou terei que pagar','2017-12-03 04:57:38','Customer');
INSERT INTO `tickets_interacoes` VALUES (24,288910,'RE: Planos e Formas de Pagamento','Olá. O valor de R$72,00 refere-se apenas aos 3 primeiros meses. As próximas renovações após os 3 meses terão o valor de R$29,00. Caso haja mais dúvidas, por favor entrar em contato.','2018-02-12 12:34:43','Expert');
INSERT INTO `tickets_interacoes` VALUES (25,288911,'COnfirmação de data de entrega','Gostaria da confirmaço da data para entrega. Tres dias contando a partir de quando? Do dia 19? Preciso destas informaçÃµes também para o preenchimento da minha pesquisa de satisfaço no e-bit. Obrigada','2017-12-13 06:55:35','Customer');
INSERT INTO `tickets_interacoes` VALUES (26,288911,'RE: COnfirmação de data de entrega','Olá. A data de entrega é de 3 dias úteis contando a partir do dia de confirmação do pagamento via cartão ou boleto.','2018-02-05 10:13:42','Expert');
INSERT INTO `tickets_interacoes` VALUES (27,288911,'RE: COnfirmação de data de entrega','Mas já faz mais de 3 dias q o pagto já foi confirmado','2018-02-10 10:10:55','Customer');
INSERT INTO `tickets_interacoes` VALUES (28,288912,'Dúvidas sobre o programa','fiz assinatura ontem , até agora não consigo acessar o programa , esta é a terceira tentativa de contato , alguém pode resolver meu caso ?','2017-12-12 01:25:30','Customer');
INSERT INTO `tickets_interacoes` VALUES (29,288912,'RE: Dúvidas sobre o programa','Boa tarde. O acesso ao sistema será liberado quando houver confirmação de pagamento via boleto.','2018-02-05 09:09:59','Expert');
INSERT INTO `tickets_interacoes` VALUES (30,288912,'RE: Dúvidas sobre o programa','Mas já recebi a confirmacao de pagamento por email','2018-02-10 09:11:50','Customer');
INSERT INTO `tickets_interacoes` VALUES (31,288913,'Como troco um produto?','Comprei no dia 15/6/17 (pedido 4800) um celular. Ontem chegou em minha casa um tablet. A NF está em nome de outra pessoa, com outro número de pedido (4878). Quero saber oq faço','2017-12-25 09:03:15','Customer');
INSERT INTO `tickets_interacoes` VALUES (32,288913,'RE: Como troco um produto?','Olá, bom dia. Enviaremos o produto correto em 5 dias úteis.','2018-02-02 11:21:49','Expert');
INSERT INTO `tickets_interacoes` VALUES (33,288913,'RE: Como troco um produto?','Mas o que devo fazer com o outro produto que recbi errado?','2018-02-09 20:13:52','Customer');
INSERT INTO `tickets_interacoes` VALUES (34,288914,'Dúvidas sobre cancelamento do programa','A opção de cancelamento da continuidade da assinatura não esta funcionando. Ja tentei varias vezes e em dias diferentes e nunca da certo. Não quero continuar com a assinatura.','2017-12-19 10:23:28','Customer');
INSERT INTO `tickets_interacoes` VALUES (35,288914,'RE: Dúvidas sobre cancelamento do programa','Bom dia. É uma pena que haja interesse em cancelar. Não há nada que possamos fazer para evitar o cancelamento?','2018-01-26 12:05:02','Expert');
INSERT INTO `tickets_interacoes` VALUES (36,288914,'RE: Dúvidas sobre cancelamento do programa','Não. Por favor, quero cancelar. Como posso fazer?','2018-01-29 13:45:22','Customer');
INSERT INTO `tickets_interacoes` VALUES (37,288915,'Informação','meu pedido ainda nao chegou, quero saber o que aconteceu e o que devo fazer?','2017-12-27 05:19:59','Customer');
INSERT INTO `tickets_interacoes` VALUES (38,288915,'RE: Informação','Olá. Por favor, envie-nos o número do seu pedido para que possamos verificar a situação de entrega','2018-01-26 08:26:19','Expert');
INSERT INTO `tickets_interacoes` VALUES (39,288915,'RE: Informação','O número do pedido é 829034','2018-01-28 09:16:29','Customer');
INSERT INTO `tickets_interacoes` VALUES (40,288916,'Cadastro','cadastrei meu email errado gostaria de corrigir , peço se possivel corrigir meu email e mandar uma nova senha','2017-12-24 06:29:33','Customer');
INSERT INTO `tickets_interacoes` VALUES (41,288916,'RE: Cadastro','Olá, bom dia. Seu e-mail já foi alterado. A nova senha poderá ser cadastrada no formulário do site.','2018-01-28 08:59:51','Expert');
INSERT INTO `tickets_interacoes` VALUES (42,288916,'RE: Cadastro','o sistema não tá deixando eu mudar a senha. Aparece \"senha incorreta\"','2018-02-01 08:00:00','Customer');
INSERT INTO `tickets_interacoes` VALUES (43,288917,'Data de Entrega','como posso rastrear meu pedido simultaneamente, qual a data que ele devera chegar. Por que ele ainda não foi enviado.','2017-12-15 03:30:32','Customer');
INSERT INTO `tickets_interacoes` VALUES (44,288917,'RE: Data de Entrega','Oi, tudo bem? Para rastrear seu pedido, acesse o site e entre na área Meus Pedidos para verificar a situação atual do mesmo.','2018-01-10 05:37:56','Expert');
INSERT INTO `tickets_interacoes` VALUES (45,288918,'Coleta de Pedido','Bom dia, mudei meu endereço de entrega do pedido, e ainda assim o entregador esta aindo no endereço antigo, segue o novo endereço como ja esta no cadastro de vcs.','2017-12-17 09:35:01','Customer');
INSERT INTO `tickets_interacoes` VALUES (46,288918,'RE: Coleta de Pedido','Oi, boa noite. Obrigado por entrar em contato. O novo endereço precisa ser confirmado na área de cadastro do cliente.','2018-01-17 12:22:16','Expert');
INSERT INTO `tickets_interacoes` VALUES (47,288918,'RE: Coleta de Pedido','Já confirmei o endereço duas vezes e continua dando problema..','2018-01-19 22:20:19','Customer');
INSERT INTO `tickets_interacoes` VALUES (48,288919,'troca de produto','comprei um produto, so que a fonte de alimentaçao não fuciona','2017-12-07 12:59:33','Customer');
INSERT INTO `tickets_interacoes` VALUES (49,288919,'RE: troca de produto','Bom dia. Por favor, envie-nos o número do pedido para que seja possível fazer uma avaliação','2018-01-06 02:55:47','Expert');
INSERT INTO `tickets_interacoes` VALUES (50,288920,'Entrega ','quero sabero o nº de rastreio do produto, caso já tenha sido despachado.','2017-12-26 10:04:31','Customer');
INSERT INTO `tickets_interacoes` VALUES (51,288920,'RE: Entrega ','Olá. Seu pedido encontra-se na transportadora. Para mais informações, acesse o site e verifique status do pedido.','2018-01-06 03:43:55','Expert');
INSERT INTO `tickets_interacoes` VALUES (52,288921,'Formas de Pagamento','Gostaria de saber se o notebook A ainda está disponível em estoque e se o preço permanece o mesmo. Também preciso saber qual forma de pagamento.','2017-12-12 12:53:57','Customer');
INSERT INTO `tickets_interacoes` VALUES (53,288921,'RE: Formas de Pagamento','Olá. A disponibilidade e forma de pagamento do equipamento pode ser verificada no site de compra.','2018-01-11 09:30:38','Expert');
INSERT INTO `tickets_interacoes` VALUES (54,288922,'Esclarecer uma dúvida','Voces pode manda um cupom de descontos para mim para eu fazer uma nova compra?','2017-12-30 06:07:54','Customer');
INSERT INTO `tickets_interacoes` VALUES (55,288922,'RE: Esclarecer uma dúvida','Boa tarde. O cupom de descontos é válido apenas para uma compra. Você pode me enviar o número do cupom para que possamos verificar se o mesmo já foi aplicado, por favor?','2018-01-23 04:28:16','Expert');
INSERT INTO `tickets_interacoes` VALUES (56,288923,'Como está meu pedido?','Bom Dia Efetuei uma compra , o prazo de entrega foram de 8 dias uteis , gostaria de saber se pode ocorrer da entrega ser efetuada antes e como esta o andamento da entrega do mesmo','2017-12-16 09:14:17','Customer');
INSERT INTO `tickets_interacoes` VALUES (57,288923,'RE: Como está meu pedido?','Olá, tudo bem com você? O seu pedido está com o status Entregue. A senhora poderia confirmar o recebimento do mesmo?','2018-01-25 01:26:16','Expert');
INSERT INTO `tickets_interacoes` VALUES (58,288924,'Acompanhamento','Gostaria de saber como esta o andamento do pedido, pois este foi reenviado conforme Email que recebi de vocês. Obrigado.','2017-12-20 11:24:29','Customer');
INSERT INTO `tickets_interacoes` VALUES (59,288924,'RE: Acompanhamento','Olá, seu pedido encontra-se em fase de transporte.','2018-02-07 05:23:53','Expert');
INSERT INTO `tickets_interacoes` VALUES (60,288924,'RE: Acompanhamento','OK. Mas quanto tempo vai demorar?','2018-02-08 09:55:52','Customer');

/*!40101 SET NAMES latin1 */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
