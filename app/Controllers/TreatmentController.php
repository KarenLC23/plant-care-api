<?php

namespace App\Controllers;

use App\Models\Treatment;
use App\Traits\Util;
use PDOException;
use PIPE\Clases\PIPE;

class TreatmentController
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
         $description = ucwords($request->description);

        // Verificar si ya existe un usuario con el mismo nombre de usuario o correo electrónico
        $existingTreatment = Treatment::donde('name = ?', [$name])->primero(PIPE::OBJETO);

        if ($existingTreatment) {
            return $this->response(false, 'El Tratamiento ya existe.');
          }


        $treatment = Treatment::crear(
            [
                'name' => $name,
                'description' => $description,
            ]
        );

        return $this->response(true, 'Treatment created successfully!', $treatment);
    }


    
    public function update($request)
    {
        //validations
        if (empty($request->name) || empty($request->description)) {
            return $this->response(false, 'All fields are required.');
        }
    
        //convierte la primera letra de cada palabra en Mayuscula
        $name = ucwords($request->name);
        $description = ucwords($request->description);


         // Verificar si ya existe un sintoma con el mismo nombre
         $existingTreatment = Treatment::donde('name = ?', [$name])->primero(PIPE::OBJETO);

         if ($existingTreatment && $existingTreatment->id != $request->id ) {
             return $this->response(false, 'El Treatment ya existe.');
           }
 


        $treatment = Treatment::donde('id = ?', [$request->id])
        ->actualizar(['name' => $name, 'description' => $description] );

        return $this->response(true, 'Treatment updated successfully!', $treatment);

    }


    public function delete($request) {
        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }
    
        try {
            $resultado = Treatment::donde('id = ?', [$request->id])->eliminar();
    
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
        $treatment = Treatment::todo();
        
         return $this->response(true, 'OK.', $treatment);
    }

    public function getById($request){

        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }

        $id = $request->id;

        $treatment = Treatment::donde('id = ?', [$id])->primero(PIPE::OBJETO);
        return $this->response(true, 'OK.', $treatment);

    }

 
}
