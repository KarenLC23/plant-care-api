# 🌿 PlantCare API

Una API RESTful construida en **PHP puro (sin frameworks)** para gestionar el cuidado de plantas, usuarios, síntomas, tratamientos y más.

Este proyecto está **dockerizado** y listo para usarse como parte de un **portafolio profesional** en áreas como DevOps o Backend.

---

## 🚀 Tecnologías usadas

- 🐘 PHP 8.0 + Apache
- 🐳 Docker + Docker Compose
- 🛢️ MySQL 5.7
- 🧪 Postman (colección de pruebas)
- 🧰 Arquitectura MVC simple sin frameworks

---

## 📦 Estructura del proyecto

plant-care-pp/
- app/ # Controladores y modelos (MVC)
- config/ # Configuración general
- db/ # Script SQL de inicialización
- db_data/ # Volumen persistente de MySQL (ignorado en Git)
- index.php # Punto de entrada principal
- Dockerfile # Imagen PHP + Apache
- docker-compose.yml # Orquestación de servicios Docker
- .env # Variables de entorno (no se sube)
- README.md # Documentación del proyecto

---

## ⚙️ Variables de entorno (.env)

Crea un archivo `.env` en la raíz del proyecto con:

```env
DB_NAME=plant_care
DB_USER=root
DB_PASSWORD=12345
DB_PORT=3307
DB_HOST=db


▶️ Levantar el entorno

docker-compose up --build
Acceso a la API: http://localhost:8093

phpMyAdmin: http://localhost:8094 (user: root, pass: 12345)


🔧 Endpoints Principales

🌿 Plantas (/api?api=plant-*)

| Método | Acción                                  | Descripción                               |
| ------ | --------------------------------------- | ----------------------------------------- |
| GET    | `plant-get`                             | Obtener todas las plantas registradas     |
| POST   | `plant-create`                          | Crear una nueva planta                    |
| POST   | `plant-update`                          | Actualizar información de una planta      |
| GET    | `plant-delete&id=1`                     | Eliminar planta por ID                    |
| GET    | `plantsUser-get&id=1`                   | Obtener plantas asociadas a un usuario    |
| GET    | `plantsAddUser-get&id=1`                | Plantas que un usuario aún no ha agregado |
| POST   | `plantUser-add`                         | Relacionar usuario con una planta         |
| GET    | `plantUser-delete&user_id=1&plant_id=2` | Eliminar relación planta-usuario          |

🐛 Plagas (/api?api=plague-*)

| Método | Acción               | Descripción                     |
| ------ | -------------------- | ------------------------------- |
| GET    | `plague-get`         | Listar todas las plagas         |
| POST   | `plague-create`      | Crear nueva plaga               |
| POST   | `plague-update`      | Editar información de una plaga |
| GET    | `plague-delete&id=1` | Eliminar una plaga por ID       |


🧼 Cuidados (/api?api=care-*)

| Método | Acción              | Descripción                       |
| ------ | ------------------- | --------------------------------- |
| GET    | `care-get`          | Listar todos los cuidados         |
| POST   | `care-create`       | Crear un cuidado                  |
| POST   | `care-update`       | Actualizar información de cuidado |
| GET    | `care-delete&id=1`  | Eliminar cuidado por ID           |
| GET    | `care-getById&id=1` | Obtener cuidado específico por ID |


🧩 Otros módulos disponibles 
Además, este proyecto incluye otros módulos completamente funcionales:

👤 Usuarios y autenticación

🔐 Roles y permisos

🧬 Síntomas y tratamientos

🌎 Géneros y orígenes

🌾 Fertilizantes

🏙️ Ciudades

📌 Puedes explorar los endpoints adicionales directamente en el código fuente o probarlos desde Postman.



📦 CI/CD Automatizado con GitHub Actions
Este proyecto incluye un pipeline de integración continua que realiza:

✅ Análisis de sintaxis (Lint) para todo el código PHP.

🐳 Construcción automática de la imagen Docker.

🚀 Publicación automática a DockerHub bajo: kldevops/api-plantas:latest.

El archivo de configuración del pipeline se encuentra en:
.github/workflows/docker-workflow.yml

Puedes ver la imagen publicada aquí:
🔗 https://hub.docker.com/r/kldevops/api-plantas


🧰 ¿Por qué es un buen portafolio DevOps?

✅ Dockeriza el backend, la base de datos y phpMyAdmin

✅ Usa .env para separar la configuración

✅ Volúmenes persistentes para mantener datos

✅ Script SQL de inicialización automática

✅ Separación clara del código en MVC puro

✅ Sin frameworks: todo hecho desde cero

👩‍💻 Autor
Hecho con ❤️ por Karen Caicedo
🚀 En camino a ser DevOps Engineer
