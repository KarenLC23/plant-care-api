# 1. Imagen base con PHP y Apache
FROM php:8.0.0-apache

# 2. Activar mod_rewrite para URLs amigables
RUN a2enmod rewrite

# 3. Instalar extensiones PHP necesarias para MySQL
RUN docker-php-ext-install pdo pdo_mysql mysqli

# 4. Establecer la zona horaria (opcional)
ENV TZ=America/Bogota

# 5. Instalar Composer (copiándolo desde la imagen oficial de Composer)
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# 6. Definir el directorio de trabajo por defecto dentro del contenedor
WORKDIR /var/www/html

# 7. (Opcional) Copiar el código si no usas volumes en docker-compose
# COPY ./api/ /var/www/html/

# 8. (Opcional) Establecer permisos si tu app lo necesita
# RUN chown -R www-data:www-data /var/www/html
