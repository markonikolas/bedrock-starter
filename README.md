# Modern WordPress template

![Laravel](https://img.shields.io/badge/laravel-%23FF2D20.svg?style=for-the-badge&logo=laravel&logoColor=white) ![WordPress](https://img.shields.io/badge/WordPress-%23117AC9.svg?style=for-the-badge&logo=WordPress&logoColor=white) ![TypeScript](https://img.shields.io/badge/typescript-%23007ACC.svg?style=for-the-badge&logo=typescript&logoColor=white) ![React](https://img.shields.io/badge/react-%2320232a.svg?style=for-the-badge&logo=react&logoColor=%2361DAFB) ![TailwindCSS](https://img.shields.io/badge/tailwindcss-%2338B2AC.svg?style=for-the-badge&logo=tailwind-css&logoColor=white)

## Introduction

This template is using [Bedrock](https://roots.io/bedrock), an open source project and completely free to use.

This project uses [Sage](https://roots.io/sage/docs/) theme which is an advanced WordPress starter theme with Tailwind CSS and Laravel Blade support out of the box.

## Instructions

### Prerequisite

Make sure you have [Docker](https://docker.com/get-started) and [Lando](https://docs.lando.dev/getting-started/installation.html) installed on your system

### Environment setup

After cloning the repository, create .env from an .env.example

```bash
cp .env.example .env
```

Generate salts by pasting the environment variables from [roots](https://roots.io/salts.html) website

### Setup

First, stop all Docker containers to avoid conflicts

```bash
docker stop $(docker ps -qa)
```

### Automated setup

Change into root and run (you might not need this step)

```bash
sudo chmod u+x ./bootstrap.sh
```

then start the development environment

```bash
./bootstrap.sh
```

If the development environment is working correctly, you can skip to [configuring](#configuring-htaccess) .htaccess.

---

### Manual setup

If an automated setup fails for some reason or you don't trust shell scripts, you'll need to start development environment manually

First, start the projects' [lando](https://docs.lando.dev/) dev environment

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

```

Install and build node dependencies (might not need this step)

```bash

lando yarn
lando yarn build
```

### Load demo db

Next you'll need to load demo database that's in projects' root directory, from project root run

```bash
lando wp db create

lando db-import demo.*

```

---

### Configuring htaccess

In order for permalinks to work correctly you'll manually need to update .htaccess, go to [permalinks](https://wordpress.lndo.site/wp/wp-admin/options-permalink.php) admin page and save settings.

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
