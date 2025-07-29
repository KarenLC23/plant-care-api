<?php

namespace App\Models;

use PIPE\Clases\Modelo;

class Care extends Modelo 
{

    public $tabla = 'cares';


    public $creadoEn = 'created_at';

    public $actualizadoEn = 'updated_at';

    //Relacion con Ciudad
    public $perteneceAUno = [
        Fertilizer::class => [
            'nombre' => 'fertilizer'
        ],
    ];
 
}