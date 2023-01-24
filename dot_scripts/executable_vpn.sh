#!/bin/bash


function start_vpn() {
	export COMPOSE_FILE=${HOME}/.aws-vpn-client-docker/docker-compose.yml
    case $1 in
        stop) 
            echo 'Desconectando da VPN'
            docker-compose down
            ;;
        connect) 
            docker-compose down
            docker-compose up -d
            sleep 5
            docker-compose logs | awk '{print $3}' | grep '^https://' | tail -1 | xclip -sel clip
            xdg-open $(xclip -o -sel clip)
            echo 'URL copiada para o clipboard'
            ;;
        *)
            echo 'Executa isso ae direito'
            ;;
    esac
}

start_vpn $1
