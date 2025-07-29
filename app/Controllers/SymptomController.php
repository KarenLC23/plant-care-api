<?php

namespace App\Controllers;

use App\Models\Plant;
use App\Models\Symptom;
use App\Traits\Util;
use PDOException;
use PIPE\Clases\PIPE;

class SymptomController
{
    use Util;


    public function getAll()
    {
       // $symptom = Symptom::relaciones('plague', 'treatment')->obtener();
        $symptom = Symptom::todo();


         return $this->response(true, 'OK.', $symptom);
    }


    public function create($request)
    {
       // validations
        if (empty($request->name) || empty($request->plague_id) || empty($request->treatment_id)) {
            return $this->response(false, 'All fields are required.');
        }
         //convierte la primera letra de cada palabra en Mayuscula
        $name = ucwords($request->name);
        $description = ucwords($request->description);
        $plague_id = $request->plague_id;
        $treatment_id = $request->treatment_id;
        
        // Verificar si ya existe un usuario con el mismo nombre de usuario o correo electrónico
        $existingSymptom = Symptom::donde('name = ?', [$name])->primero(PIPE::OBJETO);

        if ($existingSymptom) {
            return $this->response(false, 'El Sintoma ya existe.');
          }


        $symptom = Symptom::crear(
            [
                'name' => $name,
                'description' => $description,
                'plague_id' => $plague_id,
                'treatment_id' => $treatment_id,
            ]
        );

        return $this->response(true, 'Symptom created successfully!', $symptom);
    }


    
    public function update($request)
    {
        //validations
        if (empty($request->name) || empty($request->plague_id) || empty($request->treatment_id)) {
            return $this->response(false, 'All fields are required.');
        }
    
         //convierte la primera letra de cada palabra en Mayuscula
         $name = ucwords($request->name);
         $description = ucwords($request->description);
         $plague_id = $request->plague_id;
         $treatment_id = $request->treatment_id;
         
         // Verificar si ya existe un sintoma con el mismo nombre
         $existingSymptom = Symptom::donde('name = ?', [$name])->primero(PIPE::OBJETO);

         if ($existingSymptom && $existingSymptom->id != $request->id ) {
             return $this->response(false, 'El Síntoma ya existe.');
           }

        $symptom = Symptom::donde('id = ?', [$request->id])
        ->actualizar(['name' => $name,
                'description' => $description,
                'plague_id' => $plague_id,
                'treatment_id' => $treatment_id, ] );

        return $this->response(true, 'Symptom updated successfully!', $symptom);
    }
    

    public function delete($request) {

        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }
    
        try {
            $resultado = Symptom::donde('id = ?', [$request->id])->eliminar();
    
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


public function getSymptomsPlantById($request)
{
    if (empty($request->id)) {
        return $this->response(false, 'All fields are required.');
    }

    $id = $request->id;

    // Cargar los síntomas relacionados con la planta
    $plant = Plant::encontrar($id)->relacionar('plant_symptom');

    $symptoms = []; // Cambia a un arreglo para almacenar los síntomas

    // Iterar sobre los síntomas relacionados
    foreach ($plant->plant_symptom as $symptomRelation) {
        // Cargar el síntoma
        $symptom = Symptom::encontrar($symptomRelation->id)->relacionar('plague', 'treatment');
        
        // Agregar el síntoma con sus relaciones a la lista
        $symptoms[] = $symptom;
    }

        return $this->response(true, 'OK.', $symptoms);
    }


}
