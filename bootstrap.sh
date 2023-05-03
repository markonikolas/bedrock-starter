cp .env.example .env
lando start
unzip -n demo.sql.zip
lando wp db create
lando db-import demo.sql
