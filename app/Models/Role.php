<?php

namespace App\Models;

use PIPE\Clases\Modelo;

class Role  extends Modelo 
{

    public $tabla = 'roles';


    public $creadoEn = 'created_at';

    public $actualizadoEn = 'updated_at';

    // public $perteneceAMuchos = User::class;



}