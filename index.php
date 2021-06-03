<?php require 'pages/header.php';?>
<?php 
error_reporting(0);
require 'classes/config.php';
	if (isset($_SESSION['cLogin']) && !empty($_SESSION['cLogin'])) {
		?>
		<style type="text/css">
			.one img{
				width: 165px;
				height: 250px;
			}
		</style>
		<body>
			<div class="container"><br>
				<div class="jumbotron"><h3 style="text-align: center">AULAS DISPONIVEIS</h3></div>
				<div class="row">
					<div class="col-sm-4 one" style="text-align: center"><img src="assets/imagens/icons/artes.svg"><a href="conteudo/index.php?res=Artes"> ARTES</a></div>
					<div class="col-sm-4 one" style="text-align: center"><img src="assets/imagens/icons/filosofia.svg"><a href="conteudo/index.php?res=Filosofia">FILOSOFIA</a></div>
					<div class="col-sm-4 one" style="text-align: center"><img src="assets/imagens/icons/fisica.svg"><a href="conteudo/index.php?res=Fisica"> FÍSICA</a></div>
					<div class="col-sm-4 one" style="text-align: center"><img src="assets/imagens/icons/quimica.svg"><a href="conteudo/index.php?res=Quimica"> QUIMICA</a></div>
					<div class="col-sm-4 one" style="text-align: center"><img src="assets/imagens/icons/historia.svg"><a href="conteudo/index.php?res=Historia"> HISTORIA</a></div>
					<div class="col-sm-4 one" style="text-align: center"><img src="assets/imagens/icons/biologia.svg"><a href="conteudo/index.php?res=Biologia"> BIOLOGIA</a></div>
					<div class="col-sm-4 one" style="text-align: center"><img src="assets/imagens/icons/matematica.svg"><a href="conteudo/index.php?res=Matematica"> MATEMATICA</a></div>
					<div class="col-sm-4 one" style="text-align: center"><img src="assets/imagens/icons/portugues.svg"><a href="conteudo/index.php?res=Portugues"> PORTUGUES</a></div>
					<div class="col-sm-4 one" style="text-align: center"><img src="assets/imagens/icons/geografia.svg"><a href="conteudo/index.php?res=Geografia"> GEOGRAFIA</a></div>
					<div class="col-sm-4 one" style="text-align: center"><img src="assets/imagens/icons/redacao.svg"><a href="conteudo/index.php?res=redacao"> REDAÇÃO</a></div>
					<div class="col-sm-4 one" style="text-align: center"><img src="assets/imagens/icons/sociologia.svg"><a href="conteudo/index.php?res=Sociologia"> SOCIOLOGIA</a></div>
					<div class="col-sm-4 one" style="text-align: center"><img src="assets/imagens/icons/literatura.svg"><a href="conteudo/index.php?res=Literatura"> LITERATURA</a></div>
				</div>
			</div>
			<div class="jumbotron" style="margin-bottom: 0">
	 			<p align="center">Site desenvolvido com Intuito de Obtenção de Conhecimento nas Materias de Desenvolvimento Web</p>
	 			<p align="center"><code>Developer:</code><kbd>Gabriel Felipe</kbd></p>
	 		</div>
		</body>
		<?php
	}else{
	 	require 'pages/slideshow.php';
	 	?>
	 	<style type="text/css">
	 		body{
	 			margin-bottom: 0;
	 		}
	 		.id-one{
	 			width: 1050px;
	 			padding: 10px 0 30px 0;
	 			margin: 0 auto;
	 		}

	 		.id-one div{
	 			display: inline-block;
	 			margin-right: 60px;
	 			padding-right: 20px;
	 			justify-content: center;
	 		}

	 		.id-one img{
	 			width: 165px;
				height: 250px;
	 		}

	 		.id-two{
	 			width: 100%;
	 			height: 400px;
	 			background-color: #57afb1;
	 		}

	 		.ja{
	 			margin-top: 10%;  
	 		}

	 		.jaz{
	 			margin-top: 7%;
	 			margin-left: 4%;  
	 		}

	 		.id-two div div img{
	 			width: 70px; 
	 		}

	 		.id-two div div iframe{
	 			width: 400px; 
	 			height: 300px;
	 			border: 0px;
	 		}

	 		.junte{
	 			margin-top: 20px;
	 		}

	 		.sub-junte div{
	 			display: inline-block;
	 		}

	 		.sub-junte div img{
	 			width: 170px;
	 		}

	 		.conhece{
	 			margin-top: 20px;
	 			background-color: #57afb1;
	 			width: 100%;
	 		}

	 		.cc img{
	 			width: 170px;
	 			height: 200px;
	 		}

	 		.ss img{
	 			width: 180px;
	 		}

	 		.ss{
	 			max-width: 350px;
	 		}
	 	</style>
	 	<body>
	 		<div class="container">
	 			<hr>
	 			<div class="id-one">
	 				<h2 style="text-align: center;">RESULTADOS E APROVAÇÕES</h2>
	 				<p style="text-align: center;">Junte-se a nós e garanta ja a sua vaga nas melhores instituições de ensino do País</p>
	 				<center>
		 				<div class="col-md-3"><img src="assets/imagens/icons/universidade.svg"><p>Garanta ja a sua carreira academica</p></div>
		 				<div class="col-md-3"><img src="assets/imagens/icons/brasao_brasil.svg"><p>Preparesse conosco para as universidades federais de todo País</p></div>	
		 				<div class="col-md-3"><img src="assets/imagens/icons/internet.svg" style="width: 190px;"><p>Aproveite um ambiente 100% online</p></div>
	 				</center>
	 			</div>
	 			<div class="id-two">
	 				<div class="row">
	 					<div class="col-sm-7 jaz"><iframe src="https://www.youtube.com/embed/449Xpxy1DqM"></iframe></div>
	 					<div class="col-sm-4 ja"><i><h3>Veja as vantagens que o ensino online pode trazer para você</h3></i><img src="assets/imagens/icons/seta.svg"></div>
	 				</div>
	 			</div>
	 			<div class="junte">
	 				<center><i><h2>SEJA APROVADO VOCÊ TAMBÉM!</h2></i></center>
	 				<center><i><p>Uma equipe de profissionais capacitados para trazer o melhor conteudo:</p></i></center><br><br><br>
		 				<div class="row sub-junte">
		 					<center>
			 					<div class="col-md-3"><img src="assets/imagens/icons/atividade.svg"><p>Exercicios ao final de todas as aulas para reforçar o conteudo aprendido</p></div>
			 					<div class="col-md-3"><img src="assets/imagens/icons/duvidas.svg"><p>Milharees de duvidas respondidas</p></div>
			 					<div class="col-md-3"><img src="assets/imagens/icons/economia.svg"><p>Tudo isso e muito mais totalmente gratis</p></div>
		 					</center>
		 				</div>
		 			</div>
		 			<div class="conhece"><br>
		 				<h2 style="text-align: center">JÁ FOI DADA A LARGADA!</h2>
		 				<p style="text-align: center">Aulas 100% online. Estude com os melhores materias disponiveis na internet.</p>
		 					<div class="row">
		 						<div class="col-sm-3 cc"><img src="assets/imagens/icons/biologia.svg"><pre>       BIOLOGIA</pre></div>
		 						<div class="col-sm-3 cc"><img src="assets/imagens/icons/fisica.svg"><pre>        FISICA</pre></div>
		 						<div class="col-sm-3 cc"><img src="assets/imagens/icons/geografia.svg"><pre>       GEOGRAFIA</pre></div>
		 						<div class="col-sm-3 cc"><img src="assets/imagens/icons/historia.svg"><pre> HISTORIA & FILOSOFIA</pre></div>
		 						<div class="col-sm-3 cc"><img src="assets/imagens/icons/lingua.svg"><pre>   INGLES & ESPANHOL</pre></div>
		 						<div class="col-sm-3 cc"><img src="assets/imagens/icons/matematica.svg"><pre>      MATEMATICA</pre></div>
		 						<div class="col-sm-3 cc"><img src="assets/imagens/icons/portugues.svg"><pre>       PORTUGUES</pre></div>
		 						<div class="col-sm-3 cc"><img src="assets/imagens/icons/quimica.svg"><pre>       QUIMICA</pre></div>
		 					</div>
		 			</div>
		 			<div class="sobre"><br><br>
		 				<H2 style="text-align: center">SOBRE NÓS</H2><br><br><br>
		 				<div class="row">
		 					<div class="col-sm-4 ss">
		 						<h5 align="center">QUEM SOMOS</h5>
		 						<img src="assets/imagens/icons/programing.svg" style="margin-left: 25%">
		 						<p align="center"><i>Um time de estudantes programadores, que busca divulgar o conhecimento de forma gratuita pela internet.</i></p>
		 					</div>
		 					<div class="col-sm-4 ss">
		 						<h5 style="text-align: center;">COMO FUNCIONA</h5>
		 						<img src="assets/imagens/icons/config.svg" style="margin-left: 29%;">
		 						<p style="text-align: center"><i>Nosso site funciona parecido como uma plataforma EAD e com aulas/videos e exercicios no final, varias questoes do enem para você conferir.</i></p>
		 					</div>
		 					<div class="col-sm-4 ss">
		 						<h5 align="center">CONTATO</h5>
		 						<img src="assets/imagens/icons/contato.svg" style="margin-left: 31%;">
		 						<p align="center"><i>Para mais informaçoes entre em contato pelo email felipe.gabriel@acad.ifma.edu.br</i></p>
		 					</div>
		 				</div>
		 			</div>
	 		</div>
	 		<div class="jumbotron" style="margin-bottom: 0">
	 			<p align="center">Site desenvolvido com Intuito de Obtenção de Conhecimento nas Materias de Desenvolvimento Web</p>
	 			<p align="center"><code>Developer:</code><kbd>Gabriel Felipe</kbd></p>
	 		</div>
	 	</body>
	 	<?php 
	}
	require 'pages/footer.php';
?>
