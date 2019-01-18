<?php

require 'config.php';

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

mysqli_set_charset($conn,'UTF8');

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = 0';

$result2 = $conn->query($sql2);

//----------------------------------------------------------
 
$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade - 1
WHERE  (g.assunto not like "%reclam%")';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade - 1
WHERE  (g.assunto like "%elogio%")';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade - 1
WHERE  (g.assunto like "%muito satisfeito%")';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade - 1
WHERE (select count(*) from tickets_interacoes WHERE ticket = b.ticketid ) <= 2';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade + 1
WHERE  (g.assunto like "%reclama%")';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade + 1
WHERE (g.mensagem like "%cabíveis%")';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade + 1
WHERE (g.mensagem like "%quanto tempo%")';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade + 1
WHERE (g.mensagem like "%vai demorar%")';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade + 1
WHERE (g.mensagem like "%não receb%")';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade + 1
WHERE (g.mensagem like "%que pagar%")';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade + 1
WHERE (g.mensagem like "%tentativa de contato%")';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade + 1
WHERE (g.mensagem like "%meu caso%")';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade + 1
WHERE (g.mensagem like "%varias vezes%")';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade + 1
WHERE (g.mensagem like "%cancel%")';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade + 1
WHERE (g.mensagem like "%nao chegou%" or g.mensagem like "%não chegou%")';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade + 1
WHERE (g.mensagem like "%funciona%" or g.mensagem like "%fuciona%")';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade + 1
WHERE (g.mensagem like "%procon%")';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade + 1
WHERE (g.mensagem like "%reclameaqui%" or g.mensagem like "%reclame aqui%")';

$result2 = $conn->query($sql2);

//----------------------------------------------------------

$sql2 = 'UPDATE tickets AS b
INNER JOIN tickets_interacoes AS g ON b.ticketid = g.ticket
SET b.prioridade = b.prioridade + 1
WHERE (datediff(b.dateupdate,b.datecreate) > 30)';

$result2 = $conn->query($sql2);

//----------------------------------------------------------


$conn->close();
?>
<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta http-equiv="refresh" content="1; url=index.php" />

    <title>Processar</title>

</head>

<body>
<h1>PROCESSANDO, AGUARDE !</h1>
</body>
</html>

	