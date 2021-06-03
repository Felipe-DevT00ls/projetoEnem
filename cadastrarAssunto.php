<?php require 'pages/header.php'?>
	<div class="container">
		<form method="POST"> 
		<center><h1>CADASTRAR ASSUNTO</h1></center>
 		<div class="form-group">
 			<label for="nome">Descrição:</label>
 			<input type="text" name="descricao" class="form-control">
 		</div>
 		<div class="form-group">
 			<label for="nome">Assunto:</label>
 			 <select id="inputState" class="form-control ice-cream" name="assunto">
				<?php
					require'classes/config.php';
					require'classes/usuarios.class.php';
						$u = new Usuarios();
						$u->returnDisciplina();
				?>        
    		</select>
 		</div>
 		<center><input type="submit" value="Cadastrar" class="btn btn-info center center"></center>
 	</form>
	</div>

	<script type="text/javascript">
		const selectElement = document.querySelector('.ice-cream');
			 selectElement.addEventListener('change', (event) => {	
				 var valor = event.target.value;
			 }
		);
	</script>


<?php require 'pages/footer.php'?> 