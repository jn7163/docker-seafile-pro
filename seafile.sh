#!/bin/sh
echo Starting seafile...
${SEAFILE_HOME}/seafile-server-latest/seafile.sh start
echo Tailing seafile STDOUT...
tail -f /proc/`cat ${SEAFILE_HOME}/pids/seaf-server.pid`/fd/1
echo seafile closed.
