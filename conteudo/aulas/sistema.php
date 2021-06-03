<?php
		$url = $_GET['li'];
		$dados= file_get_contents($url);

		$var1= explode('<div class="col-md-8 col-sm-12 p-md-0">', $dados);
		/*AQUI PEGA O TITULO*/
		$var2 = explode('</header>', $var1[1]);
		 $titulo = $var2[0];

		/*AQUI PEGA O SUB-TITULO*/
		$var3= explode('</p>', $var1[1]);
		 $subtitulo = $var3[1];
		 
		/*AQUI PEGA O CORPO(CONTEUDO)*/
		$var4 = explode('<div id="banner_content_group">', $var1[1]);
		$conteudo = $var4[1];
?>

<!DOCTYPE html>
<html>
<head>
	<link href="https://fonts.googleapis.com/css?family=Teko&display=swap" rel="stylesheet"> 
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	<style type="text/css">
		.titulo{
			width: 100%;
			background-color: #1ec0ff;
		}
	</style>
</head>
<body>
	<div class="navbar navbar-expand-lg navbar-dark" style="background-color: #777777">
		<div class="navbar navbar-header">
			<p id="topo"><a href="/projetoKarol/index.php" style="color:white; text-decoration: none;">HOME</a></p>
		</div>
	</div>
	<br><br>
	<div class="container">
		<div class="titulo" align="center"><?php echo $titulo?></div>
		<div class="subtitulo"><?php echo $subtitulo?></div>
		<div class="conteudo"><?php echo $conteudo?></div>
	</div>
</body>
</html>