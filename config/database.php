<?php

require_once __DIR__.'/../vendor/autoload.php';

// use PIPE\Clases\PIPE;
use PIPE\Clases\Configuracion;

Configuracion::inicializar([
    'BD_CONTROLADOR' => 'mysql',
    'BD_HOST'        => getenv('DB_HOST') ?: 'db',
    'BD_PUERTO'      => getenv('DB_PORT') ?: '3306',
    'BD_USUARIO'     => getenv('DB_USER') ?: 'rootp',
    'BD_CONTRASENA'  => getenv('DB_PASSWORD') ?: '12345',
    'BD_BASEDATOS'   => getenv('DB_NAME') ?: 'plant_care',
    'IDIOMA'         => 'es',
    'RUTA_MODELOS'   => __DIR__.'/../app/Models',
    'ZONA_HORARIA'   => 'America/Bogota',
    'COMANDO_INICIAL'=> 'set names utf8mb4 collate utf8mb4_unicode_ci',
    'TIPO_RETORNO'   => Configuracion::CLASE,
    'OPCIONES'       => [PDO::MYSQL_ATTR_LOCAL_INFILE => 1]
]);


/**
 * Finalmente, verificamos que hemos inicializado la configuración correctamente
 * imprimiendo la versión del ORM PIPE.
 */

