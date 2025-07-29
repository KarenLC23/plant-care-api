<?php

namespace App\Models;

use PIPE\Clases\Modelo;

class User extends Modelo 
{

    public $tabla = 'users';


    public $creadoEn = 'created_at';

    public $actualizadoEn = 'updated_at';
    
    public $token = '';

    //Relacion con Ciudad
    public $perteneceAUno = [
        City::class => [
            'nombre' => 'city'
        ]
    ];

    public $perteneceAMuchos = Plant::class;










    
    // public $perteneceAMuchos = [
    //     Role::class => [
    //         'tablaUnion' => 'role_user',
    //         'llaveForaneaLocal' => 'user_id',
    //         'llaveForaneaUnion' => 'role_id',
    //         'nombre' => 'roles'
    //     ]
    // ];



    /*/CONSULTAS/*/
    //Todas las ciudades
    //Buscar por id
    //Buscar por Name



}