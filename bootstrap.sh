cp .env.example .env

vendor/bin/wpsalts dotenv --clean >> .env

lando start

lando wp db create

unzip demo.sql.zip

lando db-import demo.sql
