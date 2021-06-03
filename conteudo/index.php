<!DOCTYPE html><html>
<head>
	<link href="https://fonts.googleapis.com/css?family=Teko&display=swap" rel="stylesheet"> 
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	<title>Videolas Para Estudar</title>
	<style type="text/css">
		.aulas{
			width: 700px;
			height: 190px;
		}

		.aulas img{
			width: 200px;
			height: 150px;
		}
	</style>
</head>
<body style="background-color: #dcdcdc">
	<div class="navbar navbar-expand-lg navbar-dark" style="background-color: #777777">
		<div class="navbar navbar-header">
			<p id="topo"><a href="/projetoKarol/index.php" style="color:white; text-decoration: none;">HOME</a></p>
		</div>
	</div>
	<div class="container" style="background-color: white"><center>
		<div style="width: 350px; overflow: hidden;" align="center">

		<?php
			$li = $_GET['res'];
			$pdo = new PDO("mysql:dbname=enem2007;host=127.0.0.1", "root", "");

			$sql = $pdo->prepare("SELECT COUNT(*) as c FROM aulas WHERE materia = '$li'");
			$sql->execute();
			$sql = $sql->fetch();
			$total = $sql['c'];
			$paginas = $total / 10;

			$p = 0;
			$pg = 1;
			if (isset($_GET['p']) && !empty($_GET['p'])) {
				$pg = addslashes($_GET['p']);
			}
			$p = ($pg - 1) * 10;

			$sql = $pdo->prepare("SELECT * FROM aulas WHERE materia = '$li' LIMIT $p, 10");
			$sql->execute();

			$retorno = $sql->fetchAll();
			foreach ($retorno as $exibi) {
				$link = $exibi['link'];
				$titulo = $exibi['nome_aula'];
				echo "<div class='aulas' align='center' style='max-width:300px'>";
					echo "<img src='../assets/imagens/icons/".strtolower($exibi['materia']).".svg'>";
					echo "<a href='aulas/sistema.php?li=".$link."&mat=".$exibi['materia']."'>"."<h4>".utf8_encode($titulo)."</h4>"."</a>";
				echo "</div>";
				echo "<br><br><br><br><br>";
			}
		?>
	</div></center>
	<center>
		<?php
			echo "<hr>";
			for ($q=0; $q < $paginas; $q++) { 
				echo "<a href='./index.php?p=".($q+1)."&res=".$li."' align='center' class='btn btn-info'>".($q+1)." </a>";
			}
		?>
	</center>
	</div>
</body>
</html>