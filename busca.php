<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<style type="text/css">
	#inputState{
		width: 500px;
		display: inline;
	}

	#desc{
		width: 500px;
	}

	#resultAll{
		display: none;
	}

	#rrt{
		width: 500px;
	}

	#butao{
		display: none;
	}

	.resposta{
		display: none;
	}
</style>

<?php require 'pages/header.php'?>
	<div class="container">
		<center>
			<h1>BUSCAR PROVA</h1>
			<form method="POST">
				<div class="form-group">
					<label>Ano de Prova</label><br>
					<input type="text" name="ano" placeholder="Ex: 1999" autocomplete="off">
			    </div>
			     <div class="form-group">
			    	<label>Descrição:</label><br>
			    	<input type="text" name="descricao" autocomplete="off" id="desc" class="form-control">
			    </div>
			    <div class="form-group">
					<label>Desciplina</label><br>
					 <select id="inputState" class="form-control" name="disciplina">
				        <?php
							require'classes/usuarios.class.php';
							$u = new Usuarios();
							$u->returnDisciplina();
						?>   
                     </select>
			    </div> 
			    <div class="form-group" id="resultAll">
			    	<label>Assunto</label>
			    	<select class="form-control" id="rrt"></select>
			    </div>
			    <button class="btn btn-success" id="butao">buscar</button>
			</form>
			<div class="resposta">
				<table class="table">
	    			<thead>
			    		<tr>
				    		<th>Descrição da Questão</th>
				    		<th>Numero da Questão</th>
				    		<th>Codigo da Questão</th>
			    		</tr>
	    		</thead>
		    	<tbody>

		    	</tbody>
	    </table>
			</div>
	    </center>
	</div>


	<script type="text/javascript">
		$(function(){
			$("form #inputState").on("change", function(){
				var idValue = $("#inputState").val();
				$.ajax({
					url: "api.php",
					type: "POST",
					data: {id: idValue},
					success:function(data){
						$("#resultAll").css({'display': 'block'});
						$("#butao").css({'display': 'block'});
						$("#resultAll select").html(data);
					}
				})
			});

			$("form").on("submit", function(e){
				e.preventDefault();
				var idAll = $("#rrt option:selected").val();
				$.ajax({
					url: "apiReturn.php",
					type: "POST",
					data: {igr: idAll},
					success:function(res){
						$(".resposta").css({'display': 'block'})
						$(".resposta tbody").html(res);
					}
				})
			})

			$("#desc").keydown(function(){
				var txt = $(this).val();
				$.ajax({
					url: "apiSearch.php",
					type:"POST",
					data:{search: txt},
					success: function(resolver){
						$(".resposta tbody").html(resolver);
						$("#butao").css({'display': 'none'})
					}
				})
			})
		});
	</script>

