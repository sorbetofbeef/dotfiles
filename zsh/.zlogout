
clear
[ ! -d "${XDG_DATA_HOME}/ncspot" ] && mkdir -p "${XDG_DATA_HOME}/ncspot"
/bin/cp "${XDG_CACHE_HOME}/ncspot/librespot/credentials.json" "$XDG_DATA_HOME/ncspot" && echo "backed up ncspot cache"
kill $DBUS_SESSION_BUS_PID && echo "dbus killed"
/usr/bin/gpg-connect-agent /bye && echo "gpg agent killed"
printf '\nLogging out'
