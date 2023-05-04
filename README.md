# Bedrock starter template

## Introduction

This template is using [Bedrock](https://roots.io/bedrock), an open source project and completely free to use.

This project uses [Sage](https://roots.io/sage/docs/) theme which is an advanced WordPress starter theme with Tailwind CSS and Laravel Blade support out of the box.

## Instructions

### Prerequisite

Make sure you have [Docker](https://docker.com/get-started) and [Lando](https://docs.lando.dev/getting-started/installation.html) installed on your system

### Environment setup

After cloning this repository, from project root run

```bash
cp .env.example .env
```

generate salts by pasting the variables from [roots](https://roots.io/salts.html) site

first stop all docker containers to avoid conflicts by running:

```bash
docker stop $(docker ps -qa)
```

### Automated setup

change into root and run (might need to run sudo)

```bash
chmod u+x ./bootstrap.sh
```

then start the development environment

```bash
./bootstrap.sh
```

### Manual setup

if an automated setup fails for some reason or you don't trust shell scripts, you'll need to configure it manually

then start the projects' [lando](https://docs.lando.dev/) dev environment

```bash
lando start
```

after containers are up, install dependencies from project root and theme folder:

```bash
lando composer install
```

and

```bash
cd web/app/themes/sage

lando composer install

lando yarn

lando yarn build
```

respectively.

### Load demo db

Next you'll need to load demo database that's in projects' root directory, from project root run

```bash
lando wp db create

lando db-import demo.zip
```

### Configuring certificates

You can follow [this](https://docs.lando.dev/core/v3/security.html#trusting-the-ca) guide if you find browser warnings anoying, beware if you use firefox as it controls it's own store and it needs additional browser configuration.

---

**NOTE:**

The credentials for admin account are weak since this is a development environment and should be changed / removed before deployment.

```txt
username: admin
password: password
```

go to: [https://wordpress.lndo.site](https://wordpress.lndo.site)

for hmr capabilities: [http://localhost:3000](http://localhost:3000)
