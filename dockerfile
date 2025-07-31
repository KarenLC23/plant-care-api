# 1. Imagen base con PHP y Apache
FROM php:8.0.0-apache

# 2. Activar mod_rewrite para URLs amigables
RUN a2enmod rewrite

# 3. Instalar extensiones PHP necesarias para MySQL
RUN docker-php-ext-install pdo pdo_mysql mysqli

# 4. Establecer la zona horaria (para logs)
ENV TZ=America/Bogota

# 5. Instalar Composer (copiándolo desde la imagen oficial de Composer)
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# 6. Definir el directorio de trabajo por defecto dentro del contenedor
WORKDIR /var/www/html

# 7. Copiar todo el código del proyecto al contenedor
#COPY . /var/www/html/

# 8. Copiar composer.json y composer.lock (importante para cache)
COPY composer.json composer.lock ./

# 9. Instalar dependencias
RUN composer install

# 10. Copiar todo el código (incluyendo app/, config/, index.php, etc.)
COPY . .

# 11. Establecer permisos si tu app lo necesita
# RUN chown -R www-data:www-data /var/www/html
