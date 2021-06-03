<?php
require 'classes/config.php';
$id = $_POST['igr'];

		global $pdo;
		$sql = $pdo->prepare("SELECT * FROM questoes WHERE COD_ASSUNTO = $id");
		$sql->execute();
			$tudo = $sql->fetchAll();
			foreach ($tudo as $returnn) {
				$questao = utf8_encode($returnn['QUESTAO_DESCRICAO']);
				$cod = $returnn['COD_QUESTAO'];
				$num = $returnn['NUM_QUESTAO'];
				echo "<tr>";
					echo "<td>".$questao."</td>";
					echo "<td>".$num."</td>";
					echo "<td>".$cod."</td>";
				echo "</tr>";
			}

?>