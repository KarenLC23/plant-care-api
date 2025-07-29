<?php

namespace App\Controllers;

use App\Models\User;
use App\Traits\Util;
use PIPE\Clases\PIPE;

class UserController
{

    use Util;

    public function create($request)
    {
        // validations
        if (empty($request->name) || empty($request->user_name) || empty($request->password) || empty($request->email) || empty($request->city_id)) {
            return $this->response(false, 'All fields are required.');
        }
        
        //convierte la primera letra de cada palabra en Mayuscula
        $name = ucwords($request->name);
        //Convierte todo en Minuscila
        $user_name = strtolower($request->user_name);
        $email = strtolower($request->email);

        // Verificar si ya existe un usuario con el mismo nombre de usuario o correo electrónico
        $existingUser = User::donde('user_name = ?', [$user_name])->primero(PIPE::OBJETO);
        $existingEmail =User::donde('email = ?', [$email])->primero(PIPE::OBJETO);

        if ($existingUser) {
            return $this->response(false, 'El nombre de usuario ya existe.');
        }else if($existingEmail) {
            return $this->response(false, 'El Email ya existe.');
        }

        $hashedPassword = password_hash($request->password, PASSWORD_DEFAULT);
        $user = User::crear(
            [
                'name' => $name,
                'user_name' => $user_name,
                'password' => $hashedPassword,
                'email' => $email,
                'city_id' => $request->city_id,
            ]
        );

        return $this->response(true, 'User created successfully!', $user);
    }



    public function update($request)
    {
        //validations
        if (empty($request->name) || empty($request->user_name) || empty($request->email) || empty($request->city_id)) {
            return $this->response(false, 'All fields are required.');
        }
    
        //convierte la primera letra de cada palabra en Mayuscula
        $name = ucwords($request->name);
        //Convierte todo en Minuscila
        $user_name = strtolower($request->user_name);
        $email = strtolower($request->email);

        // Verificar si ya existe un usuario con el mismo nombre de usuario o correo electrónico
        $existingUser = User::donde('user_name = ?', [$user_name])->primero(PIPE::OBJETO);
        $existingEmail = User::donde('email = ?', [$email])->primero(PIPE::OBJETO);

        if ($existingUser && $existingUser->id != $request->id) {
            return $this->response(false, 'El nombre de usuario ya está en uso por otro usuario.');
        } else if ($existingEmail && $existingEmail->id != $request->id) {
            return $this->response(false, 'El correo electrónico ya está en uso por otro usuario.');
        }


        $user = User::donde('id = ?', [$request->id])
        ->actualizar([
                'name' => $name,
                'user_name' => $user_name,
                'email' => $email,
                'city_id' => $request->city_id,
            ] 
        );

        $userUpdate = User::encontrar($request->id)->relacionar('city');


        return $this->response(true, 'Usuario updated successfully!', $userUpdate);

    }


    

    //Obteniendo todos los usuarios de la BD
    public function getAll()
    {
        $user = User::relaciones('city')->obtener();

        // $user = User::encontrar(2)->relacionar('city');
        return $this->response(true, 'OK.', $user);
    }

    public function getUserById($request) {
        if (empty($request->id)) {
            return $this->response(false, 'All fields are required.');
        }

         $user = User::encontrar($request->id)->relacionar('city');

        if($user){
            return $this->response(true, 'OK.', $user);
        }else{
            return $this->response(false, 'User no encontrado.', null);
        }
    }

}
