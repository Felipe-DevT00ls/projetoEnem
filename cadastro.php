<?php require 'pages/header.php'?>
 <div class="container">

 	<?php require'classes/usuarios.class.php';
 		  $u = new Usuarios();
 		  if(isset($_POST['nome']) && !empty($_POST['nome'])){
 		  	$nome  =  addslashes($_POST['nome']);
 		  	$email =  $_POST['email'];
 		  	$senha =  addslashes($_POST['pass']);

 		  	if(!empty($nome) && !empty($email) && !empty($senha)){
 		  		if($u->cadastrar($nome, $email, $senha)){
 	?>
 		  	 	<div class="alert alert-success">
 		  	 		<strong>Parabens</strong>Usuario Cadastrado com sucesso. <a href="login.php" class="alert-link">Faça o login Agora!</a>
 		  	 	</div>
    <?php
 		  		}else{
    ?>
 		  	 	<div class="alert alert-warning">
 		  	 		Usuario já Possui Cadastro no Site!!!<a href="login.php" class="alert-link">Faça o login Agora!</a>
 		  	 	</div>
    <?php
 		  		}
 		  	 }else{
    ?>
 		  	 	<div class="alert alert-warning">
 		  	 		Preencha todos os campos!
 		  	 	</div>
    <?php
 		  	 }
 		  }
 	?>

 	<CENTER><h1>CADASTRE-SE</h1></CENTER>
 	<form method="POST"> 
 		<div class="form-group">
 			<label for="nome">Nome:</label>
 			<input type="text" name="nome" class="form-control">
 		</div>
 		<div class="form-group">
 			<label for="email">Email:</label>
 			<input type="email" name="email" class="form-control">
 		</div>
 		<div class="form-group">
 			<label for="senha">Senha:</label>
 			<input type="password" name="pass" class="form-control">
 		</div>
 		<center><input type="submit" value="Enviar" class="btn btn-info center center"></center>
 	</form>
 </div>
<?php require 'pages/footer.php'?>