<?php

class Articulo {
    private $titulo;
    private $resumen;
    private $contenido;
    private $fecha;
    private $imagen;
    private $idcategoria;
    private $idusuario;
    
    function getTitulo() {
        return $this->titulo;
    }

    function getResumen() {
        return $this->resumen;
    }

    function getContenido() {
        return $this->contenido;
    }

    function getFecha() {
        return $this->fecha;
    }

    function getImagen() {
        return $this->imagen;
    }

    function getIdcategoria() {
        return $this->idcategoria;
    }

    function getIdusuario() {
        return $this->idusuario;
    }

    function setTitulo($titulo) {
        $this->titulo = $titulo;
    }

    function setResumen($resumen) {
        $this->resumen = $resumen;
    }

    function setContenido($contenido) {
        $this->contenido = $contenido;
    }

    function setFecha($fecha) {
        $this->fecha = $fecha;
    }

    function setImagen($imagen) {
        $this->imagen = $imagen;
    }

    function setIdcategoria($idcategoria) {
        $this->idcategoria = $idcategoria;
    }

    function setIdusuario($idusuario) {
        $this->idusuario = $idusuario;
    }

}
