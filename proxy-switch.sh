#!/bin/bash
set -o nounset
set -o errexit

HOST="10.144.1.10"
PORT=8080
if [ $1 == "on" ]; then
	eval `export http_proxy=http://$HOST:$PORT`
	eval `npm config set proxy http://$HOST:$PORT`
	eval `git config --global http.proxy http://$HOST:$PORT`
	echo Proxy Set
else
	eval `unset http_proxy`
	eval `npm config delete proxy`
	eval `git config --global --unset core.gitproxy`
	echo Proxy Unset
fi
