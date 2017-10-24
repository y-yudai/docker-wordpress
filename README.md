# Docker WordPress

WordPress in Docker container.

## Usage

```
$ mkdir develop-wordpress
$ cp -r docker-wordpress/* develop-wordpress/
$ cd develop-wordpress/
```

## Setup

set your theme
```
$ mv env.sample.txt .env
```

```diff
volumes:
    - ./theme-sync/your_theme:/var/www/html/wp-content/theme-sync/your_theme # Change your_theme
```

## Setup your default database

```
$ docker exec -it DB_CONTAINER_ID sh -c 'mysqldump database_name -u database_user -p database_password 2> /dev/null' > db-data/mysql.dump.sql
```

## Start docker containers.

```
$ docker-compose up -d
```