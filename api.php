<?php
require 'classes/config.php';

$id = $_POST['id'];
		global $pdo;
		$sql = $pdo->prepare("SELECT * FROM assunto WHERE COD_DISCIPLINA = $id");
		$sql->execute();

		if($sql->rowCount() > 0){
			$exibe = $sql->fetchAll();
			foreach ($exibe as $recebe) {
				$id_assunto = $recebe['COD_ASSUNTO'];
				$desc_assunto = utf8_encode($recebe['DESCRICAO_ASSUNTO']);
				echo "<option value=".$id_assunto.">";
				echo $desc_assunto;
				echo "</option>";
			}
		}


