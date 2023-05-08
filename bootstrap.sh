echo 'Installing project dependencies, please wait...' && \
    lando start && \
    lando composer install ;

echo 'Installing theme dependencies, please wait...' && \
    cd web/app/themes/sage && \
    lando composer install && \
    lando yarn && \
    lando yarn build ;

echo 'Creating a demo database, please wait...' && \
    cd ../../../../ && \
    lando wp db check ;

echo 'Importind demo database, please wait...' && \
    lando db-import demo.* ;

echo 'Checking the database, please wait...' && \
    lando wp db check ;

echo 'Restarting containers, please wait...' && \
    lando restart ;

echo '---------------'
echo '               '
echo 'Setup complete'
echo '               '
echo '---------------'