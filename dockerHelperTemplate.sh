export ABSOLUTE_DOCKER_COMPOSE_DIR=''
export MACHINE_NAME=default

eval $(docker-machine env ${MACHINE_NAME})
cd ${ABSOLUTE_DOCKER_COMPOSE_DIR}
echo $(pwd)

case "$1" in
  'start') docker-compose start $2 ;;
  'up') docker-compose up $2 ;;
  'exec'|'e'|'E') docker-compose exec $2 bash ;;
  *) echo 'Supported actions: \n exec \n start \n up' ;;
esac
