<?php

require 'config.php';

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

mysqli_set_charset($conn,'UTF8');

$ord = $_POST['ordenacao'];
$pri = $_POST['pri'];
$inicial = $_POST['datainicial'];
$final  = $_POST['datafinal'];

if (!empty($_POST) ) {

	$sql = "SELECT * FROM Tickets where 1=1 ";

	if (!empty($pri)) {
	$sql .= " and prioridade $pri ";
	}

	if (!empty($inicial) and !empty($final)) {
	$sql .= " and (datecreate BETWEEN '$inicial' AND '$final') ";
	}
	
	$sql .= "order by $ord";

	$result = $conn->query($sql);
}
else
{
// sem prioridade
$sql = "SELECT * FROM Tickets order by ticketid";
$result = $conn->query($sql);
}

?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Desafio NeoAssist</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">Desafio NeoAssist</a>
            </div>

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
						<form action="index.php" method="post">
						<h5>Ordenação</h5>
								<select id="ordenacao" name="ordenacao" class="form-control">
								  <option value="prioridade desc">Prioridade Alta</option>
								  <option value="prioridade asc">Prioridade Normal</option>
								  <option value="datecreate">Data Criação</option>
								  <option value="dateupdate">Data Update</option>
								</select>

						<h5>Pesquisar por prioridade</h5>
								<select id="pri" name="pri" class="form-control">
								  <option value="">Todas</option>
								  <option value=">0">Alta</option>
								  <option value="<=0">Normal</option>
								</select>

						<h5>Filtrar por Data de Criação</h5>
						<div class="form-group">
								<input type='date' id='datainicial' name='datainicial' placeholder="Data inicial" class="form-control" />
						</div>
						<div class="form-group">
								<input type='date' id='datafinal' name='datafinal' placeholder="Data final" class="form-control" />
						</div>			

						<button type="submit" class="btn btn-primary" style="width:100%">Consultar Tickets</button> 
                        </form>      
						</li>
                        <li>
                            <a href="#"><div style="height: 1px;margin: 9px 0;overflow: hidden;background-color: #e5e5e5;"></div></a>
                        </li>
                        <li>
                            <a href="processar.php"><i class="fa fa-wrench fa-fw"></i>Processar Tickets</a>
                        </li>

					</ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tickets</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Lista de Tickets
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
						
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Ticket</th>
                                        <th>Category</th>
                                        <th>Customer</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Date Create</th>
                                        <th>Date Update</th>
										<th>P</th>
									</tr>
                                </thead>
                                <tbody>
  
								<?php  

								if ($result->num_rows > 0) {
									// output data of each row
									while($row = $result->fetch_assoc()) {

									echo ("<tr>");
									echo ("<td><a class='btn btn-primary' data-id='". $row["TicketID"]. "' href='#dataTables-interacoes'>" . $row["TicketID"]. "</a></td>");
									echo ("<td>" . $row["CategoryID"]. "</td>");
									echo ("<td>" . $row["CustomerID"]. "</td>");
 									echo ("<td>" . $row["CustomerName"]. "</td>");
									echo ("<td>" . $row["CustomerEmail"]. "</td>");
									echo ("<td>" . $row["DateCreate"]. "</td>");
									echo ("<td>" . $row["DateUpdate"]. "</td>");
									echo ("<td>" . $row["Prioridade"]. "</td>");
									echo ("</tr>");
									
										}
								} else {
									echo "0 results";
								}

								?>
									
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Interações
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table" id="dataTables-interacoes">

                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-6">
                    
                </div>
                <!-- /.col-lg-6 -->
                <div class="col-lg-6">
                
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-6">
                    
                </div>
                <!-- /.col-lg-6 -->
                <div class="col-lg-6">
                    
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
		responsive: true,
		order: [[0, "asc"]],
		bSort: false,

			 "lengthMenu": [[3, 5, 10, 25, 50, -1], [3, 5, 10, 25, 50, "All"]],
		language: {
            "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Portuguese.json"
            }	 
        });

		//$('#dataTables-interacoes').dataTable( {
		//  "processing": true,
        //  "serverSide": true,
        //  "ajax": "interacoes.php"
		//} );		
		
		$('#dataTables-example a').click(function()
         { 
		 var id = $(this).data("id");
			$.ajax({
			  url: 'interacoes.php',
			  method: 'get',
			  data: {
				id: id
			  },
			  success: function(response)
			  {
				  $('#dataTables-interacoes').html(response).slideDown();
				// Do what ever you want here
			  }
			});		
         });

		//var matricula_recuperada = table.cell('.selected', 0).data();

		//var table = $('#dataTables-example').DataTable();
			//table.page( 2 ).draw( false );
		$('#ordenacaoid').on('change', function() {
		  alert( this.value );
		});

		$('#datetimepicker1').datepicker();
		 
		$('#datetimepicker1').datepicker({
                    format: 'LT'
                });

		$('#datetimepicker2').datepicker({
                    format: 'LT'
                });
				
		});
    </script>

</body>

</html>
