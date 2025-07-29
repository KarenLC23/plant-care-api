<?php

namespace App\Controllers;

use App\Models\Origin;
use App\Traits\Util;
use PDOException;
use PIPE\Clases\PIPE;

class OriginController
{

    use Util;

    public function create($request)
    {

       // validations
        if (empty($request->name)) {
            return $this->response(false, 'All fields are required.');
        }
         //convierte la primera letra de cada palabra en Mayuscula
         $name = ucwords($request->name);

        // Verificar si ya existe un usuario con el mismo nombre de usuario o correo electrónico
        $existingOrigin = Origin::donde('name = ?', [$name])->primero(PIPE::OBJETO);

        if ($existingOrigin) {
            return $this->response(false, 'El nombre del origen ya existe.');
          }


        $origin = Origin::crear(
            [
                'name' => $name,
            ]
        );

        return $this->response(true, 'Origin created successfully!', $origin);
    }


    
    public function update($request)
    {
        //validations
        if (empty($request->name)) {
            return $this->response(false, 'All fields are required.');
        }
    
        //convierte la primera letra de cada palabra en Mayuscula
        $name = ucwords($request->name);


         // Verificar si ya existe un usuario con el mismo nombre de usuario o correo electrónico
         $existingOrigin = Origin::donde('name = ?', [$name])->primero(PIPE::OBJETO);

         if ($existingOrigin && $existingOrigin->id != $request->id ) {
             return $this->response(false, 'El nombre del Origin ya existe.');
           }
 


        $origin = Origin::donde('id = ?', [$request->id])
        ->actualizar(['name' => $name, ] );

        return $this->response(true, 'Usuario updated successfully!', $origin);

    }

    public function delete($request) {
        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }
    
        try {
            $resultado = Origin::donde('id = ?', [$request->id])->eliminar();
    
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



    public function getAll()
    {
        $origin = Origin::todo();
        
         return $this->response(true, 'OK.', $origin);
    }

    public function getById($request){

        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }

        $id = $request->id;

        $origin = Origin::donde('id = ?', [$id])->primero(PIPE::OBJETO);
        return $this->response(true, 'OK.', $origin);

    }

 
}
