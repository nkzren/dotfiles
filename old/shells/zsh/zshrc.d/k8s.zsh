K8S_INIT_SCRIPT=${UTIL_SCRIPTS_DIR}/kubectlinit.sh
if [ ! -z $(command -v kubectl) ] && [ -f "$K8S_INIT_SCRIPT" ]; then
    source $K8S_INIT_SCRIPT
fi

