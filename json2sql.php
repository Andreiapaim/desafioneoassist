<?php

// Transferindo dados para uma base mysql

$servername = "baratheon0001.hospedagemdesites.ws";
$username = "brazi_getupuser";
$password = "senha123";
$dbname = "brazilcats_getupsites";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

mysqli_set_charset($conn,'UTF8');

// Get the contents of the JSON file 
$strJsonFileContents = file_get_contents("tickets.json");
// Convert to array 
$array = json_decode($strJsonFileContents, true);
//var_dump($array); // print array

//$temperatureMin = $array[0]['TicketID'];
//echo ($temperatureMin);

$i = 0;
foreach ( $array as $valor){
    $campo1 = $valor["TicketID"];
    $campo2 = $valor["CategoryID"];
    $campo3 = $valor["CustomerID"];
    $campo4 = $valor["CustomerName"];
    $campo5 = $valor["CustomerEmail"];
    $campo6 = $valor["DateCreate"];
    $campo7 = $valor["DateUpdate"];

    //echo "<br>" . $campo1;
	$sql = "INSERT INTO Tickets (TicketID, CategoryID, CustomerID, CustomerName, CustomerEmail, DateCreate, DateUpdate)
	VALUES ('$campo1','$campo2','$campo3','$campo4','$campo5','$campo6','$campo7')";

	if (mysqli_query($conn, $sql)) {
		echo "New record created successfully";
	} else {
		echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}

	foreach ( $array[$i]['Interactions'] as $valor2){
		//$steamid2 = $valor2["Subject"];
		//echo "<br>" . $steamid2;
		$campo8 = $valor2["Subject"];
		$campo9 = $valor2["Message"];
		$str = str_replace("'",'"', $campo9);
		
		$campo10 = $valor2["DateCreate"];
		$campo11 = $valor2["Sender"];
		
		$sql2 = "INSERT INTO Tickets_Interacoes (Ticket, Assunto, Mensagem, Data, Origem)
		VALUES ('$campo1','$campo8','$str','$campo10','$campo11')";

		if (mysqli_query($conn, $sql2)) {
			echo "New record created successfully";
		} else {
			echo "Error: " . $sql2 . "<br>" . mysqli_error($conn);
		}

	}

	$i++;

}

mysqli_close($conn);



?>