<?php

class Usuarios{
	public function cadastrar($nome, $email, $senha){
		global $pdo;
		$sql = $pdo->prepare("SELECT id FROM usuario WHERE email = :email");
		$sql->bindValue(':email', $email);
		$sql->execute();

		if($sql->rowCount() == 0){
			$sql = $pdo->prepare("INSERT INTO usuario (nome, email, senha) VALUES (:nome,:email,:senha)");
			$sql->bindValue(":nome", $nome);
			$sql->bindValue(":email", $email);
			$sql->bindValue(":senha", $senha);
			$sql->execute();

			return true;
		}else{
			return false;
		}
	}

	public function login($email, $senha){
		global $pdo;
		$sql = $pdo->prepare("SELECT * FROM usuario WHERE email = :email AND senha = :senha");
		$sql->bindValue(":email", $email);
		$sql->bindValue(":senha", $senha);
		$sql->execute();

		if($sql->rowCount() > 0){
			$dado = $sql->fetch();
			$_SESSION['cLogin'] = $dado['id'];

			return true;
		}else{
			return false;
		}
	}

	public function cdProva($ano, $cor, $quantidade){
		global $pdo;
		$sql = $pdo->prepare("SELECT id FROM prova WHERE ANO_PROVA = :ano AND COR = :cor");
		$sql->bindValue(":ano", $ano);
		$sql->bindValue(":cor", $cor);
		$sql->execute();

		if($sql->rowCount() == 0){
			$sql = $pdo->prepare("INSERT INTO prova (ANO_PROVA, COR, QUANTIDADE_QUESTOES) VALUES (:ano, :cor, :quantidade)");
			$sql->bindValue(":ano", $ano);
			$sql->bindValue(":cor", $cor);
			$sql->bindValue(":quantidade", $quantidade);
			$sql->execute();

			return true;
		}else{
			return false;
		}
	}

	public function cdAssunto($descricao, $id){
		global $pdo;
		$sql = $pdo->prepare("SELECT * FROM assunto WHERE DESCRICAO_ASSUNTO = :descricao");
		$sql->bindValue(":descricao", $descricao);
		$sql->execute();
			if($sql->rowCount() == 0){
				$sql = $pdo->prepare("INSERT INTO assunto (DESCRICAO_ASSUNTO, COD_DISCIPLINA) VALUES (:descricao, :codigo)");
				$sql->bindValue(":descricao",$descricao);
				$sql->bindValue(":codigo", $id);
				$sql->execute();

				return true;
			}else{
				return false;
			}
	}

	public function returnDisciplina(){
		global $pdo;
		$sql = $pdo->prepare("SELECT * FROM disciplina");
		$sql->execute();

		if($sql->rowCount() > 0){
		    $dados = $sql->fetchAll();
			foreach($dados as $retorna){
				$id = $retorna['COD_DISCIPLINA'];
				$desc = utf8_encode($retorna['DESCRICAO_DISCIPLINA']);
				echo "<option value=".$id.">";
				echo $desc;
				echo "</option>";
			}
		}
	}

	

}
?>