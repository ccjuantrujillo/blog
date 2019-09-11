<?php
//Cargamos las clases que vamos a utilizar
include_once 'system/controller/ArticuloController.php';
include_once 'system/config.php';
$request = $_REQUEST;
if(isset($_REQUEST["ctrl"]) && $_REQUEST["ctrl"]!=""){
    $controller = $_REQUEST["ctrl"];
    $action = $_REQUEST["action"];
}
else{
    $controller = "ArticuloController";
    $action = "index";  
}

eval("\$objArticulo = new $controller();");
eval("\$objArticulo->$action(serialize(\$request));");
?>