# easybash

Create your own dockerHelper file from dockerHelperTemplate.sh (example: dh.sh)  
Set   
`ABSOLUTE_DOCKER_COMPOSE_DIR` (example `~/docker/`)  
`MACHINE_NAME` (example `default`)
  

  
 add link in /usr/local/bin/ to your file  
`ln -s /{ABSOLUTE_PATH_TO_FILE}/dh.sh /usr/local/bin/dh`  
or add alias in your .bashrc file  
`alias dh="/{ABSOLUTE_PATH_TO_FILE}/dh.sh`

Repeat this for docker-images.php file  
`ln -s /{ABSOLUTE_PATH_TO_FILE}/docker-images.php /usr/local/bin/docker-images`  
or  
`alias docker-images="/{ABSOLUTE_PATH_TO_FILE}/docker-images.php`

You can use custom shortcuts:  
   `dh e web` = `docker-compose exec web bash`  
   `dh rmAll` = ` docker rm -f $(docker ps -aq) `  
   `dh images` = `docker-images`  
   `dh upd` = `docker-compose up -d`  
 or default:  
   `dh 'up -d'` = `docker-compose up -d`  
   `dh up` = `docker-compose up`  
   `dh ps` = `docker-compose ps`  
   `dh stop` = `docker-compose stop`  
   ...
  
  enjoy