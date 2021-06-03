<?php

$url = "https://cursoenemgratuito.com.br/disciplina/sociologia/";
$dados = file_get_contents($url);

$var1 = explode('<ul>', $dados);
print_r($var1[1]);
?>