<?php

require 'config.php';

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

mysqli_set_charset($conn,'UTF8');
 
$sql2 = "SELECT * FROM Tickets_Interacoes where ticket = " . $_GET['id'];
$result2 = $conn->query($sql2);

if ($result2->num_rows > 0) {

	echo ("	<thead>");
	echo ("		<tr>");
	echo ("			<th>#</th>");
	echo ("			<th>Assunto</th>");
	echo ("			<th>Mensagem</th>");
	echo ("			<th>Data</th>");
	echo ("			<th>Origem</th>");
	echo ("		</tr>");
	echo ("	</thead>");
	echo ("	<tbody>");
									
	while($row = $result2->fetch_assoc()) {
	
	echo ("<tr>");
	echo ("<td>" . $row["Codigo"]. "</td>");
	echo ("<td>" . $row["Assunto"]. "</td>");
	echo ("<td>" . $row["Mensagem"]. "</td>");
	echo ("<td>" . $row["Data"]. "</td>");
	echo ("<td>" . $row["Origem"]. "</td>");
	echo ("</tr>");
		}
		
	echo ("</tbody>");
	
} else {
	echo "0 results";
}
$conn->close();
?>	