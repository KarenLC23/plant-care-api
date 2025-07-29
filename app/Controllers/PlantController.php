<?php

namespace App\Controllers;

use App\Models\Fertilizer;
use App\Models\Plant;
use App\Models\User;
use App\Traits\Util;
use PDOException;
use PIPE\Clases\PIPE;

class PlantController
{

    use Util;    
    
    //Obteniendo todos los plantas de la BD
    public function getAll()
    {
       // $plant = Plant::relaciones('care', 'origin', 'gender')->obtener();
        $plant = Plant::todo();

        return $this->response(true, 'OK.', $plant);
    }


    public function create($request)
    {
       // validations
        if (empty($request->name_common) || 
            empty($request->origin_id) || 
            empty($request->gender_id) || 
            empty($request->description) || 
            empty($request->care_id) || 
            empty($request->photo_url)) {
            
            return $this->response(false, 'All fields are required.');
        }
         //convierte la primera letra de cada palabra en Mayuscula
        $name_common = ucwords($request->name_common);
        $description = ucwords($request->description);
        $origin_id = $request->origin_id;
        $gender_id = $request->gender_id;
        $care_id = $request->care_id;
        $photo_url = $request->photo_url;
        
        // Verificar si ya existe un usuario con el mismo nombre de usuario o correo electrónico
        $existingPlant = Plant::donde('name_common = ?', [$name_common])->primero(PIPE::OBJETO);

        if ($existingPlant) {
            return $this->response(false, 'El Sintoma ya existe.');
          }

        $plant = Plant::crear(
            [
                'name_common' => $name_common,
                'origin_id' => $origin_id,
                'gender_id' => $gender_id,
                'description' => $description,
                'care_id' => $care_id,
                'photo_url' => $photo_url,
            ]
        );

        return $this->response(true, 'Plant created successfully!', $plant);
    }

 
    public function update($request)
    {
        // validations
        if (empty($request->name_common) || 
            empty($request->origin_id) || 
            empty($request->gender_id) || 
            empty($request->description) || 
            empty($request->care_id) || 
            empty($request->photo_url)) {
            
            return $this->response(false, 'All fields are required.');
        }
    
         //convierte la primera letra de cada palabra en Mayuscula
         $name_common = ucwords($request->name_common);
         $description = ucwords($request->description);
         $origin_id = $request->origin_id;
         $origin_id = $request->origin_id;
         $care_id = $request->care_id;
         $photo_url = $request->photo_url;
         
         // Verificar si ya existe un sintoma con el mismo nombre
         $existingPlant = Plant::donde('name_common = ?', [$name_common])->primero(PIPE::OBJETO);

         if ($existingPlant && $existingPlant->id != $request->id ) {
             return $this->response(false, 'El Síntoma ya existe.');
           }

        $plant = Plant::donde('id = ?', [$request->id])
        ->actualizar([
            'name_common' => $name_common,
            'origin_id' => $origin_id,
            'origin_id' => $origin_id,
            'description' => $description,
            'care_id' => $care_id,
            'photo_url' => $photo_url,
                ] );

        return $this->response(true, 'Plant updated successfully!', $plant);
    }

    public function delete($request) {

        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }
    
        try {
            $resultado = Plant::donde('id = ?', [$request->id])->eliminar();
    
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

    public function getPlantsUserById($request)
    {
        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }
    
        $id = $request->id;
    
        // Cargar las plantas relacionadas al usuario
        $user = User::encontrar($id)->relacionar('plant_user');
        $plants = [];
    
        // Iterar sobre las plantas relacionadas y cargar sus relaciones
        foreach ($user->plant_user as $plant) {
            // Relacionar care, origin y gender
            $plantWithRelations = Plant::encontrar($plant->id);
            //->relacionar('care');
    
            // Cargar manualmente el fertilizer asociado a care
          /*  if ($plantWithRelations->care) {
                $fertilizer = Fertilizer::encontrar($plantWithRelations->care->fertilizer_id);
                $plantWithRelations->care->fertilizer = $fertilizer;
            }*/
    
            $plants[] = $plantWithRelations;
        }
    
        return $this->response(true, 'OK.', $plants);
    }



    public function getPlantsAddUser($request)
    {
        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }
    
        $usuarioId = $request->id; // Reemplaza con el ID del usuario que desees
    
        $plants = PIPE::tabla('plants')
            ->donde('not exists (seleccionar * de plant_user donde plant_user.plant_id = plants.id y user_id = ?)', [$usuarioId])
            ->obtener();
    
        // Verificar si hay plantas
        if (empty($plants)) {
            return $this->response(true, 'No plants found.', []);
        }
    
        return $this->response(true, 'OK.', $plants);
    }



    public function addPlantUser($request)
    {
       // validations
        if (empty($request->user_id) || empty($request->plant_id)) {
            return $this->response(false, 'All fields are required.');
        }
         $idUser = $request->user_id;
         $idPlant = $request->plant_id;


        $plant_user = PIPE::tabla('plant_user');
        $plant_user->insertar(
            ['user_id' => $idUser, 'plant_id' => $idPlant]
        );

        return $this->response(true, 'Plant the User add successfully!', $plant_user);
    }


    public function getPlantEvents($request)
    {
        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }
    
        $id = $request->id;
    
        // Cargar las plantas relacionadas al usuario
        $user = User::encontrar($id)->relacionar('plant_user');
        $plants = [];
    
        // Iterar sobre las plantas relacionadas y cargar sus relaciones
        foreach ($user->plant_user as $plant) {
            // Relacionar care, origin y gender
            $plantWithRelations = Plant::encontrar($plant->id)->relacionar('care');
    
            // Cargar manualmente el fertilizer asociado a care
            if ($plantWithRelations->care) {
                $fertilizer = Fertilizer::encontrar($plantWithRelations->care->fertilizer_id);
                $plantWithRelations->care->fertilizer = $fertilizer;
            }
    
            $plants[] = $plantWithRelations;
        }
    
        return $this->response(true, 'OK.', $plants);
    }
    



    public function deletePlantUser($request){
               // validations
               if (empty($request->user_id) || empty($request->plant_id)) {
                return $this->response(false, 'All fields are required.');
            }
             $idUser = $request->user_id;
             $idPlant = $request->plant_id;

            $resultado = PIPE::tabla('plant_user')->donde('user_id = ? && plant_id = ?', [$idUser, $idPlant])->eliminar();
           
            if($resultado){
                return $this->response(true, 'OK.', null);
            }else{
                return $this->response(false, 'Dato no encontrado.', null);
            }
    }
}