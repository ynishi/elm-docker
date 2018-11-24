# Elm in Docker

* simple elm in docker
* Elm: https://github.com/elm-lang

## Usage
* setup docker and docker-compose
```
docker-compose up -d
```
* sample to use like command
```
cat sample_alias.sh
# !!! set aliases in current !!!
source sample_alias.sh
```
### set up webpack
* To set up webpack app, use webpack image and npm command.
* sample command is below.
```
docker run -it -v ${path to dir}:/home/node/app ${image} /bin/bash
```
* using docker-compose
```
docker-compose exec elm-webpack npm init
docker-compose exec elm-webpack /bin/bash
```
### about dev-server
* for develop use simple api server, using json-server.
* first, do npm init.
```
docker-compose exec dev-server npm init
```
* set api.js as entrypoint, and db.json as data.

## License
* MIT, see LICENSE
