cp .env.example .env

lando start && \
    unzip demo.sql.zip && \
    lando wp db create && \
    lando db-import demo.sql && \
    lando composer install && \
    cd web/app/themes/sage && \
    lando composer install