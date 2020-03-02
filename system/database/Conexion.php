<?php
abstract class Conexion {
    private $host="localhost";
    private $user="root";
    private $password="950162";
    private $dbname="blog";
    private $pdo = null;
    
    private function open_connection(){
        try{
            $dsn = "mysql:host=".$this->host.";dbname=".$this->dbname."";
            $this->pdo = new PDO($dsn, $this->user, $this->password);
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);            
        } catch (PDOException $ex) {
            echo $ex->getMessage();
        }
    }
    
    private function close_connection(){
        $this->pdo = null;
    }
    
    protected function ExecuteReader($consulta,$parametros=array()){
        $this->open_connection();
        $stmt = $this->pdo->prepare($consulta);
        if(count($parametros)>0){
            $pos = 0;
            foreach($parametros as $indice=>$value){
                $stmt->bindValue(++$pos,$value);
            }
            $stmt->execute();
            return $stmt->fetch(PDO::FETCH_OBJ);
        }
        $stmt->execute();
        $this->close_connection();
        return $stmt->fetchAll(PDO::FETCH_OBJ);
    }
    
    protected function ExecuteNonQuery($consulta,$parametros=array()){
        $this->open_connection();
        $stmt = $this->pdo->prepare($consulta);
        if(count($parametros)>0){
            $pos = 0;
            foreach($parametros as $indice=>$value){
                $stmt->bindValue(++$pos,$value);
            }
            return $stmt->execute();
        }
        $this->close_connection();
    }
    
}
