FROM php:7.4-apache

LABEL name="PHP 7.4 última versión estable en español + Apache"

#Varibles de Entorno
ENV APP_ENV=development \
    APP_BASE_DIR=/var/www/ \
    APP_SERVER_ADMIN=admin@baubyte.com.ar \
    APP_TIMEZONE=America/Argentina/Buenos_Aires \
    APACHE_RUN_USER=devbaubyte \
    APACHE_LOG_DIR=/web/apache/logs


# Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \
    bash-completion \
    libpq-dev \
    less \
    locales \
    multitail \
    nano \
    ssl-cert \
    tzdata \
    wget \
    curl \
    libbz2-dev \
    libfreetype6-dev \
    libicu-dev \
    libjpeg-dev \
    libonig-dev \
    libzip-dev \
    libmcrypt-dev \
    libpng-dev \
    libreadline-dev \
    sudo \
    unzip \
    zip \
    && localedef -i es_ES -c -f UTF-8 -A /usr/share/locale/locale.alias es_ES.UTF-8 \
    && make-ssl-cert generate-default-snakeoil

#Establecemos el lenguaje 
ENV LANG es_ES.UTF-8

#Establecemos la hora local
RUN rm /etc/localtime
RUN echo "$APP_TIMEZONE" > /etc/timezone \
    && ln -s /usr/share/zoneinfo/"$APP_TIMEZONE" /etc/localtime \
    && dpkg-reconfigure -f noninteractive tzdata \
    && true

# Limpiar cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

#Permisos y hora local
RUN a2enmod rewrite \
    && set -eux; \
    { \
      echo 'date.timezone = "${APP_TIMEZONE}"';\
    }>$PHP_INI_DIR/conf.d/timezone.ini \
    && cp $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini \
    && true


# Instalar extensiones PHP
RUN docker-php-ext-install \
    bcmath \
    gd \
    bz2 \
    calendar \
    iconv \
    intl \
    mbstring \
    opcache \
    pdo_mysql \
    mysqli \
    zip

# Obtener la ultima version de Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Agregamos Node 14 LTS
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -- \
    && apt-get install -y nodejs \
    && apt-get autoremove -y

# Necesitamos un usuario con el mismo UID / GID que el usuario host
# Entonces, cuando ejecutamos los comandos de CLI, todos los permisos y 
# la propiedad del archivo de host permanecen intactos.
# Los comandos de lo contrario desde el interior del contenedor 
# crearían archivos y directorios de propiedad de la raíz. 
ARG uid
RUN useradd -G www-data,root -u $uid -d /home/"${APACHE_RUN_USER}" "${APACHE_RUN_USER}"
RUN mkdir -p /home/"${APACHE_RUN_USER}"/.composer && \
    chown -R "${APACHE_RUN_USER}":"${APACHE_RUN_USER}" /home/"${APACHE_RUN_USER}"

# Establecer directorio de trabajo
WORKDIR ${APP_BASE_DIR}
