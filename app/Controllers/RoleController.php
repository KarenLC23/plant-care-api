<?php

namespace App\Controllers;

use App\Models\Role;
use App\Traits\Util;
use PDOException;
use PIPE\Clases\PIPE;

class RoleController
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
        $existingRole = Role::donde('name = ?', [$name])->primero(PIPE::OBJETO);

        if ($existingRole) {
            return $this->response(false, 'El nombre del origen ya existe.');
          }


        $role = Role::crear(
            [
                'name' => $name,
            ]
        );

        return $this->response(true, 'Role created successfully!', $role);
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
         $existingRole = Role::donde('name = ?', [$name])->primero(PIPE::OBJETO);

         if ($existingRole && $existingRole->id != $request->id ) {
             return $this->response(false, 'El nombre del Role ya existe.');
           }
 


        $role = Role::donde('id = ?', [$request->id])
        ->actualizar(['name' => $name, ] );

        return $this->response(true, 'Usuario updated successfully!', $role);

    }


    public function delete($request) {
        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }
    
        try {
            $resultado = Role::donde('id = ?', [$request->id])->eliminar();
    
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
        $role = Role::todo();
        
         return $this->response(true, 'OK.', $role);
    }

 
}
