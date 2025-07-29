<?php

namespace App\Models;

use PIPE\Clases\Modelo;

class Symptom extends Modelo 
{

    public $tabla = 'symptoms';


    public $creadoEn = 'created_at';

    public $actualizadoEn = 'updated_at';

    
    public $perteneceAUno = [
        Plague::class => [
            'nombre' => 'plague'
        ],
        
        Treatment::class => [
            'nombre' => 'treatment'
        ]
    ];

    public $perteneceAMuchos = Plant::class;

}