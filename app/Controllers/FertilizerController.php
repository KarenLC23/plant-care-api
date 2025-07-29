<?php

namespace App\Controllers;

use App\Models\Fertilizer;
use App\Traits\Util;
use PDOException;
use PIPE\Clases\PIPE;

class FertilizerController
{

    use Util;
    public function create($request)
    {
       // validations
       if (empty($request->name) || empty($request->description)) {
        return $this->response(false, 'All fields are required.');
        }
         //convierte la primera letra de cada palabra en Mayuscula
         $name = ucwords($request->name);
         $description = ucwords($request->description);

        // Verificar si ya existe un usuario con el mismo nombre de usuario o correo electrónico
        $existingFertilizer = Fertilizer::donde('name = ?', [$name])->primero(PIPE::OBJETO);

        if ($existingFertilizer) {
            return $this->response(false, 'El Abono ya existe.');
          }


        $fertilizer = Fertilizer::crear(
            [
                'name' => $name,
                'description' => $description,
            ]
        );

        return $this->response(true, 'Fertilizer created successfully!', $fertilizer);
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

         // Verificar si ya existe un sintoma con el mismo nombre
         $existingFertilizer = Fertilizer::donde('name = ?', [$name])->primero(PIPE::OBJETO);

         if ($existingFertilizer && $existingFertilizer->id != $request->id ) {
             return $this->response(false, 'El Fertilizer ya existe.');
           }

        $fertilizer = Fertilizer::donde('id = ?', [$request->id])
        ->actualizar(['name' => $name, 'description' => $description] );

        return $this->response(true, 'Fertilizer updated successfully!', $fertilizer);
    }

    public function delete($request) {
        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }
    
        try {
            $resultado = Fertilizer::donde('id = ?', [$request->id])->eliminar();
    
            if ($resultado) {
                return $this->response(true, 'OK.', null);
            } else {
                return $this->response(false, 'Dato no encontrado.', null);
            }
            echo $resultado;
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
        $fertilizer = Fertilizer::todo();
        
         return $this->response(true, 'OK.', $fertilizer);
    }



    public function getById($request){

        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }

        $id = $request->id;

        $fertilizer = Fertilizer::donde('id = ?', [$id])->primero(PIPE::OBJETO);
        return $this->response(true, 'OK.', $fertilizer);

    }

 
}
