
# Bedrock starter template

## Introduction

This template is using [Bedrock](https://roots.io/bedrock), an open source project and completely free to use.

### Instructions

Make sure you have [docker](https://docker.com/get-started) and [lando](https://docs.lando.dev/getting-started/installation.html) installed.

After cloning this repository, from project root run

```bash
cp .env.example .env
```

generate salts by pasting the variables from [roots](roots.io/salts.html) site

change into root and run (might need to run sudo)

```bash
chmod u+x ./bootstrap.sh
```

then start the development environment

```bash
./bootstrap.sh
```
