<?php
include_once 'system/model/ArticuloDAO.php';
include_once 'system/entity/Articulo.php';

class ArticuloController {

    public function index(){
        $objArticulo = new ArticuloDAO();
        $resultado = $objArticulo->read();
        include_once 'system/view/administrador/Articulo/index.php';
    }
    
    public function add(){
        include_once 'system/view/administrador/Articulo/create.php';
    }
    
    public function create($request){
        $request = unserialize($request);
        $objArticulo = new Articulo();
        $objArticulo->setFecha($request["fecha"]);
        $objArticulo->setTitulo($request["titulo"]);
        $objArticulo->setIdcategoria($request["categoria"]);
        $objArticulo->setIdusuario($request["usuario"]);
        $objArticuloDAO = new ArticuloDAO();
        $resultado = $objArticuloDAO->create($objArticulo);
        $this->index();
    }
    
    public function edit($request){
        $request = unserialize($request);
        $id = $request["id"];
        $objArticuloDAO = new ArticuloDAO();
        $resultado = $objArticuloDAO->findForId($id);
        include_once 'system/view/administrador/Articulo/edit.php';
    }
    
    public function update($request){
		echo "hol";
        $request = unserialize($request);
        
    }
    
    public function delete(){
        
    }
}
