
clear
cp -r $XDG_CACHE_HOME/ncspot $XDG_DATA_HOME && echo "backed up ncspot cache"
kill $DBUS_SESSION_BUS_PID && echo "dbus killed"
/usr/bin/gpg-connect-agent /bye && echo "gpg agent killed"

printf '\nLogging out'
