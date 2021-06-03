<?php require 'classes/config.php';?>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<?php require 'pages/links.php'?>
	<title>REDAÇÃO NOTA 100</title>
</head>
<body>
	<div class="navbar navbar-inverse" style="background-color: #777777">
		<div class="container-fluid">
			<div class="navbar navbar-header">
				<p id="topo"><a href="index.php" style="color:white; text-decoration: none;">HOME</a></p>
			</div>
		    <ul class="navbar navbar-right" id="menus">
		    	<?php if(isset($_SESSION['cLogin']) && !empty($_SESSION['cLogin'])): ?>
		    	<div class="dropdown">
		    		<button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Ferramentas<span class="caret"></span></button>
		    		<ul class="dropdown-menu">
		    			<li><a href="cadastrarProva.php" style="color: blue">Cadastrar Prova</a></li>
		    			<li><a href="cadastrarAssunto.php" style="color: blue">Cadastrar Assunto</a></li>
		    			<li><a href="busca.php" style="color: blue">Buscar Questões</a></li>
		    		</ul>
		    	</div>
				<li class="navbar nav-item"><a href="sair.php">Sair</a></li>
				<?php else:  ?>
				<li class="navbar nav-item"><a href="cadastro.php">Cadastre-se</a></li>
				<li class="navbar nav-item"><a href="login.php">Entrar</a></li>
			    <?php endif; ?>
			</ul>
		</div>
	</div>


