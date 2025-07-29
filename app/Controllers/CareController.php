<?php

namespace App\Controllers;

use App\Models\Care;
use App\Traits\Util;
use PDOException;
use PIPE\Clases\PIPE;

class CareController
{

    use Util;    
    
        public function getAll()
        {
           // $care = Care::relaciones('fertilizer')->obtener();
            $care = Care::todo();

            return $this->response(true, 'OK.', $care);
        }

        
    public function create($request)
    {
       // validations
        if (empty($request->name) || 
        empty($request->light)||
        empty($request->irrigation)||
        empty($request->temperature)||
        empty($request->soil)||
        empty($request->fertilizer_id)) {
            return $this->response(false, 'All fields are required.');
        }
         //convierte la primera letra de cada palabra en Mayuscula
        $name = ucwords($request->name);
        $light = ucwords($request->light);
        $irrigation = ucwords($request->irrigation);
        $soil = ucwords($request->soil);
        $temperature = $request->temperature;
        $fertilizer_id = $request->fertilizer_id;
        
        // Verificar si ya existe un usuario con el mismo nombre de usuario o correo electrónico
        $existingCare = Care::donde('name = ?', [$name])->primero(PIPE::OBJETO);

        if ($existingCare) {
            return $this->response(false, 'El Cuidado ya existe.');
          }

        $care = Care::crear(
            [
                'name' => $name,
                'light' => $light,
                'irrigation' => $irrigation,
                'temperature' => $temperature,
                'soil' => $soil,
                'fertilizer_id' => $fertilizer_id,
            ]
        );

        return $this->response(true, 'Care created successfully!', $care);
    }

    
    public function update($request)
    {
        //validations
        if (empty($request->name) || 
        empty($request->light)||
        empty($request->irrigation)||
        empty($request->temperature)||
        empty($request->soil)||
        empty($request->fertilizer_id)) {
            return $this->response(false, 'All fields are required.');
        }
    
         //convierte la primera letra de cada palabra en Mayuscula
         $name = ucwords($request->name);
         $light = ucwords($request->light);
         $irrigation = ucwords($request->irrigation);
         $soil = ucwords($request->soil);
         $temperature = $request->temperature;
         $fertilizer_id = $request->fertilizer_id;
         
         // Verificar si ya existe un sintoma con el mismo nombre
         $existingCare = Care::donde('name = ?', [$name])->primero(PIPE::OBJETO);

         if ($existingCare && $existingCare->id != $request->id ) {
             return $this->response(false, 'El Cuidado ya existe.');
           }
 
        $care = Care::donde('id = ?', [$request->id])
        ->actualizar([
                'name' => $name,
                'light' => $light,
                'irrigation' => $irrigation,
                'temperature' => $temperature,
                'soil' => $soil,
                'fertilizer_id' => $fertilizer_id, ]);

        return $this->response(true, 'Care updated successfully!', $care);
    }


    public function delete($request) {
        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }
    
        try {
            $resultado = care::donde('id = ?', [$request->id])->eliminar();
    
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

    public function getById($request){

        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }

        $id = $request->id;

        $care = Care::donde('id = ?', [$id])->primero(PIPE::OBJETO);
        return $this->response(true, 'OK.', $care);

    }

}