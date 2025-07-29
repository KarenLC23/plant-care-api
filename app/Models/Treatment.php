<?php

namespace App\Models;

use PIPE\Clases\Modelo;

class Treatment extends Modelo 
{

    public $tabla = 'treatments';


    public $creadoEn = 'created_at';

    public $actualizadoEn = 'updated_at';

        //Relacion con Ciudad
       /* public $tieneMuchos = [
            Symptom::class => [
                'nombre' => 'symptom'
            ]
            
        ];*/
        public $tieneMuchos = Symptom::class;


}