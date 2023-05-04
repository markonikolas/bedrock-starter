lando start
lando wp db create
lando db-import demo.sql
lando composer install
cd web/app/themes/sage
lando composer install
