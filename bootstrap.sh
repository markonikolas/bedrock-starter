lando start

sleep 1

echo 'Installing project dependencies, please wait...' && \
    lando composer install ;

echo 'Installing theme dependencies, please wait...' && \
    cd web/app/themes/sage && \
    lando composer install

sleep 1

echo 'Creating a demo database, please wait...' && \
    cd ../../../../ && \
    lando wp db check && \
    lando wp db create ;

sleep 1

lando db-import demo.zip

sleep 1

echo '---------------'
echo 'Setup complete'
echo '---------------'