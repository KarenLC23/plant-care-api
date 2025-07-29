<?php

namespace App\Controllers;

use App\Models\Plague;
use App\Traits\Util;
use PDOException;
use PIPE\Clases\PIPE;

class PlagueController
{

    use Util;

//Obteniendo todos los Plagas de la BD
    public function getAll()
    {
        $plague = Plague::todo();

        // $user = User::encontrar(2)->relacionar('city');
        return $this->response(true, 'OK.', $plague);
    }

    public function create($request)
    {

       // validations
        if (empty($request->name)) {
            return $this->response(false, 'All fields are required.');
        }
         //convierte la primera letra de cada palabra en Mayuscula
        $name = ucwords($request->name);
        $description = ucwords($request->description);
        // Verificar si ya existe un usuario con el mismo nombre de usuario o correo electrónico
        $existingPlague = Plague::donde('name = ?', [$name])->primero(PIPE::OBJETO);

        if ($existingPlague) {
            return $this->response(false, 'El nombre del origen ya existe.');
          }

        $plague = Plague::crear(
            [
                'name' => $name,
                'description' => $description,
            ]
        );

        return $this->response(true, 'Plague created successfully!', $plague);
    }

    public function update($request)
    {
        //validations
        if (empty($request->name)) {
            return $this->response(false, 'All fields are required.');
        }
    
        //convierte la primera letra de cada palabra en Mayuscula
        $name = ucwords($request->name);
        $description = ucwords($request->description);


         // Verificar si ya existe un usuario con el mismo nombre de usuario o correo electrónico
         $existingPlague = Plague::donde('name = ?', [$name])->primero(PIPE::OBJETO);

         if ($existingPlague && $existingPlague->id != $request->id ) {
             return $this->response(false, 'El nombre del Plague ya existe.');
           }
 
        $plague = Plague::donde('id = ?', [$request->id])
        ->actualizar(['name' => $name,'description' => $description ] );

        return $this->response(true, 'Usuario updated successfully!', $plague);

    }

    public function delete($request) {
        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }
    
        try {
            $resultado = Plague::donde('id = ?', [$request->id])->eliminar();
    
            if ($resultado) {
                return $this->response(true, 'OK.', null);
            } else {
                return $this->response(false, 'Dato no encontrado.', null);
            }
        } catch (PDOException $e) {
            // Verifica si el código de error es 23000
            if ($e->getCode() === '23000') {
                return $this->response(false, 'No se puede eliminar el registro porque está asociado a otra tabla.', null);
            } else {
                // Manejar otros errores de PDO
                return $this->response(false, 'Error al eliminar el registro: ' . $e->getMessage(), null);
            }
        }
    
    }
}