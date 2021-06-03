<?php
session_start();	
global $pdo;

try{
	$pdo = new PDO("mysql:dbname=enem2007;host=127.0.0.1", "root", "");
}catch(PDOException $err){
	echo "Ocorreu o seguinte erro: ".$err->getMessage();
}
?>