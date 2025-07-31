# Imagen base con PHP y Apache
FROM php:8.2-apache

# Activar mod_rewrite para URLs amigables
RUN a2enmod rewrite

# Instalar extensiones PHP necesarias para MySQL
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Instalar git (¡necesario para Composer!)
RUN apt-get update && apt-get install -y git unzip

# Copiar composer desde imagen oficial
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Establecer la zona horaria (para logs)
ENV TZ=America/Bogota

# Definir el directorio de trabajo por defecto dentro del contenedor
WORKDIR /var/www/html

# Copiar todo el código del proyecto al contenedor
#COPY . /var/www/html/

# Copiar composer.json y composer.lock (importante para cache)
COPY composer.json composer.lock ./

# Instalar dependencias
RUN composer install

# Copiar todo el código (incluyendo app/, config/, index.php, etc.)
COPY . .

# Establecer permisos si tu app lo necesita
# RUN chown -R www-data:www-data /var/www/html
