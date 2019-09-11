<?php
include_once 'system/database/Conexion.php';
include_once 'system/entity/Articulo.php';

class ArticuloDAO extends Conexion{
    public function create(Articulo $objArticulo){
        $consulta = "insert into articulo (fecha,titulo,idcategoria,idusuario) values (?,?,?,?)";
        $parametros = array(
            $objArticulo->getFecha(),
            $objArticulo->getTitulo(),
            $objArticulo->getIdcategoria(),
            $objArticulo->getIdusuario()
        );
        return $this->ExecuteNonQuery($consulta, $parametros);
    }
    
    public function delete(){
        
    }
    
    public function update(Articulo $objArticulo){
        $consulta = "udpate articulo";
    }
    
    public function read(){
        $query = "select * from articulo";
        $stmt = $this->ExecuteReader($query);
        return $stmt;
    }
    
    public function findForId($id){
        $consulta = "select * from articulo where idarticulo=?";
        $parametros = array($id);        
        return $this->ExecuteReader($consulta, $parametros);
    }
}
