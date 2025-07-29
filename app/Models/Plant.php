<?php

namespace App\Models;

use PIPE\Clases\Modelo;

class Plant extends Modelo 
{

    public $tabla = 'plants';


    public $creadoEn = 'created_at';

    public $actualizadoEn = 'updated_at';

    //Relacion con Ciudad
    public $perteneceAUno = [
        Origin::class => [
            'nombre' => 'origin'
        ],
        Gender::class => [
            'nombre' => 'gender'
        ],
        Care::class => [
            'nombre' => 'care'
        ]
        
    ];
    public $perteneceAMuchos = Symptom::class;

}