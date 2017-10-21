# Docker WordPress

WordPress in Docker container.

## Usage

```
$ mkdir develop-wordpress
$ cp -r docker-wordpress/* develop-wordpress/
$ cd develop-wordpress/
```

## Setup your theme
Set themes

## Setup your default database

```
$ docker exec -it DB_CONTAINER_ID sh -c 'mysqldump database_name -u database_user -p database_password 2> /dev/null' > db-data/mysql.dump.sql
```

## Start docker containers.

```
$ docker-compose up -d
```