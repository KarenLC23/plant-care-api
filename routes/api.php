<?php

use App\Auth\AuthController;
use App\Controllers\CareController;
use App\Controllers\CityController;
use App\Controllers\FertilizerController;
use App\Controllers\GenderController;
use App\Controllers\OriginController;
use App\Controllers\PlagueController;
use App\Controllers\PlantController;
use App\Controllers\RoleController;
use App\Controllers\SymptomController;
use App\Controllers\TreatmentController;
use App\Controllers\UserController;

$authController = new AuthController; 
$cityController = new CityController;
$userController = new UserController;
$roleController = new RoleController;
$genderController = new GenderController;
$symptomController = new SymptomController;
$originController = new OriginController;
$fertilizerController = new FertilizerController;
$treatmentsController = new TreatmentController;
$plagueController = new PlagueController;
$careController = new CareController;
$plantController = new PlantController;


if(isset($_POST['api']) && $_POST['api'] == 'authenticate') {
    echo $authController->authenticate((object) $_POST);
}
elseif (isset($_POST['api']) && $_POST['api'] == 'resetPassword_update') {
    echo $authController->resetPassword((object) $_POST);
}


//Rutas CIUDADES/
elseif (isset($_POST['api']) && $_POST['api'] == 'city-create') {
    echo $cityController->create((object) $_POST);
}
elseif (isset($_POST['api']) && $_POST['api'] == 'city-update') {
    echo $cityController->update((object) $_POST);
}
elseif (isset($_GET['api']) && $_GET['api'] == 'city-get') {
    echo $cityController->getAll();
}
elseif (isset($_GET['api']) && $_GET['api'] == 'city-delete') {
    echo $cityController->delete((object) $_GET);
}

//Rutas USUARIOS//
elseif (isset($_POST['api']) && $_POST['api'] == 'user-create') {
    echo $userController->create((object) $_POST);
}
elseif (isset($_POST['api']) && $_POST['api'] == 'user-update') {
    echo $userController->update((object) $_POST);
}
elseif (isset($_GET['api']) && $_GET['api'] == 'user-get') {
    echo $userController->getAll();
}
elseif (isset($_GET['api']) && $_GET['api'] == 'userById-get') {
    echo $userController->getUserById((object) $_GET);
}


//Rutas ROLES//
elseif (isset($_POST['api']) && $_POST['api'] == 'role-create') {
    echo $roleController->create((object) $_POST);
}
elseif (isset($_POST['api']) && $_POST['api'] == 'role-update') {
    echo $roleController->update((object) $_POST);
}
elseif (isset($_GET['api']) && $_GET['api'] == 'role-get') {
    echo $roleController->getAll();
}
elseif (isset($_GET['api']) && $_GET['api'] == 'role-delete') {
    echo $roleController->delete((object) $_GET);
 }



//Rutas GENEROS//
elseif (isset($_POST['api']) && $_POST['api'] == 'gender-create') {
    echo $genderController->create((object) $_POST);
}
elseif (isset($_POST['api']) && $_POST['api'] == 'gender-update') {
    echo $genderController->update((object) $_POST);
}
elseif (isset($_GET['api']) && $_GET['api'] == 'gender-get') {
    echo $genderController->getAll();
}
elseif (isset($_GET['api']) && $_GET['api'] == 'gender-getById') {
    echo $genderController->getById((object) $_GET);
 }
 elseif (isset($_GET['api']) && $_GET['api'] == 'gender-delete') {
    echo $genderController->delete((object) $_GET);
 }



//Rutas SINTOMAS//
elseif (isset($_POST['api']) && $_POST['api'] == 'symptom-create') {
    echo $symptomController->create((object) $_POST);
}
elseif (isset($_POST['api']) && $_POST['api'] == 'symptom-update') {
    echo $symptomController->update((object) $_POST);
}
elseif (isset($_GET['api']) && $_GET['api'] == 'symptom-get') {
    echo $symptomController->getAll();
}
elseif (isset($_GET['api']) && $_GET['api'] == 'symptomByPlant-get') {
    echo $symptomController->getSymptomsPlantById((object) $_GET);
 }
 elseif (isset($_GET['api']) && $_GET['api'] == 'symptom-delete') {
    echo $symptomController->delete((object) $_GET);
 }


//Rutas ORIGENES//
elseif (isset($_POST['api']) && $_POST['api'] == 'origin-create') {
    echo $originController->create((object) $_POST);
}
elseif (isset($_POST['api']) && $_POST['api'] == 'origin-update') {
    echo $originController->update((object) $_POST);
}
elseif (isset($_GET['api']) && $_GET['api'] == 'origin-get') {
    echo $originController->getAll();
}
elseif (isset($_GET['api']) && $_GET['api'] == 'origin-delete') {
    echo $originController->delete((object) $_GET);
 }
 elseif (isset($_GET['api']) && $_GET['api'] == 'origin-getById') {
    echo $originController->getById((object) $_GET);
}

//Rutas ABONOS//
elseif (isset($_POST['api']) && $_POST['api'] == 'fertilizer-create') {
    echo $fertilizerController->create((object) $_POST);
}
elseif (isset($_POST['api']) && $_POST['api'] == 'fertilizer-update') {
    echo $fertilizerController->update((object) $_POST);
}
elseif (isset($_GET['api']) && $_GET['api'] == 'fertilizer-get') {
    echo $fertilizerController->getAll();
}
elseif (isset($_GET['api']) && $_GET['api'] == 'fertilizer-delete') {
    echo $fertilizerController->delete((object) $_GET);
 }
 elseif (isset($_GET['api']) && $_GET['api'] == 'fertilizer-getById') {
    echo $fertilizerController->getById((object) $_GET);
}


//Rutas TRATAMIENTOS//
elseif (isset($_POST['api']) && $_POST['api'] == 'treatment-create') {
    echo $treatmentsController->create((object) $_POST);
}
elseif (isset($_POST['api']) && $_POST['api'] == 'treatment-update') {
    echo $treatmentsController->update((object) $_POST);
}
elseif (isset($_GET['api']) && $_GET['api'] == 'treatment-get') {
    echo $treatmentsController->getAll();
}
elseif (isset($_GET['api']) && $_GET['api'] == 'treatment-getById') {
    echo $treatmentsController->getById((object) $_GET);
}
elseif (isset($_GET['api']) && $_GET['api'] == 'treatment-delete') {
    echo $treatmentsController->delete((object) $_GET);
 }


//Rutas PLAGAS//
elseif (isset($_POST['api']) && $_POST['api'] == 'plague-create') {
    echo $plagueController->create((object) $_POST);
}
elseif (isset($_POST['api']) && $_POST['api'] == 'plague-update') {
   echo $plagueController->update((object) $_POST);
}
elseif (isset($_GET['api']) && $_GET['api'] == 'plague-get') {
    echo $plagueController->getAll();
}
elseif (isset($_GET['api']) && $_GET['api'] == 'plague-delete') {
    echo $plagueController->delete((object) $_GET);
}


//Rutas CUIDADOS//
elseif (isset($_POST['api']) && $_POST['api'] == 'care-create') {
    echo $careController->create((object) $_POST);
 }
 elseif (isset($_POST['api']) && $_POST['api'] == 'care-update') {
    echo $careController->update((object) $_POST);
 }
 elseif (isset($_GET['api']) && $_GET['api'] == 'care-get') {
     echo $careController->getAll();
 }
 elseif (isset($_GET['api']) && $_GET['api'] == 'care-delete') {
    echo $careController->delete((object) $_GET);
}
elseif (isset($_GET['api']) && $_GET['api'] == 'care-getById') {
    echo $careController->getById((object) $_GET);
 }


 //Rutas PLANTAS//
elseif (isset($_POST['api']) && $_POST['api'] == 'plant-create') {
     echo $plantController->create((object) $_POST);
 }
 elseif (isset($_POST['api']) && $_POST['api'] == 'plant-update') {
    echo $plantController->update((object) $_POST);
 }
 elseif (isset($_GET['api']) && $_GET['api'] == 'plant-get') {
     echo $plantController->getAll();
 }
 elseif (isset($_GET['api']) && $_GET['api'] == 'plant-delete') {
    echo $plantController->delete((object) $_GET);
}
 elseif (isset($_GET['api']) && $_GET['api'] == 'plantsUser-get') {
    echo $plantController->getPlantsUserById((object) $_GET);
 }
 elseif (isset($_GET['api']) && $_GET['api'] == 'plantsAddUser-get') {
    echo $plantController->getPlantsAddUser((object) $_GET);
 }
 elseif (isset($_POST['api']) && $_POST['api'] == 'plantUser-add') {
     echo $plantController->addPlantUser((object) $_POST);
 }
 elseif (isset($_GET['api']) && $_GET['api'] == 'getEvents-get') {
    echo $plantController->getPlantEvents((object) $_GET);
 }
 elseif (isset($_GET['api']) && $_GET['api'] == 'plantUser-delete') {
    echo $plantController->deletePlantUser((object) $_GET);
 }

