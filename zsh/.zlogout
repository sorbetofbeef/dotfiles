
clear
printf '\nLogging out'
kill $DBUS_SESSION_BUS_PID && echo "dbus killed"
/usr/bin/gpg-connect-agent /bye && echo "gpg agent killed"
