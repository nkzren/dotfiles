DOCKER_INIT_SCRIPT=$UTIL_SCRIPTS_DIR/dockerinit.sh
if [ ! -z $(command -v docker) ] && [ -f "$DOCKER_INIT_SCRIPT" ]; then
    source $DOCKER_INIT_SCRIPT
fi
