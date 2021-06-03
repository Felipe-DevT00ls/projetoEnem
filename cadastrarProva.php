<?php require 'pages/header.php'?>
	<div class="container">
		<?php require'classes/usuarios.class.php';
			$u = new Usuarios();
			if(isset($_POST['ano']) AND !empty($_POST['ano'])){
				$ano = $_POST['ano'];
				$cor = $_POST['cor'];
				$qnt = $_POST['quantidade'];

				if(isset($_POST['cor']) AND !empty($_POST['cor'])){
					if($u->cadastraProva($ano,$cor,$qnt)){

?>
					<div class="alert alert-success">
						<strong>Parabens</strong>Prova Cadastrada com sucesso.
					</div>
		<?php
					}else{
		?>
					<div class="alert alert-warning">
						<strong>ERRO!</strong>Sistema Indisponivel no Momento.
					</div>
        <?php
					}
				}
			}
		?>

	<form method="POST"> 
		<center><h1>CADASTRAR PROVA</h1></center>
 		<div class="form-group">
 			<label for="nome">Ano:</label>
 			<input type="text" name="ano" class="form-control">
 		</div>
 		<div class="form-group">
 			<label for="email">Cor:</label>
 			<input type="text" name="cor" class="form-control">
 		</div>
 		<div class="form-group">
 			<label for="senha">Quantidade:</label>
 			<input type="text" name="quantidade" class="form-control">
 		</div>
 		<center><input type="submit" value="Enviar" class="btn btn-info center center"></center>
 	</form>
	</div>
<?php require 'pages/footer.php'?>