<?php

namespace App\Controllers;

use App\Models\Gender;
use App\Traits\Util;
use PDOException;
use PIPE\Clases\PIPE;

class GenderController
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
        $existingGender = Gender::donde('name = ?', [$name])->primero(PIPE::OBJETO);

        if ($existingGender) {
            return $this->response(false, 'El Genero ya existe.');
          }


        $gender = Gender::crear(
            [
                'name' => $name,
            ]
        );

        return $this->response(true, 'Genders created successfully!', $gender);
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
         $existingGender = Gender::donde('name = ?', [$name])->primero(PIPE::OBJETO);

         if ($existingGender && $existingGender->id != $request->id ) {
             return $this->response(false, 'El Genero ya existe.');
           }
 


        $gender = Gender::donde('id = ?', [$request->id])
        ->actualizar(['name' => $name, ] );

        return $this->response(true, 'Gender updated successfully!', $gender);

    }


    public function getAll()
    {
        $gender = Gender::todo();
        
         return $this->response(true, 'OK.', $gender);
    }

    public function getById($request){

        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }

        $id = $request->id;

        $gender = Gender::donde('id = ?', [$id])->primero(PIPE::OBJETO);
        return $this->response(true, 'OK.', $gender);
    }

    public function delete($request) {
        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }
    
        try {
            $resultado = Gender::donde('id = ?', [$request->id])->eliminar();
    
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

 
}
