<?php
dl('test4.'.PHP_SHLIB_SUFFIX);

class Usuario {
    var $id;
    var $nombre;
    var $mail;
    var $hash;    
    
    function Usuario($id = null, $nombre = null, $mail = null) {
        $this->id = $id;
        $this->nombre = $nombre;
        $this->mail = $mail;
    }
    
    function printUsuario() {
        echo "Usuario ".$this->nombre." (".$this->id.") mail ".$this->mail." hash ".$this->hash."\n";
    }
}

$user = new Usuario(12345, "Pepito", "pepito@grillo.com");
calcularHashUsuario($user);
$user->printUsuario();
?>