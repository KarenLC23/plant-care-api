<?php

namespace App\Models;

use PIPE\Clases\Modelo;

class Plague extends Modelo 
{

    public $tabla = 'plagues';


    public $creadoEn = 'created_at';

    public $actualizadoEn = 'updated_at';

    //Relacion con 
    public $tieneMuchos = Symptom::class;

}