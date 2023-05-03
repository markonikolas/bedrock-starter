cp .env.example .env

lando start && \
    unzip demo.sql.zip && \
    lando db-import demo.sql && \
    lando composer install && \
    cd web/app/themes/sage && \
    lando composer install