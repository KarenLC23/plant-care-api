<?php

namespace App\Auth;

use App\Models\User;
use App\Traits\Util;
use PIPE\Clases\PIPE;
use \Firebase\JWT\JWT;


class AuthController
{
    private $secretKey = 'Rj7$3nF2pZ!x8QvL*6k9b1Wm@4vHqYj7';

    use Util;

    public function authenticate($request)
    {
        if (empty($request->user_name) || empty($request->password)) {
            return $this->response(false, 'Nombre de usuario y contraseña son Requeridas.', null);
        }

        //Convierte todo en Minuscila
        $user_name = strtolower($request->user_name);

          //  $user = User::donde('user_name = ?', [$nameUser])->primero(PIPE::OBJETO);
          $user = User::relaciones('city')
         ->donde('user_name = ?', [$user_name])
         ->primero(PIPE::OBJETO);

         
         if ($user) {
             $decryptedPassword  = $request->password;
             $encryptedPassword = $user->password;
             
             if (password_verify($decryptedPassword, $encryptedPassword)) {
                 
                     $roles = PIPE::consulta(
                        'seleccionar todo de role_user donde user_id = ?', [$user->id], PIPE::OBJETO
                    );

                    // Generar el token JWT
                    $payload = [
                        'iss' => "tu_servidor",  // Emisor
                        'iat' => time(),         // Hora de emisión
                        'exp' => time() + 3600,  // Expiración del token (1 hora)
                        'sub' => $user->id,      // ID del usuario
                    ];

                    // Generar el token
                    $jwt = JWT::encode($payload, $this->secretKey, 'HS256');

                    // Agregar el token al objeto de usuario para enviarlo al cliente
                    $user->token = $jwt; 
 

                return $this->response(true, $roles, $user);
            } else {
                return $this->response(false, 'Contraseña Incorrecta.', null);
            }
        } else {
            return $this->response(false, 'Usuario no encontrado.', null);
        }
    }


    //Reset Password
    public function resetPassword ($request){
        
        if (empty($request->user_name) || empty($request->password) || empty($request->conformPassword)) {
            return $this->response(false, 'Nombre de usuario y contraseña son Requeridos.', null);
        }

        $user_name = strtolower($request->user_name);
         $user = User::donde('user_name = ?', [$user_name])->primero(PIPE::OBJETO);

        if($user){
            $hashedPassword = password_hash($request->password, PASSWORD_DEFAULT);
            $id = $user->id;

            $result = User::donde('id = ?', [$id])->actualizar(['password' => $hashedPassword]);

            if ($result) {
                return $this->response(true, 'Contraseña actualizada correctamente.', $result);
            } else {
                return $this->response(false, 'Error al actualizar la contraseña.', null);
            }
            
            }else{
                return $this->response(false, 'Usuario no encontrado.', null);
            }
    }
 
}
