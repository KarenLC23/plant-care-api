<?php

namespace App\Models;

use PIPE\Clases\Modelo;

class Fertilizer extends Modelo 
{

    public $tabla = 'fertilizers';


    public $creadoEn = 'created_at';

    public $actualizadoEn = 'updated_at';

    public $perteneceAUno = [

        Care::class => [
            'nombre' => 'care'
        ]
    ];
    

}